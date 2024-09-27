audio_play_sound(snd_intro, 10,false);

global.Puntos = 0; //Puntajes de Videojuego
global.Vidas = 3; //Vidas del Personaje
global.Power = false; //Boots del presonaje
global.Bonos = false; //Bonos para mas puntos
global.Enemigo = false; //Enemigo

alarm[0] = room_speed * 30;