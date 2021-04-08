///reduce alpha
if(instance_exists(obj_heat_drain) && obj_heat_controller.control_mode == 0)
{
	image_alpha-=0.01;
	//reset alarm
	alarm[0] = room_speed;
}