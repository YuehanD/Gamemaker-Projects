/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


x = lerp(x,target.x, .2);
y = lerp(y,target.y, .2);


x = clamp(x, cam_wid/2, room_width - cam_wid/2);
y = clamp(y, cam_hei/2, room_height - cam_hei/2);


camera_set_view_pos(view_camera[view_current], x-cam_wid/2, y-cam_hei/2);