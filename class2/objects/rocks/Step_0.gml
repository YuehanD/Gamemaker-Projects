/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


sp +=grav;
y+=sp;

if(y>room_height){
	y = 0;
	x = random(room_width);
	sp = 0;
}