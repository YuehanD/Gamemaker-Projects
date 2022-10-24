/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();

reward_min = 0;
reward_max = 5;

rand_reward = random_range(reward_min, reward_max);

time_min = 0.3*room_speed;
time_max = 0.6*room_speed;

dasher_count = 50;

bird_count = 30;

rand_time = random_range(time_min, time_max);

start_time = 100;
start = false;

life=7;