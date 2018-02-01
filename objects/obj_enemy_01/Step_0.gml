/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 369AD504
/// @DnDArgument : "obj" "obj_player_body"
/// @DnDSaveInfo : "obj" "59d0384a-35e3-4a1d-b909-73d12cd4c8e4"
var l369AD504_0 = false;
l369AD504_0 = instance_exists(obj_player_body);
if(l369AD504_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3F85136F
	/// @DnDParent : 369AD504
	/// @DnDArgument : "x" "obj_player_body.x"
	/// @DnDArgument : "y" "obj_player_body.y"
	direction = point_direction(x, y, obj_player_body.x, obj_player_body.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 65F161D3
	/// @DnDParent : 369AD504
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1771562E
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61C158D2
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C4146F4
	/// @DnDParent : 61C158D2
	instance_destroy();
}