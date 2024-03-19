function get_input(){
	
	#region Keyboard Keys
	// Movement
	keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
	keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
	keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
	keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
	keyJump = keyboard_check(vk_space);
	keyJumpPressed = keyboard_check_pressed(vk_space);
	
	// Interaction
	keyInteract = keyboard_check(ord("E")) || keyboard_check(ord("X"));
	keyPause = keyboard_check_pressed(vk_escape);
	
	// Attacking
	keyAttack = mouse_check_button(mb_left);
	keyAim = mouse_check_button(mb_right);
	#endregion
	
	// Controller Check
	
	
	// Controller Keys
}