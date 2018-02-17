/// @description See comments
// You can write your code in this editor

//Get playerinput
//Directions
key_left =  keyboard_check(ord("A")) || gamepad_axis_value(0,gp_axislh) < 0;
key_right = keyboard_check(ord("D")) || gamepad_axis_value(0,gp_axislh) > 0;
key_up = keyboard_check(ord("W")) || gamepad_axis_value(0,gp_axislv) < 0;
key_down = keyboard_check(ord("S")) || gamepad_axis_value(0,gp_axislv) > 0;

//Selections
key_select_left = keyboard_check(ord(vk_left)) || gamepad_button_check(0, gp_padl);
key_select_right = keyboard_check(ord(vk_right)) || gamepad_button_check(0, gp_padr);
key_select_up = keyboard_check(ord(vk_up)) || gamepad_button_check(0, gp_padu);
key_select_down = keyboard_check(ord(vk_down)) || gamepad_button_check(0, gp_padd);

//Buttons
key_one = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);



//Restart position
if keyboard_check_pressed(ord("R"))
{
	x = positionsavex;
	y = positionsavey;
}


//Calculate movement
var movex = key_right - key_left;
var movey = key_down - key_up;
hsp = movex * walksp;
vsp = movey * walksp;



//Movement deceleration x
if movex = 0 && movex != old_movex && !place_meeting(x + old_movex * walksp,y,oCollisionBlock)
{
	decelx -= 0.1;
	xdir = old_movex
}

old_movex = movex;

if decelx < 1
{
	x += walksp * xdir * decelx;
	decelx -= 0.1;
	if place_meeting(x + 1,y,oCollisionBlock) || place_meeting(x - 1,y,oCollisionBlock)
	{
		decelx = decelmax
	}
}

if decelx <= 0
		{
		decelx = 1;
		}

//Movement deceleration y

if movey = 0 && movey != old_movey && !place_meeting(x,y + old_movey * walksp,oCollisionBlock)
{
	decely -= 0.1;
	ydir = old_movey
}


old_movey = movey;

if decely < 1
{
	
	y += walksp * ydir * decely;
	decely -= 0.1;
	if place_meeting(x,y + 1,oCollisionBlock) || place_meeting(x,y - 1,oCollisionBlock)
	{
		decely = decelmax
	}
}

if decely <= 0
		{
		decely = decelmax;
		}

//Collisions
if (place_meeting(x+hsp,y,oCollisionBlock)) || (place_meeting(x,y+vsp,oCollisionBlock))
{
script_execute(PlayerCollision,0);
}

//Call Destroy event
if hp <= 0
{
	instance_destroy();
}


