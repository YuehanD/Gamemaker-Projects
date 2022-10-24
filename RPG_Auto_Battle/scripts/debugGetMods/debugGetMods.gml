// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function debugGetMods(){
	opt_mod[0] = GAME_SPEED

	var _f = o_fighter
	opt_mod[1] = _f.my_hp_max
	opt_mod[2] = _f.atk_dmg
	opt_mod[3] = _f.pct_hit
	opt_mod[4] = _f.pct_crit
	opt_mod[5] = _f.atk_timer_max

	var _t = o_enemy
	opt_mod[6] = _t.my_hp_max
	opt_mod[7] = _t.atk_dmg
	opt_mod[8] = _t.pct_hit
	opt_mod[9] = _t.atk_timer_max
	opt_mod[10] = _t.atk_type
	
	for(var m =0;m<num_opt;m+=1){
		opt_min[m] = 0
		opt_max[m] = 100
	}
	opt_max[1] = 9999	// fighter hp
	opt_max[6] = 9999	// enemy hp
	
	opt_max[2] = 9999	// fighter atk
	opt_max[7] = 9999	// enemy atk
	
	opt_max[5] = 600	// fighter atk time
	opt_max[9] = 600	// enemy atk time
	
	opt_max[10] = 1		// enemy atk type

}