/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


x+=xsp;
y+=ysp;

if(x<-50 || x>room_width+50 || y<-50 || y> room_height+50){
	instance_destroy ();
}