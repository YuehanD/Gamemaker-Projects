
if(y>room_height-horizon+14){
	y=room_height-horizon+14;
	fall=false;
}
if(fall){
	y+=sp;
	sp+=grav;
}else if(image_alpha>0){
	image_alpha -=0.08;
}else{
	instance_destroy();
}

if( x>room_width+50 ){
	instance_destroy ();
}

if(place_meeting(x, y, obj_grass)){
	fall=false;
}

if(room!=room_game){
	instance_destroy();
}