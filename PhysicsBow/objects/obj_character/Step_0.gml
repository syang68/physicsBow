if (x < 440 || x > 800) {
    vspeed = 0;
    hspeed = 0;
}

x = clamp(x,15,1350)



 if hp <= 0 {
	instance_destroy()
}


//Movement Handling

//Left movement
if (keyboard_check(ord("D")) and !collision_rectangle(self.bbox_left+1, 
self.bbox_top+sign(jumpSpeed), self.bbox_right+1, self.bbox_bottom+sign(jumpSpeed), 
obj_block, true, true)) {
	if (not isJump and not isAim){
		// Set sprite to walking if not jumping
		sprite_index = spr_character_walk
	}
	if input_accel < 2{
		input_accel += 0.5
	}
	if abs(move_speed + input_accel) > max_input_move {input_accel = 0}
}

// Right movement
else if(keyboard_check(ord("A")) and !collision_rectangle(self.bbox_left-1,
self.bbox_top+sign(jumpSpeed), self.bbox_right-1, self.bbox_bottom+sign(jumpSpeed), 
obj_block, true, true)) { 
	if (not isJump and not isAim){
		// Set sprite to walking if not jumping 
		sprite_index = spr_character_walk
	}
	if input_accel > -2{
		input_accel -= 0.5
	}
	if abs(move_speed + input_accel) > max_input_move {input_accel = 0}
}

//No movement left or right
else{
	if(not isJump and not isAim){
		// Set sprite to idle if not jumping
		sprite_index = spr_character_idle
	}
	input_accel = 0
}


if (not keyboard_check(ord("D")) and not keyboard_check(ord("A")) and move_speed != 0) { move_speed -= sign(move_speed) } //Decceleration— if no input, deccelerate the player.
if acceleration == 0 and move_speed > -1 and move_speed < 1 { move_speed = 0 } //Round move_speed to 0 if it's a decimal between -1 and 1 (leaving this out causes the player to jitter back and forth otherwise)


acceleration = input_accel //Acceleration is determined by both player left/right inputs
if (abs(move_speed) > max_input_move) { acceleration -= sign(move_speed) } //Decellerate the player if they go beyond the max move speed.

move_speed += acceleration //Add acceleration to move_speed
move_speed = clamp(move_speed, -max_move, max_move) //Cap horizontal movement speed
input_accel = clamp(input_accel, -2, 2) //Cap input acceleration


if (!place_meeting(x,y+1,obj_block)) { jumpSpeed += 1 } //If the player is not standing on the ground, accelerate them downwards

if (isJump and instance_place(x,y+1,obj_block)){
	isJump = false
}


//Jumping //TODO SET Jumping Sprite
if (keyboard_check_pressed(vk_space)) {
	if (instance_place(x,y+1,obj_block)) {
		isJump = true
		jumpSpeed = jump_height
		sprite_index = spr_character_jump
		}
} 


//Limit gravity
if abs(jumpSpeed) > max_gravity { jumpSpeed = sign(jumpSpeed)*max_gravity }



//HIGH SPEED COLLISIONS— cast a ray to detect if the player's movement would place them outside a wall, bypassing the normal collision detection.
//If it does, move them up against that wall by incrementing their position along that raycast until they hit it.
if (collision_line(x,y,x+move_speed,y+jumpSpeed,obj_block,true,true)) { 
	var dir = point_direction(x,y,x+move_speed,y+jumpSpeed)
	while !(place_meeting(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir),obj_block)) { 
		x += lengthdir_x(1,dir)
		y += lengthdir_y(1,dir)
		}
	move_speed = 0
	jumpSpeed = 0
}

//collision handling
//this block may not be needed, due to the above collision_line block. May be able to handle niche cases 
if (place_meeting(x+move_speed, y, obj_block)) {
	x+=move_speed
	while (place_meeting(x,y,obj_block)) { x-=sign(move_speed) }
	move_speed = 0
}
if (place_meeting(x, y + jumpSpeed, obj_block)) {
	y+=jumpSpeed
	while (place_meeting(x,y,obj_block)) { y-=sign(jumpSpeed) }
	jumpSpeed = 0
}
if (place_meeting(x+move_speed, y+jumpSpeed, obj_block)) {
	x+=move_speed
	y+=jumpSpeed
	while (place_meeting(x,y,obj_block)) { 
		x-=sign(move_speed)
		y-=sign(jumpSpeed) 
		}
	jumpSpeed = 0
	move_speed = 0
}



//Change x and y by their respective movement variables. Effectively the same as using hspeed/vspeed
x += move_speed 
y += jumpSpeed

// Flips sprite based on side the mouse is on
if (mouse_x < x) {
    image_xscale = -1;
} else {
    image_xscale = 1;
}

if (mouse_check_button(mb_left)){
	if arrow_speed < arrow_max_speed{
		arrow_speed += arrow_charge_power;
	}
	arrow_angle = point_direction(x,y, mouse_x, mouse_y)
}

if(arrow_type == 2 || arrow_type == 3 ){
	if ((portal_arrow_1_amount <= 0) && (portal_arrow_2_amount <= 0)){
		arrow_type = 0
	}
}
if(arrow_type == 1){
	if (gravity_arrow_amount <= 0){
		arrow_type = 0
	}
}
if(normal_arrow_amount <= 0){
	normal_arrow_amount = 0
}

audio_listener_position(x, y, 0);
