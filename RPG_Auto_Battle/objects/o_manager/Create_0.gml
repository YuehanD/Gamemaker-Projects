randomize()

depth = -4000
restart_key = ord("R")
begin_game_key = vk_space
globalvar GAME_RUNNING;
GAME_RUNNING = false

can_press_start = true
key_delay = 10


//en_spawn_x = -512
//en_spawn_y = room_height*0.7

//fighter_spawn_x = room_width+128
//fighter_spawn_y = room_height*0.25
//fighter_yspc = 120
//fighter_xspc = 200
//fighter_max_column = 5

globalvar ACTIVE_FIGHTERS;
ACTIVE_FIGHTERS = 0