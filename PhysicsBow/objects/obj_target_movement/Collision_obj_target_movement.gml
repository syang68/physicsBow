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