
/// @description Insert description here
// You can write your code in this editor
printf_index = 0;
scanf_index = 0;
if(distance_to_point(obj_player.x,obj_player.y)<50)
{
	printf("HELLO!");
	switch(scanf("WHAT IS YOUR NAEM","WHAT IS MY NAME"))
	{
		case 1:
		printf("My name is MACCY");
		switch(scanf("MACCY maybe you are not dirty window!","MACCY.. you dirty apple.inc!"))
		{	
			case 1:
			printf("yes I am your friend!");
			break;
			case 2:
			printf("but siri love you..");
			break;
		}
		break;
	
		case 2:
		printf("You Don't konw your name? rediculous...");
		switch(scanf("You want to know my name?", "i am idiot"))
		{
			case 1:
			printf("yes tell me your name!");
			break;
			case 2:
			printf("you are not idiot your are just dumb >_<");
			break;
		}
		break;
	}
}
else
{
	instance_destroy(obj_dialog_scan_background);
}