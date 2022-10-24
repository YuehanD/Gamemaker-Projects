/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


randomize();

x_counts = room_width/32-1;
y_counts = (room_height-70-64)/32-1;


for(i=1; i<x_counts; i++){
	for( j=1; j<y_counts; j++){
		ran = random(25);
		if(ran<1){
			instance_create_depth(32*i, 32*j+64, 0, obj_mushroom);
		}
	}
}