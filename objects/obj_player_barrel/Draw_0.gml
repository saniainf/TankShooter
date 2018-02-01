/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 05A02845
/// @DnDArgument : "x" "obj_player_body.x + lengthdir_x(-20, obj_player_body.image_angle)"
/// @DnDArgument : "y" "obj_player_body.y + lengthdir_y(-20, obj_player_body.image_angle)"
x = obj_player_body.x + lengthdir_x(-20, obj_player_body.image_angle);
y = obj_player_body.y + lengthdir_y(-20, obj_player_body.image_angle);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 06DD610D
draw_self();