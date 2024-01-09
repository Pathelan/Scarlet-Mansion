// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_item(itemName, itemSprite, isActive = false){
	itemName = argument0;
	itemSprite = argument1;
	isActive = argument2;
	
	ds_map_add(item, "itemName", itemName);
	ds_map_add(item, "itemSprite", itemSprite);
	ds_map_add(item, "isActive", isActive);
}