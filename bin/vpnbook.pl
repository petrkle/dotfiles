#!/usr/bin/perl

use strict;
use warnings;

use XML::LibXML;
use Expect;
use WWW::Mechanize;
use Archive::Zip;
use File::Path qw(make_path);
use Env qw(HOME);

$SIG{INT}  = \&signal_handler;
$SIG{TERM} = \&signal_handler;

my $vpnbook = 'http://www.vpnbook.com';
my $region = 'UK1';
my $tmpdir = "$HOME/tmp/vpnbook";

if(! -d $tmpdir){
	make_path($tmpdir);
}

if(! -f "$tmpdir/vpnbook-".lc($region)."-tcp80.ovpn"){
	my $mech = WWW::Mechanize->new(autocheck => 1);
	$mech->get("$vpnbook/free-openvpn-account/VPNBook.com-OpenVPN-$region.zip");
	$mech->save_content("$tmpdir/$region.zip");
	my $zip = Archive::Zip->new();
	my $status = $zip->read("$tmpdir/$region.zip");
	$zip->extractTree('', $tmpdir);
}

my $dom = XML::LibXML->load_html({
		'location' =>"$vpnbook/freevpn",
		'recover' => 2,
 	});

my @nodes = $dom->findnodes('.//ul[@class="disc"]/li/strong');

my $pass = pop(@nodes);

my $session=Expect->spawn("sudo /usr/sbin/openvpn $tmpdir/vpnbook-".lc($region)."-tcp80.ovpn")
    or die "Error calling external program:  $!\n";

unless ($session->expect(5,"Enter Auth Username:")) {};
print $session "vpnbook\r";

unless ($session->expect(5,"Enter Auth Password:")) {};
print $session $pass->textContent()."\r";

$session->soft_close();

sub signal_handler {
		system("sudo pkill openvpn");
}
