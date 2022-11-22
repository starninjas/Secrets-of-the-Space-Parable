--
-- Sounds
--

function ssp_base.metal_sound(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "ssp_metal_footstep", gain = 1.0}
	return table
end

function ssp_base.canister_sound(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "ssp_metal_footstep", gain = 1.0}
	table.place = table.place or
			{name = "ssp_metal_footstep", gain = 1.0, pitch = 0.8}
	table.dig = table.dig or
			{name = "ssp_canister_dig", gain = 1.0}
	table.dug = table.dug or
			{name = "ssp_canister_dug", gain = 1.0, pitch = 0.8}
	return table
end

function ssp_base.bin_sound(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "ssp_metal_footstep", gain = 1.0}
	table.dig = table.dig or
			{name = "ssp_canister_dig", gain = 1.0, pitch = 0.7}
	table.dug = table.dug or
			{name = "ssp_crate_dug", gain = 0.5}
	return table
end

function ssp_base.crate_sound(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "ssp_metal_footstep", gain = 1.0}
	table.dig = table.dig or
			{name = "ssp_crate_dig", gain = 0.3, pitch = 0.7}
	table.dug = table.dug or
			{name = "ssp_crate_dug", gain = 0.5}
	return table
end

function ssp_base.cabinet_sound(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "ssp_metal_footstep", gain = 1.0}
	table.dig = table.dig or
			{name = "ssp_cabinet_dig", gain = 0.5, pitch = 0.9}
	table.dug = table.dug or
			{name = "ssp_canister_dug", gain = 0.7, pitch = 0.5}
	return table
end

function ssp_base.coal_sound(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "ssp_coal_dig", gain = 0.4, pitch = 0.8}
	table.place = table.place or
			{name = "ssp_coal_dig", gain = 0.3}
	table.dig = table.dig or
			{name = "ssp_coal_dig", gain = 0.4}
	table.dug = table.dug or
			{name = "ssp_coal_dug", gain = 0.5}
	return table
end



--
-- Misc
--

--- DIG UPWARDS (from Minetest Game)

function ssp_base.dig_up(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name then
		minetest.node_dig(np, nn, digger)
	end
end