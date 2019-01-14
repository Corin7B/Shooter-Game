vsp = vsp + grv
//Horizontal collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
	x = x + sign(hsp);	
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
	y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_EnemyA;
	image_speed= 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_Enemy;
	}
 	else
	{
	sprite_index = spr_EnemyA;
	}
}
	
if (hsp !=0) image_xscale = sign(hsp);