/// @description Insert description here
// You can write your code in this editor


//Inventoryvariables
inventoryrow = 3;
inventorycolumn = 4;

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
	instance_create_layer(0, 0, global.inventorylayerID, oInventoryBase);
}

//Creating inventoryitems
localvar = 0;
createrow = 1;
for (createrow = 1; createrow < inventoryrow; createrow ++)
{
	for (localvar = 0; localvar < inventorycolumn; localvar ++;)
	{
	     with(instance_create_layer(oInventoryBase.x, oInventoryBase.y + 1, global.inventorylayerID1, oInventoryItems))
			{
				inventoryid = (oInventoryParent.localvar + (oInventoryParent.createrow * 10));
			}
	}
}