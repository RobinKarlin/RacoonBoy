

x += (xTo - x)/5
y += (yTo - y)/5

if (CameraFollowPlayer != noone) {
	xTo = CameraFollowPlayer.x
	yTo = CameraFollowPlayer.y
}


var pm = matrix_build_projection_ortho(oMainMenu.PortWidth,oMainMenu.PortHeight,1,10000)


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(Camera,vm)

view_set_hport(Camera,view_hport[0])
view_set_wport(Camera,view_wport[0])

//Gathering of port and camera information for GUI and Debugging
CamWidthScale = camera_get_view_width(view_camera[0])
CamHeightScale = camera_get_view_height(view_camera[0])
PortHeightScale = view_get_hport(view_hport[0])
PortWidthScale = view_get_wport(view_wport[0])