/// @description Insert description here
// You can write your code in this editor

//Creating new layers for inventory to make sure it overlaps all other layers.
//Inventorylayer
if !layer_exists("inventorylayer")
{
	//Creating global layerids, consider using another method to avoid creating new layers everytime inventory opens.
	global.inventorylayerID = 0; 
	global.inventorylayerID1 = 0;
	//
    layer_create(-1000,"inventorylayer");
	global.inventorylayerID = layer_get_id("inventorylayer");
}
//Inventorylayer1
if !layer_exists("inventorylayer1")
{
	layer_create(-1100,"inventorylayer1");
	global.inventorylayerID1 = layer_get_id("inventorylayer1");
}


//Creating inventoryinstances
if layer_exists(global.inventorylayerID)
{
	instance_create_layer(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), global.inventorylayerID, oInventoryBase);
	//instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 , camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), global.inventorylayerID, oInventoryBase);
}
