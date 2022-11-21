-- gave_initial_stuff/init.lua

local stuff_string = minetest.settings:get("initial_stuff") or
		"goodtorch:flashlight_off"

give_initial_stuff = {
	items = {}
}

function give_initial_stuff.give(player)
	minetest.log("action",
			"Giving initial stuff to player " .. player:get_player_name())
	local inv = player:get_inventory()
	for _, stack in ipairs(give_initial_stuff.items) do
		inv:add_item("main", stack)
	end
end

function give_initial_stuff.add(stack)
	give_initial_stuff.items[#give_initial_stuff.items + 1] = ItemStack(stack)
end

function give_initial_stuff.clear()
	give_initial_stuff.items = {}
end

function give_initial_stuff.add_from_csv(str)
	local items = str:split(",")
	for _, itemname in ipairs(items) do
		give_initial_stuff.add(itemname)
	end
end

function give_initial_stuff.set_list(list)
	give_initial_stuff.items = list
end

function give_initial_stuff.get_list()
	return give_initial_stuff.items
end

give_initial_stuff.add_from_csv(stuff_string)
minetest.register_on_newplayer(give_initial_stuff.give)

