/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_sprite_ext(sprite_index, 1, camera_get_view_x(view_camera[0])+1100, camera_get_view_y(view_camera[0])+100, life, image_yscale, image_angle, image_blend, image_alpha);

draw_sprite(sprite_index, 0, camera_get_view_x(view_camera[0])+1100, camera_get_view_y(view_camera[0])+100);
