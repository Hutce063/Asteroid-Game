/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F9B23D9
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_Game"
if(room == rm_Game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3497CFC6
	/// @DnDParent : 0F9B23D9
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 764A0FAA
		/// @DnDParent : 3497CFC6
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "3179896b-5952-4a40-81c2-02ec506afea7"
		audio_play_sound(snd_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0B28FB01
		/// @DnDParent : 3497CFC6
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "30cd357e-34b5-4f06-bf50-1d7337dcf73e"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 5AA6FB4D
	/// @DnDParent : 0F9B23D9
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 236CC347
		/// @DnDParent : 5AA6FB4D
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "29b0c059-e840-4b7b-81fa-25b32e408917"
		audio_play_sound(snd_lose, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4F2842BB
		/// @DnDParent : 5AA6FB4D
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "77014236-ea91-485f-bf4f-5983ffa79f4e"
		room_goto(rm_gameover);
	}
}