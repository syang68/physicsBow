/// @description Insert description here
// You can write your code in this editor


// Vector between centers
var dx = x - other.x;
var dy = y - other.y;

// Distance squared
var dist_sq = dx * dx + dy * dy;
if (dist_sq == 0) exit; // avoid divide-by-zero

// Relative velocity
var dvx = hspeed - other.hspeed;
var dvy = vspeed - other.vspeed;

// Dot product (velocity projected on collision axis)
var dot = dvx * dx + dvy * dy;
if (dot > 0) exit; // they're moving apart

// Masses based on scaling
var m1 = image_xscale * image_yscale;
var m2 = other.image_xscale * other.image_yscale;

// Collision impulse scalar
var collision_scale = (2 * dot) / ((m1 + m2) * dist_sq);

var cx = collision_scale * dx;
var cy = collision_scale * dy;

// Apply the impulses to both asteroids
hspeed -= (cx * m2);
vspeed -= (cy * m2);

other.hspeed += (cx * m1);
other.vspeed += (cy * m1);


// --- Angular momentum approximation ---
var r_vec_x = dx;
var r_vec_y = dy;
var r_len = point_distance(0, 0, r_vec_x, r_vec_y);

// Normalize contact direction
var nx = r_vec_x / r_len;
var ny = r_vec_y / r_len;

// Tangent vector (perpendicular to normal)
var tx = -ny;
var ty = nx;

// Relative tangential velocity at point of contact
var v1_tangent = hspeed * tx + vspeed * ty;
var v2_tangent = other.hspeed * tx + other.vspeed * ty;
var delta_vt = v1_tangent - v2_tangent;

// Apply a portion of that to rotation speed
// These constants scale how strongly spin is affected
var spin_factor = 0.1;
rotation_speed -= delta_vt * spin_factor;
other.rotation_speed += delta_vt * spin_factor;


