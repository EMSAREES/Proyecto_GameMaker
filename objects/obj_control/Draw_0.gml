/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region //Dibujar el Score
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_score);
draw_text(1,1,"Puntaje: " + string(global.Puntos));

#endregion

#region //Divujar la Vida
draw_text(room_width/5,1, "VIDA:  ");
//Loop para verificar la cantidad de vida que tiene
for (var i=0; i < global.Vidas; i+= 1)
{
	draw_sprite_stretched(spr_player_quieto,2,room_width/6.5+string_width("VIDAS:  ")+(i*16),3,32,18);
}

#endregion

#region //Dibujar el Ready


#endregion

#region //Dibujar el Bono


#endregion

#region //Dibujar el GameOver


#endregion