///@argument "Text"
///@argument Speed
///@argument X
///@argument Y

//Creates a variable containing the textbox object
Text = instance_create_layer(argument2,argument3,"Text",oTextBox)

/* The variable "Text" also contains following attributes. These are used in the "oTextBox" when 
created in the game */
with (Text) {
	Padding = 35
	MaxLength = sprite_get_width(sTextBox) - 65
	MaxTextHeight = sprite_get_height(sTextBox) - 50
	Text = argument0
	Speed = argument1
	Font = fInGame

	TextLength = string_length(Text)
	FontSize = font_get_size(Font)
	
	TextWidth = string_width_ext(Text,25,MaxLength)
	TextHeight = string_height_ext(Text,25,MaxTextHeight)
	
	BoxWidth = sprite_get_width(sTextBox)
	BoxHeight = sprite_get_height(sTextBox)
}