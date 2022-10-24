active = false
refresh = false
my_blend_col = c_white

atk_delay = 0
atk_delay_max = 60
atk_rdy = false
atk_timer = 0

hit_wobble = false
wobble_timer_max = 10
wobble_timer = wobble_timer_max
wobble_add = 0

//___________________________
//	CHANGE THESE VARIABLES
//	ON THE CHILD OBJECTS
//	TO MAKE NEW CHARACTERS
my_hp_max = 100

atk_timer_max = 240	// time between attacks
atk_dmg = 1			// damage per hit
pct_hit = 100		// % chance to hit

atk_type = 0		// type of attack
/*	atk_type:
	0 - hits one target
	1 - hits all targets
*/

my_atk_anim = s_slimePunch

//___________________________
my_hp = my_hp_max

hp_col_R = 255
hp_col_G = 255
hp_col_B = 0
hp_col = make_color_rgb(hp_col_R,
						hp_col_G*(my_hp/my_hp_max),
						hp_col_B)