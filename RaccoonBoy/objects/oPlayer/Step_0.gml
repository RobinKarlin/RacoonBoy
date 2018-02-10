
//abs = will always return a positive value. Ex: 3 - 2 = -1 will turn into 1


// Update Input
InputLeft	= keyboard_check(ord("A"))
InputRight	= keyboard_check(ord("D"))
InputUp		= keyboard_check(ord("W"))
InputDown	= keyboard_check(ord("S"))
InputWalk	= keyboard_check(vk_control)
InputSprint = keyboard_check(vk_shift)

//Alter speeds
if (InputWalk) or (InputSprint) {
	PlayerSpeed = abs((InputWalk * WalkSpeed) - (InputSprint*SprintSpeed))
}else {
	PlayerSpeed = NormalSpeed
}
	

// Reset move variables
MoveX = 0
MoveY = 0

//Intended movement - this will make player stop if for ex both left and right are pressed at the same time
MoveX = (InputRight - InputLeft) * PlayerSpeed
MoveY = (InputDown - InputUp) * PlayerSpeed 

//Apply movement
x += MoveX
y += MoveY

