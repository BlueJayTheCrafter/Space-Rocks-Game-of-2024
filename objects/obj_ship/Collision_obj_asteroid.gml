lives -= 1;
score -= 2;

with(obj_game){
	alarm[1] = room_speed;		
}

audio_play_sound(snd_lose, 1, false);

instance_destroy();

repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);
}








