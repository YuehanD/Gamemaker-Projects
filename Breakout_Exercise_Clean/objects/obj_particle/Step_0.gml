/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


x+=xsp;
y+=ysp;

image_xscale-=size_decay;
image_yscale-=size_decay;

if(image_xscale<=0){
	instance_destroy();
}