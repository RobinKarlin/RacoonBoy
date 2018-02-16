/// @description Storing variables & Final movement
// You can write your code in this editor


//Storing variables
if positionsavestate = 0 && !place_meeting(x,y,oCollisionBlock)
{
	positionsavex = x;
	positionsavey = y;
	positionsavestate = 60;
}
else
{
	positionsavestate --;
}

//Final movement
x = x + hsp;
y = y + vsp;