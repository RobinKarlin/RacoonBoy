/// @description Modellfunktioner
// You can write your code in this editor

//Utan denna linen ritas ej spriten! rör endast i nödfall
draw_self()

if acceltimer < maxacceltime
{
	sprite_index = sPlayerAcc;
}
else
{
	sprite_index = sPlayer;
}

//Modellvändare
if (hsp != 0)
{
	image_xscale = sign(hsp);
}


//Debug för variabler
/*
draw_text(oPlayer.x + 15,oPlayer.y + 10 , "hsp =" + string(hsp) + "\n" + "hsp =" + string(vsp));
draw_set_halign(fa_right)
draw_text(oPlayer.x - 15,oPlayer.y + 10 , "decelx =" + string(decelx) + "\n" + "decely =" + string(decely));
draw_set_halign(fa_left)
*/