
local S = mobs.intllib

-- mob spawner

local spawner_default = "mobs:spider 10 15 0 0 0"

minetest.register_node("mobs:spawner", {
	description = S("Mutant Spider Egg"),
	tiles = {
		"mobs_spawner_top.png",
		"ssp_storage_bin_top.png",
		"mobs_spawner.png",
		"mobs_spawner.png",
		"mobs_spawner.png",
		"mobs_spawner.png"
	},
	groups = {hand_breakable = 2},
	walkable = true,
	drop = ""
})


local max_per_block = tonumber(minetest.settings:get("max_objects_per_block") or 99)

-- spawner abm
minetest.register_abm({
	label = "Mob spawner node",
	nodenames = {"mobs:spawner"},
	interval = 5,
	chance = 4,
	catch_up = false,

	action = function(pos, node, active_object_count, active_object_count_wider)

		-- return if too many entities already
		if active_object_count_wider >= max_per_block then
			return
		end

		local mob = "mobs:spider"

		
		local pos2 = pos
		pos2.y = pos2.y + 0.5

		minetest.add_entity(pos2, mob)

	end
})
