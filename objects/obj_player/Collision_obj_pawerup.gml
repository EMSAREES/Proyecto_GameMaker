/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.Puntos += 100;
global.Bonos = true;

audio_play_sound(snd_bono,10,false);

with(other)
	{
		instance_destroy();
	}