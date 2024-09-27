/// @Describimos Configuracion enemigo
randomize();
sprite_index = spr_enemy_quieto;
image_index = 0;

//Iniciamos el movimiento del enemigo

velocity = 0.9;
direction = choose(0,90,180,270);
motion_set(direction,velocity);

sprite[RIGHT] = spr_enemy_caminar_derecha;
sprite[UP] = spr_enemy_caminar_arriba;
sprite[LEFT] = spr_enemy_caminar_izquierda;
sprite[DOWN] = spr_enemy_caminar_abajo;
sprite[STOP] = spr_enemy_quieto;

face = STOP;
