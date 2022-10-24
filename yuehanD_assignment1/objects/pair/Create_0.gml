/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomise();

display = round(random_range(0, 2));
color = round(random_range(0, 6));
show_debug_message("pair display: "+ string(display) + ", pair color: " + string(color) + "\n")


x = 100+round(random_range(1, grid.xcells)-1)* grid.size;
y = 100+round(random_range(1, grid.ycells)-1)* grid.size;



shape_x = x +(grid.size/2);
shape_y = y +(grid.size/2);