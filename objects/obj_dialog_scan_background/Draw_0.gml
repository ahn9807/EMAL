/// @description Insert description here
// You can write your code in this editor
var _x = obj_player.x -view_get_xport(view_camera[0]);
var _y = obj_player.y -view_get_xport(view_camera[0]);
x = _x - 120;
y = _y + 240;
draw_sprite(spr_dialog_scan_background,0,x,y);
var count = dialog_sep;
var size_x = sprite_width-dialog_sep;
var size_y = sprite_height-dialog_sep;
var line = 0;
var max_line = sprite_height / dialog_sep;
var isbreak = false;
var issame = false;
var last_print = "";
var print_count = 0;

for(var m =0; m <array_height_2d(c_temp) ; m++)
{
	if(last_n < array_length_2d(c_temp,m))
	{
		if(full_string != string_copy(s_temp[m],1,string_length(full_string)) and string_length(full_string) != 0)
			continue;
		if(key_string != string_copy(c_temp[m,last_n],1,letter_count-1) and letter_count != 1)
			continue;
		draw_set_color(c_dkgray);
		if(print_count > 0 and last_print == c_temp[m,last_n])
		{
			issame = true;
		}
		else
		{
			issame = false;
		}
		draw_text_ext(x+count,y,c_temp[m,last_n],dialog_sep,size_x);
		last_print = c_temp[m,last_n];
		count += string_width(c_temp[m,last_n]) + dialog_sep ;
		print_count ++;
	}
}


  
if(print_count != 0)
{
	for(var m =0; m <array_height_2d(c_temp) ; m++)
	{
		if(last_n < array_length_2d(c_temp,m))
		{
			if(full_string != string_copy(s_temp[m],1,string_length(full_string)) and string_length(full_string) != 0)
				continue;
			if(key_string != string_copy(c_temp[m,last_n],1,letter_count - 1))
				continue;
			if(keyboard_lastkey == 160) //160 is ascii code of shift
				keyboard_lastkey = -1;
			if(keyboard_lastchar == string_char_at(c_temp[m,last_n],letter_count))
			{
				if(keyboard_lastkey != -1)
				{
					key_string += keyboard_lastchar;
					letter_count ++;
					last_m = m;
				}
				isbreak = true;
			}
		}
		if(isbreak == true)
		{
			flag = true;
			break;
		}
	}
	if(isbreak == false and keyboard_lastkey != -1)
	{
		flag  =false;
	}

	if(print_count == 1 or issame == true)
	{
		if(keyboard_lastchar == " " and keyboard_lastkey != -1)
		{
			key_string = string_copy(c_temp[last_m,last_n],1,string_length(c_temp[last_m,last_n]));
			key_string += " ";
			full_string += key_string;
			key_string = "";
			flag = true;
			letter_count = 1;
			last_n ++;
			keyboard_lastkey = -1;
		}
	}

	if(flag == true or string_length(key_string) == 0)
	{
		draw_set_color(c_white);
		draw_text_ext(x+dialog_sep,y + 64,global.player_name + ":" + full_string + key_string,dialog_sep, size_x);
	}
	if(flag == false)
	{
		draw_set_color(c_red);
		draw_text_ext(x+dialog_sep,y + 64,global.player_name + ":" + full_string + key_string + keyboard_lastchar,dialog_sep, size_x);
	}
}
else
{
	draw_set_color(c_white);
	draw_text_ext(x+dialog_sep,y + 64,global.player_name + ":" + full_string + key_string + ".",dialog_sep, size_x);
	if(keyboard_check(vk_enter))
	{
		ds_map_add(global.dialog_ds_map_scan,ds_map_key,last_m + 1);
		ds_map_add(global.dialog_ds_map_temp,global.temp_index,full_string);
		global.temp_index ++;
		instance_destroy();
	}
}

if(keyboard_lastkey == 8) //press delete in mac_os
{
	flag_scan = true;
	key_string = "";
	full_string = "";
	flag = true;
	letter_count = 1;
	last_n = 0;
	last_m = 0;
	ds_map_key = "";
}

	keyboard_lastkey = -1;

