if !GAME_RUNNING
and DEBUG_ON{

	if keyboard_check_pressed(vk_up){opt_sel-=1}
	if keyboard_check_pressed(vk_down){opt_sel+=1}
	if opt_sel>num_opt-1{opt_sel=0}
	if opt_sel<0{opt_sel=num_opt-1}


	if keyboard_check_pressed(vk_left){
		if keyboard_check(vk_shift){
			opt_mod[opt_sel] -= 10
		}else{
			opt_mod[opt_sel] -= 1
		}
	
	}
	if keyboard_check_pressed(vk_right){
		if keyboard_check(vk_shift){
			opt_mod[opt_sel] += 10
		}else{
			opt_mod[opt_sel] += 1
		}
	}

	debugSetMods()
}