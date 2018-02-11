CenterMenu = camera_get_view_width(view_camera[0])
CamHeight = camera_get_view_height(view_camera[0])
CamWidth = camera_get_view_width(view_camera[0])
x = CenterMenu
y = 50
CurrentY = y
Margin = 10

////////DEBUG///////////

draw_text(camera_get_view_x(view_wport[0]) + 150, camera_get_view_y(view_hport[0]) + 32,"Portsize: " + string(view_wport[0]) + "x" + string(view_hport[0]));
draw_text(camera_get_view_x(view_camera[0]) + 150, camera_get_view_y(view_camera[0]) + 60,"Camsize: " + string(CamWidth) + "x" + string(CamHeight));
//draw_text(camera_get_view_x(view_wport[0]) + 150, camera_get_view_y(view_hport[0]) + 90,CameraZero);



//Using enum numbers for different pages in menu
enum menupages {
   title = 1,
   options = 2,
   startgame = 3
}

//Using cases for the different menu pages. which number to which page is shown in enum list above
switch (State) {
	case 1: {
		
		//Headline
		draw_set_font(fTitle)
		DrawTextAndUpdateCurrentY("Project Racoon Boy")
	
		draw_set_halign(fa_center)
		CurrentY = CurrentY + 50
	
		//Change font for all text below headline
		draw_set_font(fText)
	
	
		if ButtonPressed("Start Game") {
			//Go to game
			State = 3
			room_goto(1)
		
		}
	
		if ButtonPressed("Options") {
			//Go to options
			State = 2
		}
	
		if ButtonPressed("Quit") {
			game_end()
		}
	}
	break
///////////OPTIONS////////////////

	case 2: {	
		
		//Headline
		draw_set_font(fTitle)
		DrawTextAndUpdateCurrentY("Project Racoon Boy")
	
		draw_set_halign(fa_center)
		CurrentY = CurrentY + 50
		Margin = 10
		//Change font for all text below headline
		draw_set_font(fText)
		
		if ButtonPressed("Windowed: 1920x1080") {
			window_set_fullscreen(0)
			window_set_size(1920,1080)
			camera_set_view_size(view_camera[0],1280,720)
			window_set_position(x/3,y)
			
		}
	
	
		if ButtonPressed("Windowed: 1280x720") {
			window_set_fullscreen(0)
			window_set_size(1280,720)
			camera_set_view_size(view_camera[0],960,540)
			window_set_position(x/2,y)
		}
	
		if ButtonPressed("Fullscreen: 1280x720") {
			window_set_fullscreen(1)
			view_set_hport(view_hport[0],720)
			view_set_wport(view_wport[0],1280)
			//Scales the acctual pixels:
			camera_set_view_size(view_camera[0],1280,720)
		}		
	
		if ButtonPressed("Fullscreen: 1920x1080") {
			window_set_fullscreen(1)
			view_set_hport(view_hport[0],1080)
			view_set_wport(view_wport[0],1920)
			//Scales the acctual pixels:
			camera_set_view_size(view_camera[0],1920,1080)
						
		}
	
		if ButtonPressed("Back") {
			//Go to main menu
			State = 1
		}
		
		
	}
	
	break
}