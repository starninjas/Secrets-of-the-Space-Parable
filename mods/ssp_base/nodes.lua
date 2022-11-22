
--
-- Spacecraft Building Materials
--

--- Flooring

minetest.register_node("ssp_base:metal_flooring", {
	description = "Metal Flooring",
	tiles = {"ssp_metal_flooring.png"},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),
})

--- Walls

minetest.register_node("ssp_base:white_plate", {
	description = "White Plate",
	tiles = {"ssp_white_plate.png"},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),
})

minetest.register_node("ssp_base:border_block", {
	description = "Border Block",
	tiles = {"ssp_border_block.png"},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),
})

--
-- Specfic Blocks
--

-- Emergency Blocks

minetest.register_node("ssp_base:emergency_box", {
	description = "Emergency Box",
	tiles = {"ssp_emergency_box.png"},
	groups = {hand_breakable = 1},
	sounds = ssp_base.bin_sound(),
	drop = "ssp_base:distress_signal 1"
})

minetest.register_node("ssp_base:distress_signal", {
	description = "Distress Signal",
	tiles = {"ssp_distress_signal.png"},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),
	light_source = 10,
})

---
--- STORAGE BLOCKS
---

--- FOOD CANISTER

minetest.register_node("ssp_base:food_canister", {
	drawtype = "nodebox",
	paramtype2 = "facedir",
	description = "Food Canister",
	tiles = {
		"ssp_food_canister_top.png",
		"ssp_food_canister_top.png",
		"ssp_food_canister_side.png",
		"ssp_food_canister_side.png",
		"ssp_food_canister_side.png",
		"ssp_food_canister_front.png"
	},
	groups = {hand_breakable = 1, falling_node = 1},
	sounds = ssp_base.canister_sound(),
	drop = {
		max_items = 3,
		items = {
			{items = {"ssp_base:food_cube1"}, rarity = 3},
			{items = {"ssp_base:food_cube2"}, rarity = 3},
			{items = {"ssp_base:food_cube3"}, rarity = 2},
			{items = {"ssp_base:food_cube4"}, rarity = 5},
			{items = {"ssp_base:fruit_tube1"}, rarity = 5},
			{items = {"ssp_base:fruit_tube2"}, rarity = 5},
			{items = {"ssp_base:fruit_tube3"}, rarity = 6},
			{items = {"ssp_base:freeze_dried_meal"}, rarity = 9},
		},
	},
})

--- STORAGE BIN

minetest.register_node("ssp_base:storage_bin", {
	drawtype = "nodebox",
	description = "Storage Bin",
	tiles = {
		"ssp_storage_bin_top.png",
		"ssp_food_canister_top.png",
		"ssp_storage_bin_side.png",
		"ssp_storage_bin_side.png",
		"ssp_storage_bin_side.png",
		"ssp_storage_bin_side.png"
	},
	groups = {hand_breakable = 1},
	sounds = ssp_base.bin_sound(),
	drop = {
		max_items = 1,
		items = {
			{items = {"ssp_base:wrench"}, rarity = 8},
			{items = {"ssp_base:pistol_drill"}, rarity = 11},
			{items = {"ssp_base:monitor_screen"}, rarity = 7},
			{items = {"map:mapping_kit"}, rarity = 12},
			{items = {"goodtorch:flashlight_off"}, rarity = 9},
			{items = {"ssp_base:filter"}, rarity = 6},
		},
	},
})


--- COAL CRATE

minetest.register_node("ssp_base:coal_crate", {
	drawtype = "nodebox",
	description = "Coal Crate",
	tiles = {
		"ssp_coal_crate.png",
		"ssp_coal_crate.png",
		"ssp_coal_crate.png",
		"ssp_coal_crate.png",
		"ssp_coal_crate.png",
		"ssp_coal_crate.png"
	},
	groups = {tool_breakable = 1, falling_node = 1},
	sounds = ssp_base.crate_sound(),
	drop = {
		max_items = 12,
		items = {
			{items = {"ssp_base:coal_lump 3"}, rarity = 2},
			{items = {"ssp_base:coal_lump 2"}, rarity = 1},
			{items = {"ssp_base:coal_lump 6"}, rarity = 3},
		},
	},
})

--- FILE CABINET

minetest.register_node("ssp_base:file_cabinet", {
	drawtype = "nodebox",
	paramtype2 = "facedir",
	description = "File Cabinet",
	tiles = {
		"ssp_food_canister_top.png",
		"ssp_food_canister_top.png",
		"ssp_food_canister_top.png",
		"ssp_food_canister_top.png",
		"ssp_food_canister_top.png",
		"ssp_file_cabinet.png"
	},
	groups = {hand_breakable = 2},
	sounds = ssp_base.cabinet_sound(),
	drop = {
		max_items = 3,
		items = {
			{items = {"ssp_base:food_cube1"}, rarity = 4},
			{items = {"ssp_base:food_cube2"}, rarity = 3},
			{items = {"ssp_base:food_cube3"}, rarity = 2},
			{items = {"ssp_base:food_cube4"}, rarity = 5},
			{items = {"ssp_base:fruit_tube1"}, rarity = 6},
			{items = {"ssp_base:fruit_tube2"}, rarity = 6},
			{items = {"ssp_base:fruit_tube3"}, rarity = 7},
		},
	},

	after_dig_node = function(pos, node, metadata, digger)
		ssp_base.dig_up(pos, node, digger)
	end,
})


