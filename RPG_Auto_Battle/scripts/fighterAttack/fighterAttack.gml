// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fighterAttack(){
	var _rollhit = random_range(0,100)
	if _rollhit < pct_hit{
		var _rollcrit = random_range(0,100)
		if _rollcrit < pct_crit{
			var critmult = crit_dmg
			var didcrit = true
		}else{
			var critmult = 1
			var didcrit = false
		}
		
		enemyDamage(id,my_target,atk_dmg*critmult,didcrit)
		var anim_atk = instance_create_depth(x,y,0,o_fx_anim)
		anim_atk.sprite_index = my_atk_anim
		
		//effect_create_above(ef_ellipse,x,y-48,0,c_teal)
	}else{
		//	missed!!
		effect_create_above(ef_smoke,x,y-48,0,c_white)
	}
	
	
}