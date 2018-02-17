//Movement acceleration x
if movex != 0 && movex != old_movex && movey = 0
{
	acceltimer = (maxacceltime - 1);
}

if acceltimer < maxacceltime
{
	hsp = hsp * accelchange;
	acceltimer--;
}

if acceltimer <= 0
{
	acceltimer = maxacceltime;
}

//Movement acceleration y
if movey != 0 && movey != old_movey && movex = 0
{
	acceltimer = (maxacceltime - 1);
}

if acceltimer < maxacceltime
{
	vsp = vsp * accelchange;
	acceltimer--;
}

if acceltimer <= 0
{
	acceltimer = maxacceltime;
}