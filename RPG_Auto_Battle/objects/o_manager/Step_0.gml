if !GAME_RUNNING{
	if keyboard_check_pressed(restart_key){
		clearFighters()
	}	
}
if keyboard_check_pressed(vk_tab){
	DEBUG_ON = !DEBUG_ON	
}


if can_press_start{
	if keyboard_check_pressed(begin_game_key){
		if GAME_RUNNING{
			GAME_RUNNING = false
			concludeGame()
			
		}else{	
			GAME_RUNNING = true
			ACTIVE_FIGHTERS = 0

			with(o_enemy){refresh=true}
			with(o_fighter){refresh=true}
		}
		can_press_start = false
		alarm[0] = key_delay
	}
}