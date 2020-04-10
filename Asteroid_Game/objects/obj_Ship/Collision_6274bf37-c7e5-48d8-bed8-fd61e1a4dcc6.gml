/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6FE4CF8A
/// @DnDApplyTo : eda3fdfd-c713-48fc-823b-59b9a4d2a812
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 28063720
	/// @DnDParent : 6FE4CF8A
	/// @DnDArgument : "steps" "room_speed"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 41F6B07D
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "09d997b6-2c65-4e58-96c3-8b0919955055"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 446625DD
/// @DnDApplyTo : eda3fdfd-c713-48fc-823b-59b9a4d2a812
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2E77F86D
	/// @DnDParent : 446625DD
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 37142A7E
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 77D18008
/// @DnDArgument : "times" "1000"
repeat(1000)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35D4F85B
	/// @DnDParent : 77D18008
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "dabb60f6-607d-4fd3-8d35-39ed8c601ec7"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}