// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function debugSetMods(){
	
	for(var m =0;m<num_opt;m+=1){
		opt_mod[m] = clamp(opt_mod[m],opt_min[m],opt_max[m])
	}
	
	GAME_SPEED = opt_mod[0]

	var _t = o_fighter
	_t.my_hp_max = opt_mod[1]
	_t.atk_dmg = opt_mod[2]
	_t.pct_hit = opt_mod[3] 
	_t.pct_crit = opt_mod[4]
	_t.atk_timer_max = opt_mod[5]

	_t = o_enemy
	_t.my_hp_max = opt_mod[6]
	_t.atk_dmg = opt_mod[7]
	_t.pct_hit = opt_mod[8]
	_t.atk_timer_max = opt_mod[9]
	_t.atk_type = opt_mod[10]

	
}