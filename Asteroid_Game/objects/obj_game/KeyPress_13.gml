/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 20D46361
/// @DnDArgument : "expr" "room"
var l20D46361_0 = room;
switch(l20D46361_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7CA4496B
	/// @DnDParent : 20D46361
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 551E1711
		/// @DnDParent : 7CA4496B
		/// @DnDArgument : "room" "rm_Game"
		/// @DnDSaveInfo : "room" "6023ff5e-2eed-48a2-8f79-53c0b4770cb1"
		room_goto(rm_Game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0392C4DB
	/// @DnDParent : 20D46361
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 5E959833
		/// @DnDParent : 0392C4DB
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 46948524
	/// @DnDParent : 20D46361
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 3759D162
		/// @DnDParent : 46948524
		game_restart();
		break;
}