/// @description Insert description here
// You can write your code in this editor

if(food_type == 0)
{
	image_blend = c_green;	
}
else if(food_type == 1)
{
	image_blend = c_red;	
}

image_angle += rotation_speed;

draw_self();