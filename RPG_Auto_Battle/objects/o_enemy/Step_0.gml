if my_hp <=0{
	my_hp=0
	my_blend_col = c_dkgray
	active = false

}else{
	my_blend_col = c_white	
}
if refresh{
	refresh = false
	active = true
	my_hp = my_hp_max
	atk_timer = atk_timer_max
	atk_delay = atk_delay_max
}




if active
and ACTIVE_FIGHTERS > 0{
	
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
			if ACTIVE_FIGHTERS > 0{
				enemyAttack()
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