x = mouse_x
y = mouse_y

if !GAME_RUNNING{
	if position_meeting(x,y,o_fighter){
		var _f = instance_nearest(x,y,o_fighter)
		if _f.can_be_active == false{
			m_over = true
			m_over_id = _f
		}

	}else{
		m_over = false
		m_over_id = noone	
	}
	
}

if mouse_check_button_pressed(mb_left){
	if m_over{
		carrying = true
		carry_id = m_over_id.object_index
		carry_sprite = m_over_id.sprite_index
		
	}
}
if carrying{
	if mouse_check_button_released(mb_left){
		if position_meeting(x,y,o_fight_slot){
			var _slot = instance_nearest(x,y,o_fight_slot)
			if _slot.slot_used == false{
				var _newfight = instance_create_depth(_slot.x,_slot.y,0,carry_id)
				_newfight.can_be_active = true
				carrying = false
				_slot.slot_used = true
			}
		}else{
			carrying = false
		}
	}
}