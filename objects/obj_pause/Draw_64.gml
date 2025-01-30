if(pause)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,resW,resH,0);
	draw_set_alpha(1);
	
	draw_set_color(c_aqua);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(resW * 0.23,resH * 0.30,"....GAME PAUSED....");
	draw_text(resW * 0.23,resH * 0.40,"....PRESS ENTER TO RESUME....");
}
