/// @description Insert description here
// You can write your code in this editor

image_angle += rotating_speed

move_wrap(true, true, 25)
hspeed = clamp(hspeed, -5, 5)
vspeed = clamp(vspeed, -5, 5)

// Check objects in set proximity and give attractive force or speed to that object


// Get a list of objects within the radius
// Create a ds_list for storing instances in range
var gravity_num = collision_circle_list(x, y, proximity_radius, obj_arrow, false, true, gravity_list, true);
var gravity_num2 = collision_circle_list(x, y, proximity_radius, obj_asteroid, false, true, gravity_list, true);
var gravity_num3 = collision_circle_list(x, y, proximity_radius, obj_blackhole_moving, false, true, gravity_list, true);


gravity_num = gravity_num + gravity_num2 + gravity_num3

// Ensure gravity_list has objects
if (gravity_num > 0) {
    for (var i = 0; i < gravity_num; i++) {
        var obj = ds_list_find_value(gravity_list, i); // Correct way to access ds_list values

        if (instance_exists(obj)) { // Ensure the object still exists
			
			obj.inMotion = true
			obj.stuck_on = false
			
            // Calculate direction to the black hole
            var dir = point_direction(obj.x, obj.y, x, y);

            // Calculate distance
            var dist = point_distance(obj.x, obj.y, x, y);

            // Apply attraction force (stronger when closer)
            var force = clamp(max_gravity / (dist + 1), 0, max_gravity); // Adjust force strength as needed
			//var force = exp(-dist / 50) * max_gravity
			
	
            // Apply speed towards the black hole
            obj.hspeed += lengthdir_x(force, dir);
            obj.vspeed += lengthdir_y(force, dir);
			
			//Instead of adding a speed cap, need to add an event horizon where 
			//event horizon radius distance is determined by image_scale and when 
			//an object is inside this limit it goes to the center and gets destroyed
			
			// Apply a speed cap (when close enough to the black hole)
			//var speed_cap = 0.5; // Maximum speed allowed near the black hole
			if (dist < image_xscale * image_yscale * 5) { // Adjust this distance threshold for when to cap speed
				/*
			    var current_speed = point_distance(0, 0, obj.hspeed, obj.vspeed);
			    if (current_speed > speed_cap) {
			        //var angle = point_direction(0, 0, obj.hspeed, obj.vspeed);
			        //obj.hspeed = lengthdir_x(speed_cap, angle);
			        //obj.vspeed = lengthdir_y(speed_cap, angle);
					instance_destroy(obj);
					image_xscale += .01
					image_yscale += .01
					proximity_radius += 1
					max_gravity += 1
					rotating_speed += .25
			    }
				*/
				instance_destroy(obj);
				image_xscale += .01
				image_yscale += .01
				proximity_radius += 1
				max_gravity += 1
				rotating_speed += .25
			}
        }
    }
}


// Destroy the ds_list after using it to avoid memory leaks
ds_list_clear(gravity_list);



if (to_follow != noone){
	//vspeed = to_follow.vspeed
	//hspeed = to_follow.hspeed
	
	x = to_follow.x + stick_offset_x
	y = to_follow.y + stick_offset_y
}

	
