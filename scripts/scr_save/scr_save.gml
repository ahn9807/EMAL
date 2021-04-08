///save the game (CHO, 170827)
//open save file
ini_open("Save.sav");
//read total number of save (0 when there are no saves)
var save_number = ini_read_string("total", "file_number", "0");
save_number = real(base64_decode(save_number));
//add 1 to total number before saving
save_number++;
//set time variables
var time = string(current_year)+"/"+string(current_month)+"/"+string(current_day)+"/"+string(current_hour)+":"+string(current_minute)+":"+string(current_second);
//encrypt variables
var savedRoom = base64_encode(string(room));
var saved_player_x_position = base64_encode(string(obj_player.x));
var saved_player_y_position = base64_encode(string(obj_player.y));
var save_number_encrypted = base64_encode(string(save_number));
var saved_time_encrypted = base64_encode(string(time));
//write variables on the save file
ini_write_string("total" , "file_number", save_number_encrypted);
ini_write_string("Save"+string(save_number), "room", savedRoom);
ini_write_string("Save"+string(save_number), "player_x_position", saved_player_x_position);
ini_write_string("Save"+string(save_number), "player_y_position", saved_player_y_position);
ini_write_string("Save"+string(save_number), "saved_time", saved_time_encrypted);
//close save file
ini_close();
