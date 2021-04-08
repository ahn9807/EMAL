//open ini file and save 
ini_open("DIALOG.ini");

var t_string;
t_string = ds_map_write(global.dialog_ds_map_scan);
ini_write_string("dialog_ds_map_scan", "0", t_string);

var s_num;
s_num = global.scan_index;
ini_write_real("scan_index","0",s_num);

ini_close();
