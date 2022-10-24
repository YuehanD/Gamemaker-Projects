/// @description Insert description here
// You can write your code in this editor

x = lerp(x, target.x, .02);
y = lerp(y, target.y, .02);

x = clamp(x, cam_wid/2, room_width - cam_wid/2);
y = clamp(y, cam_hei/2, room_height - cam_hei/2);

camera_set_view_pos(view_camera[view_current], x - cam_wid/2, y - cam_hei/2);

