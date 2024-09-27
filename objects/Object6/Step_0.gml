/// Llamamos la funcion y asignamos las teclas para direccion
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
jump_key = keyboard_check(vk_space);

//calculamos la velocidad de movimiento
xspd = (right_key - left_key) * move_spd;

//coliciom horizontal 
var _subPixel = .5;

if place_empty(x + xspd, y, obj_wall) == true
	{
		//Deslizar la pared con precision
		var _pixelCheck = _subPixel * sign(xspd);
		while !place_meeting(x + _pixelCheck, y, obj_wall)
		{
			x += _pixelCheck;
		}
		
		//Establecemos xspd con valores 0 al momento de colicionar 
		xspd = 0;
	}

x += xspd;

//movimiento de Y Gravedad

//Gravedad

yspd += grav;

//Salto

if jump_key && place_meeting(x, y + 1, obj_wall)
	{
		yspd = jspd;
	}
	
//Colicion Y
var _subPixel = .5;

if place_meeting(x, y + 1, obj_wall)
	{
		
		var _pixelCheck = _subPixel * sign(yspd);
		while !place_meeting(x, y + _pixelCheck, obj_wall)
		{
			y += _pixelCheck;
		}
		
		//Establecemos y a 0 cuando colision
		yspd = 0;
		
	}
	
//Movimiento

y += yspd;

