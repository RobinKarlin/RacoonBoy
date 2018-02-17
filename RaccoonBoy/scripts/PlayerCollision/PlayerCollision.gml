//Horizontal collision
if (place_meeting(x+hsp,y,oCollisionBlock))
{
	while (!place_meeting(x+sign(hsp),y,oCollisionBlock))
	{
			x = x+sign(hsp);
	}
	hsp = 0;
}	

//Vertical collision
if (place_meeting(x,y+vsp,oCollisionBlock))
{
	while (!place_meeting(x,y+sign(vsp),oCollisionBlock))
	{
			y = y+sign(vsp);
	}
	vsp = 0;	
}	