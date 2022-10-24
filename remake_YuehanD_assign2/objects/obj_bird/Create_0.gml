/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

dst_x=0;
dst_y=0;

wait_frame = 200;

range_left = 100;
range_right = room_width-100;

x = random_range(range_left, range_right);
y = -30;

sp_y = 2;
sp_x = 0;

wait_pos = 100;

fly=false;

back=false;

audio_sound_pitch(tweet, random_range(.8,1.2));
audio_play_sound(tweet, 1, false);