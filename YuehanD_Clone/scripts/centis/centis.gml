// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function new_centi(seg_total = 12){
	var new_centis = instance_create_depth(x, y, 0, obj_centipede);
	new_centis.x = room_width;
	new_centis.y = 20;
	
	curr_x = x;
	curr_y = y;
	for(i=0; i<seg_total; i++){
		var curr = instance_create_depth(curr_x, curr_y, 0, obj_segment);
		new_centis.seg_arr[i] = curr;
		if(i==0){curr.head = true;}
		curr_x += 32;
	}
}

