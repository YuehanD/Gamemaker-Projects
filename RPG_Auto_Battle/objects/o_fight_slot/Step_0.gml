my_alpha = lerp(my_alpha,my_alpha_t,0.25)
if slot_used{
	my_alpha_t = 0
}else
if slot_hilite{
	my_alpha_t = 1	
}else{
	my_alpha_t = 0.25
}


if !slot_used{
	if position_meeting(o_cursor.x,o_cursor.y,id){
		slot_hilite = true	
	}else{
		slot_hilite = false
	}
}