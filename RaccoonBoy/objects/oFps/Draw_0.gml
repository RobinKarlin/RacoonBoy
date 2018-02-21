/// @description Insert description here
// You can write your code in this editor
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 32, string(fps) + "\n" + string(fps_real));

draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 66, string("playerlayer: ") + string(oPlayer.playerlayerID));

if instance_exists(oInventoryParent)
{
	draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 110, string("inventorylayer: ") + string(global.inventorylayerID) + "\ninventorylayerid1: " + string(global.inventorylayerID1));
}