var _instructions = @"
Score 1000 points to win!
UP: move
LEFT/RIGHT: change direction
SPACE: shoot
>> PRESS ENTER TO START <<
SMALL ASTEROIDS = 20
MEDIUM ASTEROIDS = 10
hUGE ASTEROIDS = 5";

switch(room){
	case rm_game:
	
		draw_set_halign(fa_left);
		
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "LIVES: "+string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
		room_width/2, 50, "SPACE ROCKS", 
		3, 3, 0, c,c,c,c, 1
		);
		c = c_white;
		draw_text_transformed_color(
			room_width/2, 100, _instructions,
			1, 1, -4, c,c,c,c, 1
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 200, "YOU WON!", 
			3, 3, 0, c,c,c,c, 1
		);
		draw_text (
			room_width/2, 400,
			@"PRESS ENTER TO RESTART"
		);
		draw_text(
			room_width/2, 425,
			@"SCORE: "+string(score)
		);
		draw_text(
			room_width/2, 450,
			@"LIVES LEFT: "+string(lives)
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER", 
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 250,
			@"FINAL SCORE: "+string(score)
		);
		draw_text(
			room_width/2, 300,
			@"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
}