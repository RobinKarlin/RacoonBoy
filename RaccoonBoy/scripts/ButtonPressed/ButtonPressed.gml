ButtonText = argument0
Result = false

//Find corners of our box
BoxTop = CurrentY
BoxBottom = BoxTop + Margin + string_height(ButtonText) + Margin
HalfTextWidth = string_width(ButtonText) / 2
BoxLeft = x - HalfTextWidth - (Margin * 2)
BoxRight = x + HalfTextWidth + (Margin * 2)

draw_set_color(make_color_hsv(0,200,128))

//See if cursor is hover over it

if device_mouse_x_to_gui(0) > BoxLeft and device_mouse_x_to_gui(0) < BoxRight and device_mouse_y_to_gui(0) > BoxTop and device_mouse_y_to_gui(0) < BoxBottom {
	draw_set_alpha(1)
	if mouse_check_button_pressed(mb_left) {
		Result = true
		}
	
} else {
	draw_set_alpha(0.5)

}

draw_rectangle(BoxLeft,BoxTop,BoxRight,BoxBottom,false)
draw_set_alpha(1)

draw_set_color(c_white)
CurrentY = CurrentY + Margin

DrawTextAndUpdateCurrentY(ButtonText)

CurrentY = CurrentY + (Margin + 3)


return Result
