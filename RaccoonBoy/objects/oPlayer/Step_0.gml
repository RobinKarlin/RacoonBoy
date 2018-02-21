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
// keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_button1 = keyboard_check_pressed(ord("I"));

//Inventory
if key_button1 = true
{
	if !instance_exists(oInventoryParent)
	{
		instance_create_layer(x,y, playerlayerID, oInventoryParent);
	}
	else
	{
		instance_destroy(oInventoryParent)
	}
}

//Restart position
if keyboard_check_pressed(ord("R"))
{
	x = positionsavex;
	y = positionsavey;
}


//Calculate movement
movex = key_right - key_left;
movey = key_down - key_up;
hsp = movex * walksp;
vsp = movey * walksp;


//MovementDeceleration
script_execute(MovementDecel,0);

//Movementacceleration
script_execute(MovementAccel,0);


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


