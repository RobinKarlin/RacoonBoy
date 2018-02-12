/// @description PlayerVariables here
// You can write your code in this editor

//Depth -20 makes player end up on top of all other sprites
//depth = -10

//Gamepad stuffs
gamepad_set_axis_deadzone(0, 0.25);

//old variables
old_movex = 0;
old_movey = 0;

old_key_left = 0;
old_key_right = 0;
old_key_up = 0;
old_key_down = 0;

//Horizontal speed
hsp = 0;

//Vertical speed
vsp = 0;

//Deceleration
xdir = 0;
ydir = 0;
decelmax = 1;
decelx = 1;
decely = 1;

//Gravity
grv = 0;

//Walkspeed
walksp = 4;

//Health
hp = 1;

//Roomspeed
room_speed = 60;
timer = room_speed / 60;

