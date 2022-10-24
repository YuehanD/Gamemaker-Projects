// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fighterDamage(_targ,_amt){
	_targ.my_hp -= _amt
	_targ.hit_wobble = true
	_targ.wobble_timer = _targ.wobble_timer_max
	
	var vis_x = _targ.x
	var vis_y = _targ.y - 48
	effect_create_above(ef_spark,vis_x,vis_y,2,c_fuchsia)
	effect_create_above(ef_ellipse,vis_x,vis_y,0,c_fuchsia)
	if _targ.my_hp<=0{
		effect_create_above(ef_firework,vis_x,vis_y,0,c_red)
	}
}