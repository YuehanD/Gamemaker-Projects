if debug_rdy
and DEBUG_ON{
	
	draw_set_font(fnt_comic)
	draw_set_valign(fa_middle)
	
	for (var i = 0;i<num_opt;i+=1){
		draw_set_color(opt_col[i])
		draw_set_halign(fa_right)
		draw_text(opt_x[i],opt_y[i],opt_text[i])
		
		if i==opt_sel
		and !GAME_RUNNING{
			draw_set_color(c_yellow)
		}else{ draw_set_color(c_white) }
		draw_set_halign(fa_left)
		draw_text(opt_x[i]+8,opt_y[i],opt_mod[i])
			
	}
	
	if !GAME_RUNNING{
		draw_set_color(c_yellow)
		draw_rectangle(opt_x[opt_sel]-4,opt_y[opt_sel]-10,
						opt_x[opt_sel],opt_y[opt_sel]+6,false)
	}
				
}