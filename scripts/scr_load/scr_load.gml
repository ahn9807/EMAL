///load save file (CHO, 170827)
//check there is any saved data
if(file_exists("Save.sav"))
{
	//open save file
	ini_open("Save.sav");
	//get saved data
	var LoadedRoom = ini_read_string("Save"+string(argument0), "room", "0");
	var loaded_player_x_position = ini_read_string("Save"+string(argument0), "player_x_position", "2144");
	var loaded_player_y_position = ini_read_string("Save"+string(argument0), "player_y_position", "2720");
	//decrypt loaded data
	LoadedRoom = real(base64_decode(LoadedRoom));
	loaded_player_x_position = real(base64_decode(loaded_player_x_position));
	loaded_player_y_position = real(base64_decode(loaded_player_y_position)); 
	//close save file
	ini_close();
	//change variables to loaded data
	room_goto(LoadedRoom); 
	obj_player.x = loaded_player_x_position;
	obj_player.y = loaded_player_y_position;
}
// if there is no saved data, set variables to default
else
{
	//set player position to default data
	obj_player.x = 2144;
	obj_player.y = 2720;
}
