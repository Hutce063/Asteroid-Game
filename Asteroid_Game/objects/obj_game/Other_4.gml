/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06A47F74
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_Game"
if(room == rm_Game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 4BCA8C62
	/// @DnDParent : 06A47F74
	/// @DnDArgument : "soundid" "msc_music"
	/// @DnDSaveInfo : "soundid" "33751cd5-53ba-4914-85b2-3278d9aa63af"
	var l4BCA8C62_0 = msc_music;
	if (audio_is_playing(l4BCA8C62_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 33CAF8CD
		/// @DnDParent : 4BCA8C62
		/// @DnDArgument : "soundid" "msc_music"
		audio_stop_sound(msc_music);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7D2609E6
	/// @DnDParent : 06A47F74
	/// @DnDArgument : "soundid" "msc_music"
	/// @DnDArgument : "loop" "1"
	audio_play_sound(msc_music, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2626BB03
	/// @DnDParent : 06A47F74
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 7B967D08
	/// @DnDParent : 06A47F74
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 7E28DB25
		/// @DnDInput : 2
		/// @DnDParent : 7B967D08
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B85D140
		/// @DnDParent : 7B967D08
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5246F57B
			/// @DnDParent : 7B85D140
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width * 0.3"
			var xx = (random_range(0, room_width * 0.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5439163C
		/// @DnDParent : 7B967D08
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5A7C89E3
			/// @DnDParent : 5439163C
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_width * 0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(room_width * 0.7, room_width));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 3B07F932
		/// @DnDInput : 2
		/// @DnDParent : 7B967D08
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EDBCA4F
		/// @DnDParent : 7B967D08
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1A4FE46D
			/// @DnDParent : 3EDBCA4F
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width * 0.3"
			var yy = (random_range(0, room_width * 0.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2B101785
		/// @DnDParent : 7B967D08
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3D346E43
			/// @DnDParent : 2B101785
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_width * 0.7"
			/// @DnDArgument : "max" "room_width"
			var yy = (random_range(room_width * 0.7, room_width));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 746C5DF6
		/// @DnDParent : 7B967D08
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "01968085-feee-4508-8fa0-0f2a81f316f9"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}