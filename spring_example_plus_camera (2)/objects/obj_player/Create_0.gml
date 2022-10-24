/// @description player properties

my_xscale = image_xscale;
my_yscale = image_yscale;
base_xscale = my_xscale;
base_yscale = my_yscale;
yscale_spring = 0;
xscale_spring = 0;

//play with these values to change the effect of the spring
spring_tension = .2 //how springy? 0 means make no attempt to spring back.
spring_damp = .8 //dampening factor, 0-1. 1 means conserve all energy - bounce forever.


#region unchanged stuff from the original project
accel = .1;
decel = .4;
mspd = 0;

vspd = 0;

on_ground = false;


air_jumps_max = 1;
air_jumps = air_jumps_max;


max_speed = 5;

jump_str = 10;

grav = .2;
#endregion


