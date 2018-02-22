/* Center camera to player when changing room
x = oPlayer.x
y = oPlayer.y
PortHeight = 1080
PortWidth = 1920



Camera = camera_create_view()

var pm = matrix_build_projection_ortho(oMainMenu.PortWidth,oMainMenu.PortHeight,1,10000)
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)

camera_set_view_mat(Camera,vm)
camera_set_proj_mat(Camera,pm)

view_camera[0] = Camera

CameraFollowPlayer = oPlayer
xTo = x
yTo = y

