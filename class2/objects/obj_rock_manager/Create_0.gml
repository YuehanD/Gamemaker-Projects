/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

num_rocks = 5;

for(i = 0; i<num_rocks; i++){
	instance_create_depth(random(room_width), random_range(-200, 0), random_range(-200, 0), rocks);
}

randomize();