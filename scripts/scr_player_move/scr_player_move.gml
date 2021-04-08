///scr_player_move(spd); must have hspd and vspd


//start move event
scr_getkey();

//get x and y from keyboard
var dx = (key_right - key_left);
var dy = (key_down - key_up);

//get dirextion (if you want mouse click then change this code (mouse_x,mouse_y)
var tempdir = point_direction(0,0,dx,dy);

//stop moving when there is not input
if(dx == 0 and dy == 0)
{	
	var tempspd = 0;
}
else
{
	var tempspd = argument0;
}

//calculate hspd and vspd
hspd = lengthdir_x(tempspd,tempdir);
vspd = lengthdir_y(tempspd,tempdir);


//move the object
x += hspd;
y += vspd;

//checking collision
var count =0; 
if(layer_tilemap_exists(layer_get_id("layer_collision"),tilemap))
{
	if(dy > 0) 
	{
		//down
		var t1 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
		var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
	
		if(t1 != 0 and t2 != 0) //(detect collision)
		{
			y = (bbox_bottom & ~15) - sprite_bbox_bottom - 1;
			count =1;
		}
	}
	if(dy < 0)
	{
		//up
		var t1 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
		var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
	
		if(t1 != 0 and t2 != 0) //(detect collision)
		{
			y = ((bbox_top + 16) & ~15) - sprite_bbox_top + 1;
			count = 1;
		}
	}
	//checking collsion horizontal
	if(dx > 0) 
	{
		//moving right
		var t3 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
		var t4 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
	
		if(t3 != 0 and t4 != 0) //(detect collision)
		{
			x = (bbox_right & ~15) - sprite_bbox_right - 1;
			count =1;
		}
	}
	if(dx <0)
	{
		//moving left
		var t3 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
		var t4 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
	
		if(t3 != 0 and t4 != 0) //(detect collision)
		{
			x = ((bbox_left + 16) & ~15) - sprite_bbox_left + 1;
			count =1;
		}
	}
	//for point collsion/////////////////////////////////////////////////////////////////
	if(count == 0)
	{
		if(dy > 0) 
		{
			//down
			var t1 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
			var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
	
			if(t1 != 0 and t2 != 0) //(detect collision)
			{
				y = (bbox_bottom & ~15) - sprite_bbox_bottom - 1;
				count =1;
			}
		}
		if(dy < 0)
		{
			//up
			var t1 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
			var t2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
	
			if(t1 != 0 and t2 != 0) //(detect collision)
			{
				y = ((bbox_top + 16) & ~15) - sprite_bbox_top + 1;
				count = 1;
			}
		}
		//checking collsion horizontal
		if(dx > 0) 
		{
			//moving right
			var t3 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) & tile_index_mask;
			var t4 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) & tile_index_mask;
	
			if(t3 != 0 and t4 != 0) //(detect collision)
			{
				x = (bbox_right & ~15) - sprite_bbox_right - 1;
				count =1;
			}
		}
		if(dx <0)
		{
			//moving left
			var t3 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) & tile_index_mask;
			var t4 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) & tile_index_mask;
	
			if(t3 != 0 and t4 != 0) //(detect collision)
			{
				x = ((bbox_left + 16) & ~15) - sprite_bbox_left + 1;
				count =1;
			}
		}
}
}
















