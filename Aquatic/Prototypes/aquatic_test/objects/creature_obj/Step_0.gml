var s = 0;
	
var a = 0;
var l = 0;

var aa = a;
var da = 0;
var xx = x;
var yy = y;
var xxi = xx;
var yyi = yy;

var tx = target_x;
var ty = target_y;

//Point at target
for (var i = 0; i < skeleton_count; i += 1)
{
	l = ds_grid_get(skeleton_grid, 0, i);
	aa = ds_grid_get(skeleton_grid, 1, i); //Relative Angle
	a += aa; // Real Angle
	//w = ds_grid_get(skeleton_grid, 2, i);

	xxi = xx; // Bone root
	yyi = yy;
	
	da = point_direction(xxi,yyi,tx,ty);
	
	xx += lengthdir_x(l, a); // End Joint
	yy += lengthdir_y(l, a);
	
	if(da > 5 and point_distance(xxi,yyi,tx,ty) > (l * 1.5))
	{
		aa += angle_difference(da, a) * 0.075; 
		// Difference from Real Angle and Target Angle
		// Add Difference to Relative Angle 
		ds_grid_set(skeleton_grid, 1, i, aa); // Store Adjusted Relative Angle
	}
	
	if(i == skeleton_count - 1)
	{
		if(point_distance(xx,yy,tx,ty) > 256)
		{
			s = 8;
		}
		else
		{
			s = (point_distance(xx,yy,tx,ty) / 256) * 8;
		}
		if(point_distance(xx,yy,tx,ty) < 16) { s = 0;}
	}
	
}

//Move root
if(s > 0)
{
	a = ds_grid_get(skeleton_grid, 1, 0);
	x += lengthdir_x(s, a);
	y += lengthdir_y(s, a);
}
