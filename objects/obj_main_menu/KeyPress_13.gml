if help {
	with(obj_main_menu) {
		visible = true;
	}
	with (obj_title_text) {
		visible = true;
	}
	with (obj_title_bonfire) {
		visible = true;
	}
	with(obj_help) {
		visible = false;	
	}
	help = false;
} else {
	audio_play_sound(snd_menu_select, 1, false);
	switch (menu_index) {
	
		// Play
		case 0:
			cursor_sprite = spr_cursor;
			room_goto_next();
		break;
	
		// Help
		case 1:
			with(obj_main_menu) {
				visible = false;
			}
			with (obj_title_text) {
				visible = false;
			}
			with (obj_title_bonfire) {
				visible = false;
			}
			with(obj_help) {
				visible = true;
			}
			help = true;
		break;
	
		// Credits
		case 2:
			room_goto(room_credit);
		break;
	
		// Exit
		case 3:
			game_end();
		break;
	
	}
}