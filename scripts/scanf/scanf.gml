var key = object_get_name(object_index) + string(scanf_index);
scanf_index ++;
var str = "";
var last_key = "";
var i = 0;
var start_flag = false;;


if(!ds_map_exists(global.dialog_ds_map_scan,key))
{
	start_flag = true;
}

		//for debug only
		if(keyboard_check_pressed(vk_control))
		{
			show_message(key);
		}
		//
if(start_flag == true)
{
		if(!instance_exists(obj_dialog_scan_background))
		{
			var id_temp = instance_create_layer(obj_dialog_scan_point.x,obj_dialog_scan_point.y,"layer_dialog",obj_dialog_scan_background);
		}
		else
		{
			id_temp = obj_dialog_scan_background.id;
		}

		with(id_temp)
		{
			{
				ds_map_key = key;
				if(flag_scan == true)
				{
					for(var i = 0; i<argument_count ;i++)
					{
						s_temp[i] = argument[i];
					}

					var  i =0;
					for(var n = 0; n <argument_count ; n++)
					{
						for(var m = 1; m <= string_length(s_temp[n]); m++)
						{
							if(last_key != " ")
							{ 
								str += last_key;
							}
							else
							{
								c_temp[n,i] = str;
								str = "";
								i++;
							}
							if(m == string_length(s_temp[n]))
							{
								c_temp[n,i] = str + string_char_at(s_temp[n],m);
								str = "";
								i++;
							}
							last_key = string_char_at(s_temp[n],m);
						}
						str = "";
						i=0;
						last_key = "";
					}
				}
				flag_scan = false;
			}
		}
}
else
{
	return ds_map_find_value(global.dialog_ds_map_scan,key);
}
