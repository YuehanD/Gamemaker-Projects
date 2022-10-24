draw_sprite_ext(sprite_index,0,x+wobble_add,y,1,1,0,blend_col,1)

if can_be_active{
	barDisplay(x,y+8,60,12,my_hp/my_hp_max,c_white,hp_col)

	barDisplay(x,y+24,60,8,1 - (atk_timer/atk_timer_max),c_white,c_teal)
}