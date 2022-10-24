/// @description Insert description here
// You can write your code in this editor

if !global.GAME_BEGIN{
	if keyboard_check_pressed(vk_space){
		global.GAME_BEGIN = true
		instance_create_depth(x,y-32,0,obj_ball)
	}
}


if keyboard_check(vk_right){
	my_xscale = lerp(my_xscale,1.4,.4);
	my_yscale = lerp(my_yscale,0.6,.4);
	xspd = mspd	
}
if keyboard_check(vk_left){
	my_xscale = lerp(my_xscale,1.4,.4);
	my_yscale = lerp(my_yscale,0.6,.4);
	xspd = -mspd
}

if (!keyboard_check(vk_right) and !keyboard_check(vk_left)){
	my_xscale = lerp(my_xscale,1,.4);
	my_yscale = lerp(my_yscale,1,.4);
	xspd = 0
}

MoveCollide()

