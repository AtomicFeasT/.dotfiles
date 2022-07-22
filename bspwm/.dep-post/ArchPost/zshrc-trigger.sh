#!/bin/sh
# sudo chmod +x zshrc-trigger.sh

# Sets Custom Sensitivity And Disables Accel If Using G203
# https://unix.stackexchange.com/questions/708611/how-to-execute-a-shellscript-when-having-specific-hardware-listed-in-xinput
if [ -n "$(xinput | grep 'Logitech G203 LIGHTSYNC Gaming Mouse')" ]; 
  then
    xinput --set-prop 'pointer:''Logitech G203 LIGHTSYNC Gaming Mouse' 'libinput Accel Profile Enabled' 0, 1
    xinput --set-prop 'pointer:''Logitech G203 LIGHTSYNC Gaming Mouse' 'libinput Accel Speed' -0.5
fi

# Sets Keyboard Layout As ABNT2 If PT-BR
# https://unix.stackexchange.com/questions/269159/problem-of-cant-set-locale-make-sure-lc-and-lang-are-correct
if [ LC_NAME = pt_BR.UTF-8 ];
  then
    setxkbmap -model abnt2 -layout br -variant abnt2
fi