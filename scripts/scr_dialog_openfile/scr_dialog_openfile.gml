
//open ini file and save to ds_map
ini_open("DIALOG.ini");

var t_string = ini_read_string("dialog_ds_map_scan", "0", "");
if (t_string != "")
{
	ds_map_read(global.dialog_ds_map_scan, t_string);
}

var s_num = ini_read_real("scan_index","0","");
if (s_num != 0)
{
	global.scan_index = s_num;
}
	


ini_close();
