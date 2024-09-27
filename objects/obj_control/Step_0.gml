#region // activar enemigos


if !(audio_is_playing(snd_intro))
{
	instance_activate_object(obj_enemy);
}


#endregion

#region // Destruir todo

if global.Vidas == 0
{
	with(obj_enemy)
	{
		instance_destroy();
	}
	
	with(obj_amburgesa)
	{
		instance_destroy();
	}
	
	with(obj_pawerup)
	{
		instance_destroy();
	}
	
}