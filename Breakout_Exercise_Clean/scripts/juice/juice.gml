// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function shake_screen(_amt = 5, _timer = 10){
	obj_screen_shaker.shake_amt = _amt;
	obj_screen_shaker.shake_timer =_timer;
}

function spawn_particles(_num, _xsp, _ysp, _spread_rad, _xpos, _ypos){
	for(var i=0; i<_num; i++){
		curr_xpos = _xpos +random_range(-_spread_rad, _spread_rad);
		curr_ypos = _ypos +random_range(-_spread_rad, _spread_rad);

		with(instance_create_layer(curr_xpos, curr_ypos, 0, obj_particle)){
			xsp = _xsp;
			ysp = _ysp;
		}
	}
}