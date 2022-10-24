globalvar DEBUG_ON;
DEBUG_ON = false

depth = -4000
debug_rdy = false
alarm[0] = 1
globalvar GAME_SPEED;

//	speed multipliers
gspd_set[0] = 0.5
gspd_set[1] = 1
gspd_set[2] = 2
gspd_set[3] = 4
cur_gspd = 1
GAME_SPEED = gspd_set[cur_gspd]

opt_sel = 0

num_opt = 11
opt_y_add = 0
opt_y_spc = 28
for (var i = 0;i<num_opt;i+=1){
	if i==1
	or i==6{
		opt_y_add += 48	
	}
	opt_x[i] = 128
	opt_y[i] = 16+opt_y_add + (i*opt_y_spc)
	
	if i>=6{
		opt_col[i] = c_fuchsia
	}else
	if i>=1{
		opt_col[i] = c_teal
	}else{
		opt_col[i] = c_green
	}
}

opt_text[0] = "GameSpd :"

//	FIGHTER
opt_text[1] = "HP :"
opt_text[2] = "Atk :"
opt_text[3] = "Hit% :"
opt_text[4] = "Crit% :"
opt_text[5] = "AtkTime :"

//	ENEMY
opt_text[6] = "HP :"
opt_text[7] = "Atk :"
opt_text[8] = "Hit% :"
opt_text[9] = "AtkTime :"
opt_text[10] = "AtkType :"



