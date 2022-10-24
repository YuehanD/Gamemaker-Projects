// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyDamage(_attacker,_enemy,_amt,_crit){
	_enemy.my_hp -= _amt
	_enemy.hit_wobble = true
	_enemy.wobble_timer = _enemy.wobble_timer_max
	
	var vis_x = _enemy.x + random_range(-64,64)
	var vis_y = _enemy.y - 64 - random_range(-16,64)
	if _crit{
		effect_create_above(ef_firework,vis_x,vis_y,1,c_fuchsia)
		effect_create_above(ef_spark,vis_x,vis_y,2,c_yellow)		
	}else{
		// no special effect
	}
	var anim_hit = instance_create_depth(vis_x,vis_y,0,o_fx_anim)
		anim_hit.sprite_index = _attacker.my_hit_anim
}