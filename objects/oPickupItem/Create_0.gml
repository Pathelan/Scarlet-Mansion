currentItem = 0;

/* Create DS List with DS Maps of Items inside.
itemList = ds_list_create();
item = ds_map_create();

add_item("Wings", sItemWings);
add_item("SpearUpgrade", sItemSpear);
add_item("Stopwatch", sItemStopwatch);

// Check if any items are Active.
for (var i=0; i<ds_list_size(itemList); i++;) {
	var itemMap = ds_list_find_value(itemList, i);
	var isActive = ds_map_find_value(itemMap, "isActive");
	var itemSprite = ds_map_find_value(itemMap, "itemSprite");
	
	if (isActive == true) {
		sprite_index = itemSprite;
	}
}