if(keyboard_check_pressed(vk_anykey)) {
	audio_stop_all();
	room_goto(0);	
}

if(timer <= 0) {
	if(ads == 2) {			// Make Disappear
		timer = 110;	
		ads = 1;
	} else if(ads == 1) {	// Make Appear
		if(index == 11) {
			audio_stop_all();
			room_goto(0);	
		}
		var i = index;
		title = string(line0[i]);
		sub1 = string(line1[i]);
		sub2 = string(line2[i]);
		timer = 110;
		ads = 0;
	} else {				// Make Stay
		index++;
		timer = 80;	
		ads = 2;
	}
}


if(timer >= 0) {
	if(ads == 1){
		text_alpha -= (1 / 110);		// Disappear
	} else if(ads == 0) {
		text_alpha += (1 / 110);		// Appear
	}
	timer--;
}

if(text_alpha <= 0.0) {
	text_alpha = 0;
}

if(text_alpha >= 1.0) {
	text_alpha = 1.0;	
}