---
--- INDUSTRIAL BLOCKS
---

--- COMPUTERS

minetest.register_node("ssp_base:computer", {
	description = "Computer",
	tiles = {
		"ssp_computer_top.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_back.png",
		"ssp_computer_front.png"
	},
	groups = {hand_breakable = 1},
	sounds = ssp_base.canister_sound(),

	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 4,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.375},
			{-0.0625, -0.4375, 0.125, 0.0625, 0.0625, 0.25},
			{-0.5, -0.1875, 0, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25},
			{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25},
		}
	}
})

minetest.register_node("ssp_base:computer_broken_internal", {
	description = "Broken Computer",
	tiles = {
		"ssp_computer_top.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_back.png",
		"ssp_computer_broken_internal_front.png"
	},
	groups = {hand_breakable = 1},
	sounds = ssp_base.canister_sound(),

	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.375},
			{-0.0625, -0.4375, 0.125, 0.0625, 0.0625, 0.25},
			{-0.5, -0.1875, 0, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25},
			{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25},
		}
	}
})

minetest.register_node("ssp_base:computer_broken_external", {
	description = "Broken Computer",
	tiles = {
		"ssp_computer_top.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_back.png",
		"ssp_computer_broken_external_front.png"
	},
	groups = {hand_breakable = 1},
	sounds = ssp_base.canister_sound(),

	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 2,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.375},
			{-0.0625, -0.4375, 0.125, 0.0625, 0.0625, 0.25},
			{-0.5, -0.1875, 0, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25},
			{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25},
		}
	}
})

minetest.register_node("ssp_base:computer_broken_internal_external", {
	description = "Broken Computer",
	tiles = {
		"ssp_computer_top.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_base.png",
		"ssp_computer_back.png",
		"ssp_computer_broken_internal_external_front.png"
	},
	groups = {hand_breakable = 1},
	sounds = ssp_base.canister_sound(),

	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.375},
			{-0.0625, -0.4375, 0.125, 0.0625, 0.0625, 0.25},
			{-0.5, -0.1875, 0, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25},
			{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25},
		}
	}
})

--- ENGINES

minetest.register_node("ssp_base:metal_plate", {
	description = "Metal Plate",
	tiles = {"ssp_metal_plate.png"},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),
})

minetest.register_node("ssp_base:engine", {
	description = "Engine",
	light_source = 10,
	tiles = {"ssp_engine.png"},
	groups = {indestructible = 1, coal_buildable = 1},
	sounds = ssp_base.metal_sound(),
})

minetest.register_node("ssp_base:ladder", {
	description = "Ladder",
	drawtype = "signlike",
	tiles = {"ssp_ladder.png"},
	inventory_image = "ssp_ladder.png",
	wield_image = "ssp_ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),
})

-- Coal Stack

minetest.register_node("ssp_base:coal_stack", {
	description = "Coal Stack",
	tiles = {"ssp_coal_stack.png"},
	groups = {hand_breakable = 1, coal_buildable = 1},
	sounds = ssp_base.coal_sound(),
})

--- AIR PURIFIER

minetest.register_node("ssp_base:filter_fan", {
	description = "Filter Fan",
	tiles = {"ssp_filter_fan.png"},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),
})

minetest.register_node("ssp_base:filter", {
	description = "O2 Filter",
	tiles = {"ssp_filter_top.png", "ssp_filter.png", "ssp_filter.png"},
	groups = {hand_breakable = 1},
	sounds = ssp_base.bin_sound(),
})

--- ELECTRICITY GENERATOR

minetest.register_node("ssp_base:electricity_generator_off", {
	description = "Electricity Generator",
	tiles = {
		"ssp_filter.png", -- just using all the random textures
		"ssp_food_canister_top.png",
		"ssp_electricity_generator_side.png",
		"ssp_electricity_generator_side.png",
		"ssp_electricity_generator_side.png",
		"ssp_electricity_generator_front_off.png"
	},
	groups = {indestructible = 1},
	sounds = ssp_base.metal_sound(),

	on_punch = function(pos, node, puncher)

		local name = puncher:get_player_name() or ""

		minetest.sound_play("ssp_crate_dug", {to_player = name, gain = 0.4})
		
		node.name = "ssp_base:electricity_generator_on"
		minetest.swap_node(pos, node)
	end
})

minetest.register_node("ssp_base:electricity_generator_on", {
	description = "Electricity Generator",
	tiles = {
		"ssp_filter.png", -- just using all the random textures
		"ssp_food_canister_top.png",
		"ssp_electricity_generator_side.png",
		"ssp_electricity_generator_side.png",
		"ssp_electricity_generator_side.png",
		"ssp_electricity_generator_front_on.png"
	},
	groups = {hand_breakable = 2, tool_breakable = 1},
	sounds = ssp_base.canister_sound(),
	light_source = 6,
	paramtype2 = "facedir",
})