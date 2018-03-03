/// @description Insert description here
// You can write your code in this editor

if inventoryid < 10
{
	x = oPlayer.x - (oInventoryBase.sprite_width / 2) + 1 +  (sprite_width * inventoryid) + (inventoryid);
	y = oPlayer.y + (oInventoryBase.sprite_height) + 1;
}
else
{
	x = oPlayer.x - (oInventoryBase.sprite_width / 2) + 1 + sprite_width * 
	y = oPlayer.y + (oInventoryBase.sprite_height)
}