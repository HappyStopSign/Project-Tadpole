/// @description Insert description here

var l_min = 2;
var l_max = 4;

skeleton_count = 10;

skeleton_grid = ds_grid_create(3,skeleton_count+1); // Length, Angle, Weight

for (var i = 0; i < skeleton_count; i += 1)
{
	ds_grid_set(skeleton_grid, 0, i, random_range(l_min,l_max)); // Length
	ds_grid_set(skeleton_grid, 1, i, 0);  // Angle
	ds_grid_set(skeleton_grid, 2, i, 30.0); // Weight
}


for (var i = 0; i < skeleton_count; i += 1)
{
	skeleton_length += ds_grid_get(skeleton_grid, 0, i);	
}

target_x = x + (skeleton_length * 2);
target_y = y + (skeleton_length * 2);