///load saved data (CHO 170827)
//open save file
ini_open("Save.sav");
//find the index of last saved file (temporary code)
var index = ini_read_string("total", "file_number", "0");
//decrypt the index
index = base64_decode(index);
//load targeted file
scr_load(index);
//close save file
ini_close();
