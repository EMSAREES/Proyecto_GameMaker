/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

/*
if !(global.Enemigo) && (x=other.x || y=other.y) //
	{
		audio_stop_all();	//Detenemos el sonido
		audio_play_sound(snd_dead,10,false); //sonido muerte
		
		//Reiniciamos el personaje y conf del sonido
		
		room_speed = 50;
		obj_control.alarm[1] = room_speed*15;
		
		speed = 0;
		global.Vida -= 1; //Restamos Vida
		sprite_index = spr_player_dead; //mostrar animacion
		image_index = 1;
		global.Enemigo = true;
		
		with (obj_papas_bono)
			{
				instance_destroy();
			}
	}*/
	
// Evento de colisión en obj_player con obj_enemy
if !(global.Enemigo) {
  		audio_stop_all();	//Detenemos el sonido
		audio_play_sound(snd_dead,10,false); //sonido muerte
		
		//Reiniciamos el personaje y conf del sonido
		
		//room_speed = 50;
		obj_control.alarm[1] = room_speed*7;
		
		speed = 0;
		global.Vidas -= 1; //Restamos Vida
		sprite_index = spr_player_dead; //mostrar animacion
		image_index = 0;
		image_speed = 0; // Ajusta la velocidad de la animación
		global.Enemigo = true;
		
		with (obj_papas_bono)
			{
				instance_destroy();
			}
		
}

