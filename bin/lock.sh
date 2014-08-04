#!/bin/bash
dbus-send --type=method_call --dest=org.psi-im.Psi /Main org.psi_im.Psi.Main.setStatus string:"away" string:"I am away from my desk. Leave a message."
xlock -display :0.0 -timeelapsed -erasemode no_fade -mode blank -endCmd 'dbus-send --type=method_call --dest=org.psi-im.Psi /Main org.psi_im.Psi.Main.setStatus string:"online" string:""'
