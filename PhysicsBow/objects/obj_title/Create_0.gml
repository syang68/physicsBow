/// @description Insert description here

red = random_range(0,255)
green = random_range(0,255)
blue = random_range(0,255)

font_enable_effects(fnt_title, true, {
	outlineEnable:true,
	outlineDistance: 5,
	//outlineColor: make_color_rgb(r,g,b)
	outlineColor: c_navy
})

color_lerp_speed = 0.01