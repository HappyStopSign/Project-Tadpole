/// @description Insert description here
// You can write your code in this editor



var u = keyboard_check(vk_up);
var d = keyboard_check(vk_down);
var l = keyboard_check(vk_left);
var r = keyboard_check(vk_right);

if(u and not l and not r)
{
	var dx = 0;
	var dy = -128;

	target_x += dx / 20;
	target_y += dy / 20;
}

if(d and not l and not r)
{
	var dx = 0;
	var dy = 128;

	target_x += dx / 20;
	target_y += dy / 20;
}

if(l and not u and not d)
{
	var dx = -128;
	var dy = 0;

	target_x += dx / 20;
	target_y += dy / 20;
}

if(r and not u and not d)
{
	var dx = 128;
	var dy = 0;

	target_x += dx / 20;
	target_y += dy / 20;
}

if(u and l)
{
	var dx = -128;
	var dy = -128;

	target_x += dx / 20;
	target_y += dy / 20;
}

if(u and r)
{
	var dx = 128;
	var dy = -128;

	target_x += dx / 20;
	target_y += dy / 20;
}

if(d and l)
{
	var dx = -128;
	var dy = 128;

	target_x += dx / 20;
	target_y += dy / 20;
}

if(d and r)
{
	var dx = 128;
	var dy = 128;

	target_x += dx / 20;
	target_y += dy / 20;
}