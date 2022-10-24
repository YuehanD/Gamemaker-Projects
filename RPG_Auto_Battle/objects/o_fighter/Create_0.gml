active = false
can_be_active = false
refresh = false
blend_col = c_white

hit_wobble = false
wobble_timer_max = 30
wobble_timer = wobble_timer_max
wobble_add = 0

my_target = noone	
atk_delay_max = 60
atk_delay = atk_delay_max
atk_rdy = false
atk_timer = 0

//___________________________
//	CHANGE THESE VARIABLES 
//	ON THE CHILD OBJECTS
//	TO MAKE NEW CHARACTERS
my_hp_max = 10

atk_timer_max = 240	// time between attacks
atk_dmg = 1		// damage per hit
pct_hit = 100		// % chance to hit
pct_crit = 0		// % chance to critical hit
crit_dmg = 2		// damage multiplier on critical hit

my_atk_anim = s_fightAttack
my_hit_anim = s_hitFX
//___________________________

my_hp = my_hp_max

hp_col_R = 255
hp_col_G = 255
hp_col_B = 0
hp_col = make_color_rgb(hp_col_R,
						hp_col_G*(my_hp/my_hp_max),
						hp_col_B)

