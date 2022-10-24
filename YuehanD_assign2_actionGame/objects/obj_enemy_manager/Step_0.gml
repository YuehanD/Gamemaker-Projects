/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

rand_time--;
if(rand_time<=0){
	rand_time = random_range(time_min, time_max);
	if(rand_reward<=0){
		instance_create_depth(100,100, 0, obj_reward);
		rand_reward = random_range(reward_min, reward_max);
	}
	instance_create_depth(100,100, 0, obj_enemy);
	rand_reward--;
}