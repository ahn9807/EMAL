///reduce alpha
if(instance_exists(obj_heat_accumulate) && image_alpha>0)
{
	current_instance.image_alpha-=0.01;
	//reset alarm
	alarm[0] = room_speed;
}