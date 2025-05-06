/// @description Insert description here
// You can write your code in this editor
inMotion = false
stuck_on = true
stuck_on_object = other

stick_offset_x = x - other.x
stick_offset_y = y - other.y

gravity = 0
vspeed = other.vspeed
hspeed = other.hspeed
speed = 0

var angle = 0
var threshold = 5;

var top = other.bbox_top
var bottom = other.bbox_bottom
var left = other.bbox_left
var right = other.bbox_right

//var to_follow = other

//
image_angle = image_angle mod 360;
/*
collision_y_offset = sin(image_angle)*18
collision_x_offset = cos(image_angle)*18

if(image_angle < 180){collision_y_offset = -1 * collision_y_offset}
if(image_angle > 90 && image_angle < 270){collision_x_offset = -1 * collision_x_offset}

show_debug_message("Image angle:")
show_debug_message(image_angle)
*/

var d_top = abs(y+collision_y_offset - top);
var d_bottom = abs(y+collision_y_offset - bottom);
var d_left = abs(x+collision_x_offset - left);
var d_right = abs(x+collision_x_offset - right);

// Find the minimum distance
var min_dist = min(d_top, d_bottom, d_left, d_right);

/*
show_debug_message("--------")
show_debug_message(d_top);
show_debug_message(d_bottom);
show_debug_message(d_left);
show_debug_message(d_right);
show_debug_message("Closest:")
show_debug_message(min_dist);

show_debug_message("--------")
*/

//if(teleport_cooldown <=0){
	switch(arrow_type){
		case 1: 
			instance_create_layer(x,y,"Instances", obj_blackhole, {to_follow: stuck_on_object, stick_offset_x : stick_offset_x, stick_offset_y : stick_offset_y});
			instance_destroy()
			break;
	
		case 2:
			
			var height_offset = sprite_get_height(spr_portal_1)/ 2
		
			// Determine which side is closest
			if (min_dist == d_top) {
				angle = 0;
				y = top- 2;
				x = clamp(x,left- height_offset, right - height_offset )
				y_teleport_offset = -5;
				show_debug_message("Hit Top");
			}
			else if (min_dist == d_bottom) {
				angle = 180;
				y = bottom + 2;
				x = clamp(x, left- height_offset, right - height_offset);
				y_teleport_offset = 5;
				show_debug_message("Hit Bottom");
			}
			else if (min_dist == d_right) {
				angle = 270;
				x = right + 2;
				y = clamp(y, top - height_offset, bottom - height_offset);
				x_teleport_offset = 5;
				show_debug_message("Hit Right");
			}
			else { // Left side is closest
				angle = 90;
				x = left - 2;
				y = clamp(y, top - height_offset, bottom - height_offset);
				x_teleport_offset = -5;
				show_debug_message("Hit Left");
			}
	
			if (instance_exists(obj_portal_1)){
				with (obj_portal_1){
					instance_destroy();
				}
				
				instance_create_layer(x,y,"Instances", obj_portal_1, 
				{image_angle: angle, x_offset: x_teleport_offset, y_offset: y_teleport_offset, to_follow: stuck_on_object, stick_offset_x : stick_offset_x, stick_offset_y : stick_offset_y});
			}
			else{
				instance_create_layer(x,y,"Instances", obj_portal_1, 
				{image_angle: angle, x_offset: x_teleport_offset, y_offset: y_teleport_offset, to_follow: stuck_on_object, stick_offset_x : stick_offset_x, stick_offset_y : stick_offset_y});
			}
			instance_destroy()
			break;
	
		case 3:
			
			height_offset = sprite_get_height(spr_portal_2)/ 2
		
			// Determine which side is closest
			// Determine which side is closest
			if (min_dist == d_top) {
				angle = 0;
				y = top- 2;
				x = clamp(x,left- height_offset, right - height_offset )
				y_teleport_offset = -5;
				show_debug_message("Hit Top");
			}
			else if (min_dist == d_bottom) {
				angle = 180;
				y = bottom + 2;
				x = clamp(x, left- height_offset, right - height_offset);
				y_teleport_offset = 5;
				show_debug_message("Hit Bottom");
			}
			else if (min_dist == d_right) {
				angle = 270;
				x = right + 2;
				y = clamp(y, top - height_offset, bottom - height_offset);
				x_teleport_offset = 5;
				show_debug_message("Hit Right");
			}
			else { // Left side is closest
				angle = 90;
				x = left - 2;
				y = clamp(y, top - height_offset, bottom - height_offset);
				x_teleport_offset = -5;
				show_debug_message("Hit Left");
			}
		
			if (instance_exists(obj_portal_2)){
				with (obj_portal_2){
					instance_destroy();
				}
				
				instance_create_layer(x,y,"Instances", obj_portal_2, 
				{image_angle: angle, x_offset: x_teleport_offset, y_offset: y_teleport_offset, to_follow: stuck_on_object, stick_offset_x : stick_offset_x, stick_offset_y : stick_offset_y});
			}
			else{
				instance_create_layer(x,y,"Instances", obj_portal_2, 
				{image_angle: angle, x_offset: x_teleport_offset, y_offset: y_teleport_offset, to_follow: stuck_on_object, stick_offset_x : stick_offset_x, stick_offset_y : stick_offset_y});
			}
			instance_destroy()
			break;
//	}
}