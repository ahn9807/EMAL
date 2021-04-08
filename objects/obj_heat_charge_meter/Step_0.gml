///show the charge meter (CHO, 170829)
switch(obj_heat_controller.charge_level)
{
	case 0 : 
		image_index = 0;
		break;
	case 1 : 
		image_index = 4;
		break;
	case 2 : 
		image_index = 5;
		break;
	case 3 : 
		image_index = 6;
		break;
	case -1 : 
		image_index = 1;
		break;
	case -2 :
		image_index = 2;
		break;
	case -3 : 
		image_index = 3;
		break;
}
x = obj_player.x-450;
y = obj_player.y-300;