/// @description direccion of player

 derecha_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
 izq_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
 arriba_key =keyboard_check(vk_up) || keyboard_check(ord("W"));
 abajo_key =keyboard_check(vk_down) || keyboard_check(ord("S"));
// item_key = keyboard_check_pressed()


// Indentificar velocidad del personaje
xspd = (derecha_key - izq_key) * move_spd;
yspd = (abajo_key - arriba_key) * move_spd;

// Asignamos sprite
mask_index = sprite[STOP];

if yspd == 0
{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT} ;
}

if xspd == 0
{
if yspd > 0 {face = DOWN} ;
if yspd < 0 {face = UP} ;
}

sprite_index = sprite[face];

// Colisiones
if place_meeting(x + xspd, y, obj_wall) == true || place_meeting(x + xspd, y, obj_wall_1) == true
{
	xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall) == true || place_meeting(x, y + yspd, obj_wall_1) == true
{
	yspd = 0;
}


if place_meeting(x + xspd, y, obj_house) == true 
{
	xspd = 0;
}

if place_meeting(x, y + yspd, obj_house) == true
{
	yspd = 0;
}


// Incremento de velocidad
x = x + xspd;
y += yspd;



if xspd == 0 && yspd == 0
{
	image_index = sprite[STOP];
}

//depth = -bbox_bottom;