/// @description 

if sprite_index == spr_player_dead
	{
		direction = 0;
		image_speed = 0;
		x = xstart;
		y = ystart;
		sprite_index = spr_player_quieto;
		image_index = 0;
		
		global.Enemigo = false;
		audio_play_sound(snd_intro, 10, false);
		
		with(obj_enemy)
		{
			image_speed = 0;
			sprite_index = spr_enemy_quieto;
			speed = 4;
			velocity = 4;
		}
	}
