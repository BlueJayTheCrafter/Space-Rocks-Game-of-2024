gpu_set_blendenable(false);

if(pause)

{
	audio_pause_sound(snd_background2);
	
	surface_set_target(application_surface);
		if(surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
		else
		{
			pauseSurf = surface_create(resW,resH);
			buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
		}
	surface_reset_target();
}

if(keyboard_check_pressed(vk_enter))
{
	audio_resume_sound(snd_background2);
	
	if(!pause)
	{
		pause = true;
		
		instance_deactivate_all(true);
		
		pauseSurf = surface_create(resW,resH);
		surface_set_target(pauseSurf);
			draw_surface(application_surface,0,0);
		surface_reset_target();
		
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	else
	{
		pause = false;
		instance_activate_all();
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}

gpu_set_blendenable(true);
