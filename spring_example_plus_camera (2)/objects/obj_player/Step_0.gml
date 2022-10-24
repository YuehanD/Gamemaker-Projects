/// @description 

//check inputs
var hmove = keyboard_check(vk_right) - keyboard_check(vk_left);
var jump_press = keyboard_check_pressed(vk_space);

//added  this to check if we *just* hit the ground...
var was_grounded = on_ground;
//are we on the ground this frame?
on_ground = place_meeting(x, y+1, obj_collide);

//okay so if we *just* hit the ground...
if (!was_grounded and on_ground){
		//splat
		my_yscale = .4;
		my_xscale = 2;	
}

#region unchanged stuff from the original project
//movement processing
mspd += accel * hmove;
vspd += grav;

//if we are on the ground, reset our air jumps (we get 1 -- aka doublejump)
if (on_ground){
	air_jumps = air_jumps_max;	
}

//check if we should, and can, jump
if (jump_press){
	if (on_ground){
		vspd = -jump_str;
	} else if (air_jumps > 0){
		vspd = -jump_str;
		air_jumps -=1;
	}
}

mspd = clamp(mspd, -max_speed, max_speed); // constrain speed

if (hmove == 0){
	var start_sign = sign(mspd);  // is our speed toward left or right?
	mspd -= decel * sign(mspd);  //cancel that out a bit
	
	//but if we went too far, we need to stop.
	if (sign(mspd) != start_sign){
		mspd = 0;	
	}
	
}

#endregion

//here is where we resolve having splatted.
if (on_ground){
	
///add spring force. force = tension * (target position - current position);
yscale_spring += (base_yscale - my_yscale) * spring_tension;
//apply dampening to the force so it doesn't bounce forever
yscale_spring *= spring_damp;
//apply the force to the current scale
my_yscale += yscale_spring

//do all that again for xscale
xscale_spring += (base_xscale - my_xscale) * spring_tension;
xscale_spring *= spring_damp;
my_xscale += xscale_spring;

} else {
	
	//scale for jump speed
	my_yscale = base_yscale + (.5 * (abs(vspd)/10));	
	my_xscale = base_xscale - (.5* (abs(vspd)/10));
	
}

#region unchanged movement from the original project

//check each pixel we might move for a collision (x axis)
for (var i = 0; i < abs(mspd); i++){
	if (!place_meeting(x + sign(mspd), y, obj_collide)){
		x += sign(mspd);
	} else {
		mspd = 0;
		break;
	}
}

//check each pixel we might move for a collision (y axis)
for (var i = 0; i < abs(vspd); i++){
	if (!place_meeting(x, y + sign(vspd), obj_collide)){
		y += sign(vspd);
	} else {
		vspd = 0;
		break;
	}
}
#endregion


