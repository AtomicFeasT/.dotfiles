#!/usr/bin/env bash

SDIR="$HOME/.icewm/polybar/grayblocks/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $SDIR/rofi/styles.rasi \
<<< "♥ Amber|♥ Blue|♥ Blue-Gray|♥ Brown|♥ Cyan|♥ Deep-Orange|\
♥ Deep-Purple|♥ Green|♥ Gray|♥ Indigo|♥ Blue-Light|♥ Green-Light|\
♥ Lime|♥ Orange|♥ Pink|♥ Purple|♥ Red|♥ Teal|♥ Yellow|♥ Amber-Dark|\
♥ Blue-Dark|♥ Blue-Gray-Dark|♥ Brown-Dark|♥ Cyan-Dark|♥ Deep-Orange-Dark|\
♥ Deep-Purple-Dark|♥ Green-Dark|♥ Gray-Dark|♥ Indigo-Dark|♥ Blue-Light-Dark|\
♥ Green-Light-Dark|♥ Lime-Dark|♥ Orange-Dark|♥ Pink-Dark|♥ Purple-Dark|♥ Red-Dark|♥ Teal-Dark|♥ Yellow-Dark|")"
            case "$MENU" in
				## Light Colors
				*Amber) "$SDIR"/colors-light.sh --amber ;;
				*Blue) "$SDIR"/colors-light.sh --blue ;;
				*Blue-Gray) "$SDIR"/colors-light.sh --blue-gray ;;
				*Brown) "$SDIR"/colors-light.sh --brown ;;
				*Cyan) "$SDIR"/colors-light.sh --cyan ;;
				*Deep-Orange) "$SDIR"/colors-light.sh --deep-orange ;;
				*Deep-Purple) "$SDIR"/colors-light.sh --deep-purple ;;
				*Green) "$SDIR"/colors-light.sh --green ;;
				*Gray) "$SDIR"/colors-light.sh --gray ;;
				*Indigo) "$SDIR"/colors-light.sh --indigo ;;
				*Blue-Light) "$SDIR"/colors-light.sh --light-blue ;;
				*Green-Light) "$SDIR"/colors-light.sh --light-green ;;
				*Lime) "$SDIR"/colors-light.sh --lime ;;
				*Orange) "$SDIR"/colors-light.sh --orange ;;
				*Pink) "$SDIR"/colors-light.sh --pink ;;
				*Purple) "$SDIR"/colors-light.sh --purple ;;
				*Red) "$SDIR"/colors-light.sh --red ;;
				*Teal) "$SDIR"/colors-light.sh --teal ;;
				*Yellow) "$SDIR"/colors-light.sh --yellow ;;
				## Dark Colors
				*Amber-Dark) "$SDIR"/colors-dark.sh --amber ;;
				*Blue-Dark) "$SDIR"/colors-dark.sh --blue ;;
				*Blue-gray-Dark) "$SDIR"/colors-dark.sh --blue-gray ;;
				*Brown-Dark) "$SDIR"/colors-dark.sh --brown ;;
				*Cyan-Dark) "$SDIR"/colors-dark.sh --cyan ;;
				*Deep-Orange-Dark) "$SDIR"/colors-dark.sh --deep-orange ;;
				*Deep-Purple-Dark) "$SDIR"/colors-dark.sh --deep-purple ;;
				*Green-Dark) "$SDIR"/colors-dark.sh --green ;;
				*Gray-Dark) "$SDIR"/colors-dark.sh --gray ;;
				*Indigo-Dark) "$SDIR"/colors-dark.sh --indigo ;;
				*Blue-Light-Dark) "$SDIR"/colors-dark.sh --light-blue ;;
				*Green-Light-Dark) "$SDIR"/colors-dark.sh --light-green ;;
				*Lime-Dark) "$SDIR"/colors-dark.sh --lime ;;
				*Orange-Dark) "$SDIR"/colors-dark.sh --orange ;;
				*Pink-Dark) "$SDIR"/colors-dark.sh --pink ;;
				*Purple-Dark) "$SDIR"/colors-dark.sh --purple ;;
				*Red-Dark) "$SDIR"/colors-dark.sh --red ;;
				*Teal-Dark) "$SDIR"/colors-dark.sh --teal ;;
				*Yellow-Dark) "$SDIR"/colors-dark.sh --yellow				
            esac
