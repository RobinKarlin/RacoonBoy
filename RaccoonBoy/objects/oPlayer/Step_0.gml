/// @description Insert description here
// You can write your code in this editor
//Get playerinput
key_left =  keyboard_check(ord("A")) || gamepad_axis_value(0,gp_axislh) < 0;
key_right = keyboard_check(ord("D")) || gamepad_axis_value(0,gp_axislh) > 0;
key_up = keyboard_check(ord("W")) || gamepad_axis_value(0,gp_axislv) < 0;
key_down = keyboard_check(ord("S")) || gamepad_axis_value(0,gp_axislv) > 0;
key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);

//Restart room
if keyboard_check_pressed(ord("R"))
{
	room_restart();
}

//Calculate movement
var movex = key_right - key_left;
var movey = key_down - key_up;
hsp = movex * walksp;
vsp = movey * walksp;
x += hsp;
y += vsp;

//Movement deceleration
decelx = max(0,decelx)
if keyboard_check_released(ord("D"))
{
	decelx = 1000;
	hsp = walksp * decelx;
}
decelx --


/*
//Horizontal collision
if (place_meeting(x+hsp,y,oWallParent))
{
	while (!place_meeting(x+sign(hsp),y,oWallParent))
	{
			x = x+sign(hsp);
	}
	hsp = 0;
}	
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWallParent))
{
	while (!place_meeting(x,y+sign(vsp),oWallParent))
	{
			y = y+sign(vsp);
	}
	vsp = 0;	
}	
y = y + vsp;
*/

//Call Destroy event
if hp <= 0
{
	instance_destroy();
}

