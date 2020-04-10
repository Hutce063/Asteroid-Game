/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2D64FB8F
/// @DnDArgument : "expr" "room"
var l2D64FB8F_0 = room;
switch(l2D64FB8F_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3F44A836
	/// @DnDParent : 2D64FB8F
	/// @DnDArgument : "const" "rm_Game"
	case rm_Game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 20D9C9B6
		/// @DnDParent : 3F44A836
		/// @DnDArgument : "x" "40"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(40, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 0FA15F32
		/// @DnDParent : 3F44A836
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "8c57e3cb-da40-4d4e-8518-4437f79841f4"
		var l0FA15F32_0 = sprite_get_width(spr_lives);
		var l0FA15F32_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l0FA15F32_2 = __dnd_lives; l0FA15F32_2 > 0; --l0FA15F32_2) {
			draw_sprite(spr_lives, 0, 20 + l0FA15F32_1, 40);
			l0FA15F32_1 += l0FA15F32_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 105C1C7B
	/// @DnDParent : 2D64FB8F
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5FE8D099
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 786EB71C
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "color" "$FF1A1AB2"
		draw_set_colour($FF1A1AB2 & $ffffff);
		var l786EB71C_0=($FF1A1AB2 >> 24);
		draw_set_alpha(l786EB71C_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 249C8C7B
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS ""
		draw_text_transformed(250, 100, string("SPACE ROCKS ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1E7044D5
		/// @DnDParent : 105C1C7B
		draw_set_colour($FFFFFFFF & $ffffff);
		var l1E7044D5_0=($FFFFFFFF >> 24);
		draw_set_alpha(l1E7044D5_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 444ECBE0
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win! ""
		draw_text(250, 200, string("Score 1,000 points to win! ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4BCCCC5D
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with UP/LEFT/RIGHT keys""
		draw_text(250, 230, string("Move with UP/LEFT/RIGHT keys") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 716ED27D
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot ""
		draw_text(250, 260, string("Press SPACE to shoot ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 65BBC696
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "color" "$FFFF330F"
		draw_set_colour($FFFF330F & $ffffff);
		var l65BBC696_0=($FFFF330F >> 24);
		draw_set_alpha(l65BBC696_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 33DC4CB7
		/// @DnDParent : 105C1C7B
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">>PRESS ENTER TO START<<""
		draw_text(250, 350, string(">>PRESS ENTER TO START<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 621F73B3
		/// @DnDParent : 105C1C7B
		draw_set_colour($FFFFFFFF & $ffffff);
		var l621F73B3_0=($FFFFFFFF >> 24);
		draw_set_alpha(l621F73B3_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0AAD34BF
	/// @DnDParent : 2D64FB8F
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0294BC2C
		/// @DnDParent : 0AAD34BF
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7705A39E
		/// @DnDParent : 0AAD34BF
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l7705A39E_0=($FF0000FF >> 24);
		draw_set_alpha(l7705A39E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 51208556
		/// @DnDParent : 0AAD34BF
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE ""
		draw_text_transformed(250, 150, string("YOU LOSE ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 67492F0F
		/// @DnDParent : 0AAD34BF
		draw_set_colour($FFFFFFFF & $ffffff);
		var l67492F0F_0=($FFFFFFFF >> 24);
		draw_set_alpha(l67492F0F_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 51FE8258
		/// @DnDParent : 0AAD34BF
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE:""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE:") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5FC9EF0C
		/// @DnDParent : 0AAD34BF
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>PRESS ENTER TO RESTART<<""
		draw_text(250, 300, string(">>PRESS ENTER TO RESTART<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0B6289C2
		/// @DnDParent : 0AAD34BF
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 207BB937
	/// @DnDParent : 2D64FB8F
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1554577A
		/// @DnDParent : 207BB937
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2E639D2B
		/// @DnDParent : 207BB937
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l2E639D2B_0=($FF0000FF >> 24);
		draw_set_alpha(l2E639D2B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 20B7135F
		/// @DnDParent : 207BB937
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN ""
		draw_text_transformed(250, 150, string("YOU WIN ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2128D785
		/// @DnDParent : 207BB937
		draw_set_colour($FFFFFFFF & $ffffff);
		var l2128D785_0=($FFFFFFFF >> 24);
		draw_set_alpha(l2128D785_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 4A7A98AA
		/// @DnDParent : 207BB937
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE:""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE:") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 22CC8D62
		/// @DnDParent : 207BB937
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>PRESS ENTER TO RESTART<<""
		draw_text(250, 300, string(">>PRESS ENTER TO RESTART<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 34F64472
		/// @DnDParent : 207BB937
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}