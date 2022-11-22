--
-- Specfic Items
--


--- STORAGE ITEMS


-- Food Cubes

minetest.register_craftitem("ssp_base:food_cube1", {
	description = "Peanut Butter Food Cube",
	inventory_image = "ssp_food_cube1.png",
	groups = {food_cube = 1},
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("ssp_base:food_cube2", {
	description = "Dates Food Cube",
	inventory_image = "ssp_food_cube2.png",
	groups = {food_cube = 1},
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("ssp_base:food_cube3", {
	description = "Peas Food Cube",
	inventory_image = "ssp_food_cube3.png",
	groups = {food_cube = 1},
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("ssp_base:food_cube4", {
	description = "Cheese Food Cube",
	inventory_image = "ssp_food_cube4.png",
	groups = {food_cube = 1},
	on_use = minetest.item_eat(4),
})

-- Freeze-dried meal

minetest.register_craftitem("ssp_base:freeze_dried_meal", {
	description = "Freeze Dried Meal",
	inventory_image = "ssp_meal.png",
	groups = {food = 1},
	on_use = minetest.item_eat(15),
})

-- Food Tubes

minetest.register_craftitem("ssp_base:fruit_tube1", {
	description = "Applesauce Tube",
	inventory_image = "ssp_fruit_tube1.png",
	groups = {food = 1},
	on_use = minetest.item_eat(6),
})

minetest.register_craftitem("ssp_base:fruit_tube2", {
	description = "Mixed Berries Tube",
	inventory_image = "ssp_fruit_tube2.png",
	groups = {food = 1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("ssp_base:fruit_tube3", {
	description = "Spinach and Kiwi Tube",
	inventory_image = "ssp_fruit_tube3.png",
	groups = {food = 1},
	on_use = minetest.item_eat(4),
})

--- INDUSTRIAL ITEMS

-- Monitor Screen

minetest.register_craftitem("ssp_base:monitor_screen", {
	description = "Monitor Screen",
	inventory_image = "ssp_monitor_screen.png",
})

-- Coal Lump

minetest.register_craftitem("ssp_base:coal_lump", {
	description = "Coal Lump",
	inventory_image = "ssp_coal_lump.png",
})

-- Wires

minetest.register_craftitem("ssp_base:red_wire", {
	description = "Red Wire",
	inventory_image = "ssp_red_wire.png",
})

minetest.register_craftitem("ssp_base:blue_wire", {
	description = "Blue Wire",
	inventory_image = "ssp_blue_wire.png",
})

minetest.register_craftitem("ssp_base:yellow_wire", {
	description = "Yellow Wire",
	inventory_image = "ssp_yellow_wire.png",
})

--- PAPERS

-- Computer Manuel

local function computer_manuel(itemstack, user, pointed_thing)

	local item_name = "ssp_base:computer_manuel"
	
	local player_name = user:get_player_name()
	minetest.sound_play("ssp_page", {to_player = player_name, gain = 1.0})

		local formspec =
		
			"size[18,12.122]" ..
			"background[0,0;18,11;ssp_paper_bg1.png;true]"			
		
		formspec = formspec

		minetest.show_formspec(player_name, item_name, formspec)
			
end

minetest.register_craftitem("ssp_base:computer_manuel", {
	description = "Computer User's Handbook",
	inventory_image = "ssp_paper1.png",
	on_use = computer_manuel
})

-- Engines Manuel

local function engines_manuel(itemstack, user, pointed_thing)

	local item_name = "ssp_base:engines_manuel"
	
	local player_name = user:get_player_name()
	minetest.sound_play("ssp_page", {to_player = player_name, gain = 1.0})

		local formspec =
		
			"size[18,12.122]" ..
			"background[0,0;18,11;ssp_paper_bg2.png;true]"
				
		formspec = formspec

		minetest.show_formspec(player_name, item_name, formspec)
			
end

minetest.register_craftitem("ssp_base:engines_manuel", {
	description = "Engines Manuel",
	inventory_image = "ssp_paper2.png",
	on_use = engines_manuel
})

-- Filter Manuel

local function filter_manuel(itemstack, user, pointed_thing)

	local item_name = "ssp_base:filter_manuel"
	
	local player_name = user:get_player_name()
	minetest.sound_play("ssp_page", {to_player = player_name, gain = 1.0})

		local formspec =
		
			"size[18,12.122]" ..
			"background[0,0;18,11;ssp_paper_bg3.png;true]"
				
		formspec = formspec

		minetest.show_formspec(player_name, item_name, formspec)
			
end

minetest.register_craftitem("ssp_base:filter_manuel", {
	description = "Air Purifier Guide",
	inventory_image = "ssp_paper3.png",
	on_use = filter_manuel
})