// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyAttack(){
		
	if atk_type == 0{
		var pick_targ = irandom_range(0,instance_number(o_fighter)-1)
		var this_fighter = instance_find(o_fighter,pick_targ)
		if this_fighter.active
		and this_fighter.can_be_active{
			var _rollhit = random_range(0,100)
			if _rollhit < pct_hit{
				fighterDamage(this_fighter,atk_dmg)
				effect_create_above(ef_ring,x,y-130,1,c_fuchsia)
				var atk_anim = instance_create_depth(x,y,0,o_fx_anim)
					atk_anim.sprite_index = my_atk_anim
			}else{
				// missed!!	
			}
		}else{
			enemyAttack()	// redo, find new target
		}

	}else
	if atk_type == 1{
		for(var i = 0; i<instance_number(o_fighter); i+=1){
			var this_fighter = instance_find(o_fighter,i)
			if this_fighter.active
			and this_fighter.can_be_active{
				var _rollhit = random_range(0,100)
				if _rollhit < pct_hit{
					fighterDamage(this_fighter,atk_dmg)
					effect_create_above(ef_ring,x,y-120,2,c_fuchsia)
					var atk_anim = instance_create_depth(x,y,0,o_fx_anim)
					atk_anim.sprite_index = my_atk_anim
				}else{
					// missed!!
				}
			}
		}
	}


}