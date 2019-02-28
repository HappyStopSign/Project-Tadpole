/// @description Insert description here
var xx = x;
var yy = y;

var l = 0;
var a = 0;
var w = 0;

var xxi = xx;
var yyi = yy;


for (var i = 0; i < skeleton_count; i += 1)
{
	l = ds_grid_get(skeleton_grid, 0, i);
	a += ds_grid_get(skeleton_grid, 1, i);
	w = ds_grid_get(skeleton_grid, 2, i);
	
	xxi = xx;
	yyi = yy;
	
	xx += lengthdir_x(l, a);
	yy += lengthdir_y(l, a);
	
	var mx = (xx + xxi) / 2;
	var my = (yy + yyi) / 2;
	draw_sprite_ext(blob_spr, 0, mx,my,l / 256,w * (l/256),a,c_orange,0.1);
	draw_sprite_ext(blob_spr, 0, xx,yy,w * (l/256),w * (l/256),a,c_orange,0.2);
	//draw_sprite_general(blob_spr, 0, 0, 0, 256, 256, xx, yy, 0.25, 0.25, a, c_red, c_red, c_red, c_red, 1);

}


//Debug draw
if(mouse_check_button(mb_right)){
	
	xx = x;
	yy = y;
	
	l = 0;
	a = 0;
	w = 0;
	
	xxi = xx;
	yyi = yy;
	
	draw_set_alpha(1);
	

	for (var i = 0; i < skeleton_count; i += 1)
	{
		l = ds_grid_get(skeleton_grid, 0, i);
		a += ds_grid_get(skeleton_grid, 1, i);
		w = ds_grid_get(skeleton_grid, 2, i);
	
		xxi = xx;
		yyi = yy;
	
		xx += lengthdir_x(l, a);
		yy += lengthdir_y(l, a);
	
	
		draw_set_colour(c_gray);
		draw_line_width(xx,yy,xxi,yyi, 2);
		draw_set_colour(c_green);
		draw_circle(xx, yy, 3, false);
	}
	
	draw_set_colour(c_red);
	draw_circle(xx, yy, 4, false);
	
	draw_circle(target_x,target_y, 32, true);
}




