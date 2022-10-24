// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clearFighters(){
	with(o_fight_slot){slot_used=false}
	with(o_fighter){
		if can_be_active{
			instance_destroy()	
		}
	}
}