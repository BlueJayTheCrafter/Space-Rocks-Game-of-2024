if(room == rm_start){
	audio_play_sound(snd_background1, 1, true);
}

if(room == rm_game){
	audio_stop_sound(snd_background1);
	
	if(audio_is_playing(snd_background2)){
		audio_stop_sound(snd_background2);	
	}
	audio_play_sound(snd_background2, 2, true);
	repeat(6){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx, yy, "instances", obj_asteroid);
	}
	alarm[0] = 60;
}