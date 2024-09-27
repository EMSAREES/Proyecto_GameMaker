/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
yspd = 0;

move_spd = 0;
move_dir = 0;

//SPRITES

sprite[RIGHT] = spr_player_caminar_derecha;
sprite[UP] = spr_player_caminar_arriba;
sprite[LEFT] = spr_player_caminar_izquierda;
sprite[DOWN] = spr_player_camian_abajo;

face = STOP;

//SALTO
gravedad = .375; //gravedad
saltoPixel = 8; //salto por pixel
ispd = -4.15; //velocidad de salto a caer