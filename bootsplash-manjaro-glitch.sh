#!/bin/bash
#
# A simple script to show how to create a bootsplash.
# Do with it whatever you wish.
#
# This needs ImageMagick for the 'convert' and 'identify' tools.
#

LOGO=logo.gif
LOGO_WIDTH=$(identify $LOGO | head -1 | cut -d " " -f 3 | \
						cut -d x -f 1)
LOGO_HEIGHT=$(identify $LOGO | head -1 | cut -d " " -f 3 | \
						 cut -d x -f 2)

SPINNER=spinner.gif
SPINNER_WIDTH=$(identify $SPINNER | head -1 | cut -d " " -f 3 | \
						cut -d x -f 1)
SPINNER_HEIGHT=$(identify $SPINNER | head -1 | cut -d " " -f 3 | \
						 cut -d x -f 2)

convert -alpha remove \
	-background "#000000" \
	$LOGO \
	logo%02d.rgb

convert -alpha remove \
	-background "#000000" \
	$SPINNER \
	spinner%02d.rgb

#make clean
#make bootsplash-packer


# Let's put Tux in the center of an orange background.
./bootsplash-packer \
	--bg_red 0x00 \
	--bg_green 0x00 \
	--bg_blue 0x00 \
	--frame_ms 48 \
	--picture \
	--pic_width $LOGO_WIDTH \
	--pic_height $LOGO_HEIGHT \
	--pic_position 0 \
	--pic_anim_type 1 \
	--pic_anim_loop 0 \
	--blob logo00.rgb \
	--blob logo01.rgb \
	--blob logo02.rgb \
	--blob logo03.rgb \
	--blob logo04.rgb \
	--blob logo05.rgb \
	--blob logo06.rgb \
	--blob logo07.rgb \
	--blob logo08.rgb \
	--blob logo09.rgb \
	--blob logo10.rgb \
	--blob logo11.rgb \
	--blob logo12.rgb \
	--blob logo13.rgb \
	--blob logo14.rgb \
	--blob logo15.rgb \
	--blob logo16.rgb \
	--blob logo17.rgb \
	--blob logo18.rgb \
	--blob logo19.rgb \
	--blob logo20.rgb \
	--blob logo21.rgb \
	--blob logo22.rgb \
	--blob logo23.rgb \
	--blob logo24.rgb \
	--blob logo25.rgb \
	--blob logo26.rgb \
	--blob logo27.rgb \
	--blob logo28.rgb \
	--blob logo29.rgb \
	--blob logo30.rgb \
	--blob logo31.rgb \
	--blob logo32.rgb \
	--blob logo33.rgb \
	--blob logo34.rgb \
	--blob logo35.rgb \
	--blob logo36.rgb \
	--blob logo37.rgb \
	--blob logo38.rgb \
	--blob logo39.rgb \
	--blob logo40.rgb \
	--blob logo41.rgb \
	--blob logo42.rgb \
	--blob logo43.rgb \
	--picture \
	--pic_width $SPINNER_WIDTH \
	--pic_height $SPINNER_HEIGHT \
	--pic_position 0x05 \
	--pic_position_offset 250 \
	--pic_anim_type 1 \
	--pic_anim_loop 0 \
	--blob spinner00.rgb \
	--blob spinner01.rgb \
	--blob spinner02.rgb \
	--blob spinner03.rgb \
	--blob spinner04.rgb \
	--blob spinner05.rgb \
	--blob spinner06.rgb \
	--blob spinner07.rgb \
	--blob spinner08.rgb \
	--blob spinner09.rgb \
	--blob spinner10.rgb \
	--blob spinner11.rgb \
	--blob spinner12.rgb \
	--blob spinner13.rgb \
	--blob spinner14.rgb \
	--blob spinner15.rgb \
	--blob spinner16.rgb \
	--blob spinner17.rgb \
	--blob spinner18.rgb \
	--blob spinner19.rgb \
	--blob spinner20.rgb \
	--blob spinner21.rgb \
	--blob spinner22.rgb \
	--blob spinner23.rgb \
	--blob spinner24.rgb \
	--blob spinner25.rgb \
	--blob spinner26.rgb \
	--blob spinner27.rgb \
	--blob spinner28.rgb \
	--blob spinner29.rgb \
	--blob spinner30.rgb \
	--blob spinner31.rgb \
	--blob spinner32.rgb \
	--blob spinner33.rgb \
	--blob spinner34.rgb \
	--blob spinner35.rgb \
	--blob spinner36.rgb \
	--blob spinner37.rgb \
	--blob spinner38.rgb \
	--blob spinner39.rgb \
	--blob spinner40.rgb \
	--blob spinner41.rgb \
	--blob spinner42.rgb \
	--blob spinner43.rgb \
	--blob spinner44.rgb \
	--blob spinner45.rgb \
	--blob spinner46.rgb \
	--blob spinner47.rgb \
	--blob spinner48.rgb \
	--blob spinner49.rgb \
	--blob spinner50.rgb \
	--blob spinner51.rgb \
	--blob spinner52.rgb \
	--blob spinner53.rgb \
	--blob spinner54.rgb \
	--blob spinner55.rgb \
	--blob spinner56.rgb \
	--blob spinner57.rgb \
	--blob spinner58.rgb \
	--blob spinner59.rgb \
	--blob spinner60.rgb \
	--blob spinner61.rgb \
	--blob spinner62.rgb \
	--blob spinner63.rgb \
	--blob spinner64.rgb \
	--blob spinner65.rgb \
	--blob spinner66.rgb \
	--blob spinner67.rgb \
	--blob spinner68.rgb \
	--blob spinner69.rgb \
	--blob spinner70.rgb \
	--blob spinner71.rgb \
	--blob spinner72.rgb \
	--blob spinner73.rgb \
	--blob spinner74.rgb \
	bootsplash-manjaro-glitch

rm *.rgb
