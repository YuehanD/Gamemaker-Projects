draw_set_font(fnt_comic)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

draw_set_color(c_white)
	draw_text(room_width/2,16,"<< Press SPACE to Start/End >>")
if GAME_RUNNING{
	draw_set_color(c_green)
	draw_text(room_width/2,48,"GAME ON")
}else{
	draw_set_color(c_dkgray)
	draw_text(room_width/2,48,"GAME OFF")
}
/*
draw_set_color(c_yellow)
draw_text(10,34,"GAME SPD: " +string(GAME_SPEED))

draw_set_color(c_yellow)
draw_text(10,58,"FIGHTERS: " +string(ACTIVE_FIGHTERS))