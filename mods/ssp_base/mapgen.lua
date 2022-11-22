--
-- Aliases for map generators
--

-- All mapgens

minetest.register_alias("mapgen_stone", "ssp_base:metal_flooring")
minetest.register_alias("mapgen_water_source", "ssp_base:metal_flooring")
minetest.register_alias("mapgen_river_water_source", "ssp_base:metal_flooring")

--
-- Spacecraft biome
--

minetest.register_biome({
	name = "spacecraft",
	node_top = "ssp_base:metal_flooring",
	depth_top = 1,
	node_filler = "ssp_base:metal_flooring",
	depth_filler = 1,
	node_stone = "ssp_base:metal_flooring",
	node_water_top = "ssp_base:metal_flooring",
	depth_water_top = 10,
	node_river_water = "ssp_base:metal_flooring",
	node_riverbed = "ssp_base:metal_flooring",
	depth_riverbed = 2,
	node_dungeon = "ssp_base:white_plate",
	node_dungeon_stair = "ssp_base:border_block",
	y_max = 31000,
	y_min = 0,
	heat_point = 0,
	humidity_point = 0,
})

--### NOTE: ENGINES AND AIR PURIFIER ARE BEFORE WALLS, SO WALLS DON'T SPAWN IN THEM.

-- Engines

minetest.register_decoration({
	name = "ssp_base:engines1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.00000000000000001,
			scale = 0.000007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/engines1.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

-- Air Purifier

minetest.register_decoration({
	name = "ssp_base:filter1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.0000000000000000001,
			scale = 0.000007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/filter1.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

minetest.register_decoration({
	name = "ssp_base:filter2",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.0000000000000000001,
			scale = 0.000007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/filter2.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})




--
-- Walls
--

minetest.register_decoration({
	name = "ssp_base:wall1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.01,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 1,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft", "food_spacecraft", "item_spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/wall1.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
})



--
-- Structures
--


--- MOB SPAWNER

minetest.register_decoration({
	name = "ssp_base:spawner",
	deco_type = "simple",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.0000001,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 1,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	decoration = "mobs:spawner",
	flags = "place_center_x, place_center_z",
})

-- Emergency Box

minetest.register_decoration({
	name = "ssp_base:emergency_box",
	deco_type = "simple",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.0000000000000000001,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 1,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	decoration = "ssp_base:emergency_box",
	flags = "place_center_x, place_center_z",
})

-- Electricity Generator

minetest.register_decoration({
	name = "ssp_base:electricity_generator",
	deco_type = "simple",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.00000001,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 1,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	decoration = "ssp_base:electricity_generator_off",
	flags = "place_center_x, place_center_z",
})

-- Food Canisters

minetest.register_decoration({
	name = "ssp_base:canister1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.001,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/canister1.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
})

-- Coal Crates

minetest.register_decoration({
	name = "ssp_base:crates1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.00000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/crates1.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

minetest.register_decoration({
	name = "ssp_base:crates2",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.000000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/crates2.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

minetest.register_decoration({
	name = "ssp_base:crates3",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.0000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/crates3.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

-- Storage Bins

minetest.register_decoration({
	name = "ssp_base:bins1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.00000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/bins1.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

minetest.register_decoration({
	name = "ssp_base:bins2",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.000000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/bins2.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})


-- File Cabinets

minetest.register_decoration({
	name = "ssp_base:cabinet1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.00000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/cabinet1.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

minetest.register_decoration({
	name = "ssp_base:cabinet2",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	fill_ratio = 0.02,
	noise_params = {
			offset = 0.000000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/cabinet2.mts",
	rotation = "random",
	flags = "place_center_x, place_center_z",
	place_offset_y = 1
})

-- Computers

minetest.register_decoration({
	name = "ssp_base:computer1",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.00000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/computer1.mts",
	rotation = "random",
	flags = "place_center_x",
	place_offset_y = 1
})

minetest.register_decoration({
	name = "ssp_base:computer2",
	deco_type = "schematic",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.0000000000000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	schematic = minetest.get_modpath("ssp_base") .. "/schematics/computer2.mts",
	rotation = "random",
	flags = "place_center_x",
	place_offset_y = 1
})


