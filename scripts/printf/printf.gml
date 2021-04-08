///scr_dialog_print(argumet[0],color,...)
//macro dialog_sep mean seperation btwn line


if(isexecute_printf[printf_index] == false)
{
	if(!ds_map_exists(global.dialog_ds_map_temp,global.temp_index))
	{
		ds_map_add(global.dialog_ds_map_temp,global.temp_index,string(argument0));
		global.temp_index ++;
	}
	isexecute_printf[printf_index] = true;
}
	printf_index ++;