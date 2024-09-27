/// @description pasos y direfeccion enemigo
#region //Reiniciar los enemigos 

if global.Enemigo
	{
		speed = 0;
		vspeed = 0;
		hspeed = 0;
		visible = false;
		
		x = xstart;
		y = ystart;
		exit;
	}
else //si no colisiona con el jugador
	{
		visible = true;
	}

#endregion

#region //Asignamos el movimiento aleatorio
	
if place_snapped(32,32)
	{
	if hspeed == 0
		{
			if random(4) <1 && place_free(x-1,y) //Mov. izquierda
				{		
					hspeed = -velocity;
					vspeed = 0;
				}
				
			if random(4) <1 && place_free(x+1,y) //Mov. derecha
				{		
					hspeed = -velocity;
					vspeed = 0;
				}			
		}
	else
		{
			if random(4) <1 && place_free(x,y-1) //Mov. Arriba
				{		
					hspeed = 0;
					vspeed = -velocity;
				}
				
			if random(4) <1 && place_free(x,y+1) //Mov. Abajo
				{		
					hspeed = 0;
					vspeed = -velocity;
				}
		}
	}
	
#endregion

#region 
/// Evento Step (pasos)

// Verificamos el movimiento
var hsp = lengthdir_x(velocity, direction);  // Velocidad horizontal
var vsp = lengthdir_y(velocity, direction);  // Velocidad vertical

// Detectamos la dirección de movimiento
if abs(hsp) > 0 {
    if hsp > 0 { face = RIGHT; }
    if hsp < 0 { face = LEFT; }
}

if abs(vsp) > 0 {
    if vsp > 0 { face = DOWN; }
    if vsp < 0 { face = UP; }
}

// Si no hay movimiento
if hsp == 0 and vsp == 0 {
    face = STOP;
}

// Actualizamos el sprite según la dirección
sprite_index = sprite[face];

#endregion