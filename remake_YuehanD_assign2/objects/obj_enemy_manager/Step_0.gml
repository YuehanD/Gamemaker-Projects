/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(room!=room_game){
	instance_destroy();
}


if(start_time<=0){
	start=true;
}
if(!start){
	start_time--;
}
else{
	rand_time--;
	if(rand_time<=0){
		dasher_count--;
		bird_count--;
		rand_time = random_range(time_min, time_max);
		if(rand_reward<=0){
			if(life==0){
				instance_create_depth(100,100, 0, obj_life);
				life=8;
			}else{
				instance_create_depth(100,100, 0, obj_reward);
				life--;
			}
			rand_reward = random_range(reward_min, reward_max);
		}else{
			instance_create_depth(100,100, 0, obj_enemy);
		}
		rand_reward--;
	}

	if(dasher_count==40){
		instance_create_depth(-20,room_height-100, 0, obj_dasher);
		dasher_count--;
	}else if(dasher_count==0){
		instance_create_depth(room_width+20,room_height-100, 0, obj_dasher);
		dasher_count=80;
	}

	if(bird_count==0){
		instance_create_depth(-20,-20, 0, obj_bird);
		bird_count = 30;
	}
}