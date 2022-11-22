-- The hand
-- Override the hand item registered in the engine in builtin/game/register.lua
minetest.override_item("", {
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			hand_breakable = {times={[1]=8.00, [2]=15.00}, uses=0, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})

--
-- TOOLS
--

minetest.register_tool("ssp_base:pistol_drill", {
	description = "Pistol Drill",
	inventory_image = "ssp_pistol_drill.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			hand_breakable = {times={[1]=4.00, [2]=7.0}, uses=10, maxlevel=1},
			tool_breakable = {times={[1]=10.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})

minetest.register_tool("ssp_base:wrench", {
	description = "Wrench",
	inventory_image = "ssp_wrench.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			hand_breakable = {times={[1]=6.00, [2]=12.0}, uses=15, maxlevel=1},
			tool_breakable = {times={[1]=8.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
})