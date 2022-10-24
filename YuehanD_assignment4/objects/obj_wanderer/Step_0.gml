/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

t++;

y = pos_height+sin(t/10)*20;

if(x>=pos_right || x<=pos_left){
	sp*=-1;
}

x+=sp;