depth = -y
if my_hp <= 0{
	my_hp = 0
	if active{
		active = false
		ACTIVE_FIGHTERS -= 1
		blend_col = c_dkgray
	}
}


if refresh{
	refresh = false
	if can_be_active{
		active = true
		ACTIVE_FIGHTERS +=1
	}
	
	blend_col = c_white
	my_hp = my_hp_max
	atk_delay = atk_delay_max
	atk_timer = irandom_range(atk_timer_max,atk_timer_max/2)
}

if instance_exists(o_enemy){
	my_target = o_enemy
}else{
	active = false	
}


if active
and can_be_active{
	if my_target.active{

		atk_delay -= 1*GAME_SPEED
		if atk_delay <=0{
			atk_rdy = true	
		}
		if atk_rdy{
			atk_timer -= 1*GAME_SPEED
			if atk_timer <=0{
				atk_timer = atk_timer_max
				atk_delay = atk_delay_max
				atk_rdy = false
				fighterAttack()
				
			}
		}
	}	
}

if hit_wobble{
	wobble_add = irandom_range(-16,16)
	wobble_timer -= 1
	if wobble_timer <= 0{
		hit_wobble = false
		wobble_add = 0
	}
}

hp_col = make_color_rgb(hp_col_R,
						hp_col_G*(my_hp/my_hp_max),
						hp_col_B)