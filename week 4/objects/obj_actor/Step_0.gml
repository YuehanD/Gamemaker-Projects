/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


x_bump = false;

on_ground = place_meeting(x,y+1, obj_collide);
if(on_ground){air_jumps = air_jumps_max;}

msp+=accel*hmove;
msp = clamp(msp, -maxsp, maxsp);
vsp+=grav;

if(jump && (on_ground||air_jumps)){
	if(!on_ground){
		air_jumps--;
	}
	vsp = -jump_str;
}

if(hmove ==0){
	var start_sign = sign(msp);
	msp -= decel * start_sign;
	
	if(start_sign!=sign(msp)){msp=0;}
}

for(var i=0; i<abs(msp); i++){
	if(!place_meeting(x+sign(msp),y, obj_collide)){
		x+=sign(msp);
	}else{
		x_bump=true;
		break;
	}
}
//check each pixel we might move for a colision
for(var i=0; i<abs(vsp); i++){
	if(!place_meeting(x,y+sign(vsp), obj_collide)){
		y+=sign(vsp);
	}else{
		vsp=0;
		break;
	}
}