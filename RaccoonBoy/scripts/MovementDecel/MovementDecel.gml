//Movement deceleration x
if movex = 0 && movex != old_movex && !place_meeting(x + old_movex * walksp,y,oCollisionBlock)
{
	decelx -= initiatedecel;
	xdir = old_movex;
}


if decelx < decelmax
{
	x += walksp * xdir * decelx;
	decelx -= decelvalue;
	if place_meeting(x + 1,y,oCollisionBlock) || place_meeting(x - 1,y,oCollisionBlock)
	{
		decelx = decelmax;
	}
}

if decelx <= 0
		{
		decelx = decelmax;
		}

//Movement deceleration y

if movey = 0 && movey != old_movey && !place_meeting(x,y + old_movey * walksp,oCollisionBlock)
{
	decely -= initiatedecel;
	ydir = old_movey;
}


if decely < decelmax
{
	
	y += walksp * ydir * decely;
	decely -= decelvalue;
	if place_meeting(x,y + 1,oCollisionBlock) || place_meeting(x,y - 1,oCollisionBlock)
	{
		decely = decelmax;
	}
}

if decely <= 0
		{
		decely = decelmax;
		}