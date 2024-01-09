function set_item_sprite(){
	var itemSelectedName = argument0;
	var itemSelectedSprite = argument1;
	
	for (var i=0; i<ds_list_size(itemList); i++;) {
		var itemMap = ds_list_find_value(itemList, i);
		var itemMapName = ds_map_find_value(itemMap, "itemName");
		var itemSpriteName = ds_map_find_value(itemMap, "itemSprite");
	
		if (itemMapName == itemSelectedName) {
			ds_map_set(itemMap, "itemSprite", itemSprite);
			ds_map_set(itemMap, "isActive", true);
		}
	}
}