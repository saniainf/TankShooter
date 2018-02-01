/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 15A778F1
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3E3CC750
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FCD3E6C
/// @DnDArgument : "var" "coolDown"
/// @DnDArgument : "op" "2"
if(coolDown > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6470D749
	/// @DnDParent : 2FCD3E6C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "coolDown"
	coolDown += -1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3703CA69
var l3703CA69_0;
l3703CA69_0 = mouse_check_button(mb_left);
if (l3703CA69_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B7F667C
	/// @DnDParent : 3703CA69
	/// @DnDArgument : "var" "coolDown"
	/// @DnDArgument : "op" "3"
	if(coolDown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 011D2081
		/// @DnDParent : 7B7F667C
		/// @DnDArgument : "xpos" "x + lengthdir_x(90, image_angle)"
		/// @DnDArgument : "ypos" "y + lengthdir_y(90, image_angle)"
		/// @DnDArgument : "objectid" "obj_bullet_01"
		/// @DnDArgument : "layer" ""Layer_Bullet""
		/// @DnDSaveInfo : "objectid" "23d337cc-ec64-44b0-855d-81228ed82c04"
		instance_create_layer(x + lengthdir_x(90, image_angle), y + lengthdir_y(90, image_angle), "Layer_Bullet", obj_bullet_01);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02F98825
		/// @DnDParent : 7B7F667C
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "coolDown"
		coolDown = 5;
	}
}