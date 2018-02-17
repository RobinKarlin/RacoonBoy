

if global.pause = false
{
	global.pause = true;
	instance_deactivate_all(true);
}
else
{
	global.pause = false;
	instance_activate_all()
}