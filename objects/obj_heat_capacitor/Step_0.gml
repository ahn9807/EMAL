///make it stay at desired location (CHO, 170830)
x = obj_heat_charge_meter.x;
y = obj_heat_charge_meter.y + 200;

switch (heat_level)
{
	case 0 :
		image_index = 0;
		break;
	case 1 :
		image_index = 1;
		break;
	case 2 :
		image_index = 2;
		break;
	case 3 :
		image_index = 3;
		break;
	case -1 :
		image_index = 4;
		break;
	case -2 :
		image_index = 5;
		break;
	case -3 :
		image_index = 6;
		break;
}