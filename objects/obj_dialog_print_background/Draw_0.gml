/// @description Insert description here
// You can write your code in this editor
var _x = obj_player.x -view_get_xport(view_camera[0]) - 480;
var _y = obj_player.y -view_get_xport(view_camera[0]) + 360;
draw_sprite(spr_dialog_printf_background,0,_x,_y);
var count = ds_map_size(global.dialog_ds_map_temp);
//must set x and y 
var size_x = sprite_width-dialog_sep;
var size_y = sprite_height-dialog_sep;
var line = 0;
var max_line = sprite_height / dialog_sep;

for(var i=count-1; i>=0; i--)
{
	draw_set_color(c_black);
	draw_set_font(font_dialog);
	line += (string_width(global.dialog_ds_map_temp[? i]) div size_x + 1);
	if(line < max_line)
	{
		draw_text_ext(_x+dialog_sep,_y-line*dialog_sep,global.dialog_ds_map_temp[? i],dialog_sep, size_x);
	}
}

