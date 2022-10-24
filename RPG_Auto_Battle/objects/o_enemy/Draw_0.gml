
draw_sprite_ext(sprite_index,0,x+wobble_add,y,1,1,0,my_blend_col,1)


barDisplay(x,y+16,my_hp_max*1.1,12,my_hp/my_hp_max,c_white,hp_col)

barDisplay(x,y+40,my_hp_max*1.1,8,1 - (atk_timer/atk_timer_max),c_white,c_red)
