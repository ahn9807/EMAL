///scr_player_tree(layer_id)
///this script checking player object's sprite and tree tile and if it is collide when player is aboce the tree	
//get argumnet0 as target layer name
var l = layer_get_id(argument0);
var tilemap = layer_tilemap_get_id(l);

//calculating 4 corner of sprite margin **retangular size (code by ahn)
var sprite_left_top_x = x - sprite_xoffset;
var sprite_left_top_y = y - sprite_yoffset;
var sprite_right_top_x = x + (sprite_width-sprite_xoffset);
var sprite_right_top_y = y - sprite_yoffset;
var sprite_left_bottom_x = x - sprite_xoffset;
var sprite_left_bottom_y = y + (sprite_height-sprite_yoffset);
var sprite_right_bottom_x = x + (sprite_width-sprite_xoffset);
var sprite_right_bottom_y = y + (sprite_height-sprite_yoffset);

//detecting the tile and sprite
var t1 = tilemap_get_at_pixel(tilemap,sprite_left_top_x,sprite_left_top_y);
var t2 = tilemap_get_at_pixel(tilemap,sprite_right_top_x,sprite_right_top_y);
var t3 = tilemap_get_at_pixel(tilemap,sprite_left_bottom_x,sprite_left_bottom_y);
var t4 = tilemap_get_at_pixel(tilemap,sprite_left_bottom_x,sprite_left_bottom_y);

if(t1 or t2 or t3 or t4)
{	
	depth = layer_get_depth(layer_get_id("layer_tree")) - 50;
}
else
{
	depth = layer_get_depth(layer_get_id("layer_tree")) + 50;
}