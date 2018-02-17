/// @description PlayerVariables here
// You can write your code in this editor

//Depth -20 makes player end up on top of all other sprites
//depth = -10

//Gamepad stuffs
gamepad_set_axis_deadzone(0, 0.3);

//old variables
old_movex = 0;
old_movey = 0;

positionsavestate = 1;
positionsavex = x;
positionsavey = y;

//Movementcontrolvariable
movex = 0;
movey = 0;

//Horizontal speed
hsp = 0;

//Vertical speed
vsp = 0;

//Acceleration & Deceleration
//Deceleration are calculated progressively in a geometric series reaching for 0. e.g. see decelvalue.
//Acceleration is calculated as a constant speedchange e.g. vsp * accelchange.
xdir = 0;
ydir = 0;

decelx = 1;
decely = 1;
decelmax = 1;

initiatedecel = 0.1; //Default value: 0.1. Starting deceleration valuechange. Changing this does not change much in the actual decel.
decelvalue = 0.1; //Default value: 0.1. Changing this changes the amount of pixels in deceleration according to walksp * xdir * (decelx - decelvalue) for every step when decelx less than decelmax.

maxacceltime = 26; // The time in frames (minus 1) it takes for object to reach full speed.
acceltimer = maxacceltime; //Change maxacceltime to change this value.
accelchange = 0.6; //This value changes the speed of the object where 1 is original speedvalue and 0.1 is a tenth.

//Gravity
grv = 0;

//Walkspeed
walksp = 4;

//Health
hp = 1;

//Roomspeed
room_speed = 60;
timer = room_speed / 60;

//Decides if movementscripts can be played
movementstart = false;

