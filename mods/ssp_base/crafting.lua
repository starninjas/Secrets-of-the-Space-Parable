--### !SPOILERS! ##--

-- Freeze-dried Meal

minetest.register_craft({
	output = "ssp_base:freeze_dried_meal",
	recipe = {
		{"group:food_cube", "group:food_cube"},
		{"group:food_cube", "group:food_cube"},
	}
})

-- Coal Stack

minetest.register_craft({
	output = "ssp_base:computer",
	recipe = {
		{"ssp_base:red_wire", "ssp_base:red_wire", "ssp_base:red_wire"},
		{"ssp_base:blue_wire", "ssp_base:computer_broken_internal", "ssp_base:blue_wire"},
		{"ssp_base:yellow_wire", "ssp_base:yellow_wire", "ssp_base:yellow_wire"},
	}
})

--- COMPUTERS

-- Internal

minetest.register_craft({
	output = "ssp_base:coal_stack",
	recipe = {
		{"ssp_base:coal_lump", "ssp_base:coal_lump", "ssp_base:coal_lump"},
		{"ssp_base:coal_lump", "ssp_base:coal_lump", "ssp_base:coal_lump"},
		{"ssp_base:coal_lump", "ssp_base:coal_lump", "ssp_base:coal_lump"},
	}
})

-- External

minetest.register_craft({
	output = "ssp_base:computer",
	recipe = {
		{"ssp_base:moniter_screen", "ssp_base:computer_broken_external"},
	}
})

-- Int. + Ext.

minetest.register_craft({
	output = "ssp_base:computer_broken_external",
	recipe = {
		{"ssp_base:red_wire", "ssp_base:red_wire", "ssp_base:red_wire"},
		{"ssp_base:blue_wire", "ssp_base:computer_broken_internal_external", "ssp_base:blue_wire"},
		{"ssp_base:yellow_wire", "ssp_base:yellow_wire", "ssp_base:yellow_wire"},
	}
})

minetest.register_craft({
	output = "ssp_base:computer_broken_internal",
	recipe = {
		{"ssp_base:moniter_screen", "ssp_base:computer_broken_internal_external"},
	}
})

--- MORE

-- Flashlight

minetest.register_craft({
	output = "goodtorch:flashlight_off",
	recipe = {
		{"ssp_base:red_wire", "ssp_base:red_wire"},
		{"ssp_base:blue_wire","ssp_base:yellow_wire"},
	}
})

minetest.register_craft({
	output = "goodtorch:flashlight_on",
	recipe = {
		{"ssp_base:red_wire", "ssp_base:red_wire"},
		{"ssp_base:blue_wire","ssp_base:yellow_wire"},
	}
})
