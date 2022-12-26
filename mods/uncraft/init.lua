allow_items = {
	"goodtorch:flashlight_off",
	"goodtorch:flashlight_on",
	"ssp_base:computer",
	"ssp_base:computer_broken_internal",
	"ssp_base:computer_broken_external",
	"ssp_base:computer_broken_internal_external",
}

local tabledef = {

	description = "Uncraft Table",

    	groups = {indestructible = 1},

	tiles = {
		"uncraft_table_top.png","uncraft_table_bottom.png",
		"uncraft_table_side.png", "uncraft_table_side.png",
		"uncraft_table_front.png", "uncraft_table_front.png"
	},

	-- make it slightly large

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5625, -0.5625, 0.5625, 0.625, 0.5625},
		},
	},
	collison_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5625, -0.5625, 0.5625, 0.625, 0.5625},
		},
	},

	can_dig = function(pos, player)

		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()

		if inv:is_empty("slot") then

			if not minetest.is_protected(pos, player:get_player_name()) then
				return true
			end
		end
	end,

	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		return stack:get_count()
	end,

	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		return stack:get_count()
	end,

    on_receive_fields = function(pos, formname, fields, sender)

        if fields.bouton then
            local meta = minetest.get_meta(pos)
            local inv = meta:get_inventory()
            local playerInv = sender:get_inventory()
            local playerName = sender:get_player_name()
            local input = inv:get_stack("slot", 1):get_name()
            local craft = minetest.get_craft_recipe(input)

	minetest.sound_play("uncraft", {
		gain = 1.0,
	})
            
            if craft.items == nil or input == "" or table_contains(allow_items, input) == false then     
            else    
                for i=1, 9 do
                    if craft.items[i] == "group:stick" then 
                        craft.items[i] = "default:stick"
                    end
                    if craft.items[i] == "group:wood" then 
                        craft.items[i] = "default:wood"
                    end
                    if craft.items[i] == "group:stone" then 
                        craft.items[i] = "default:cobble"
                    end
                    itemStackToAdd = playerInv:add_item("main", craft.items[i])
                    if not itemStackToAdd:is_empty() then
                        local pos_drop = minetest.get_player_by_name(playerName):get_pos()
                        minetest.spawn_item(pos_drop, craft.items[i]) 
                    end
                end
                inv:set_stack("slot", 1, "")
            end
        end
    end,

	on_rightclick = function(pos)
	
	minetest.sound_play("ssp_crate_dug", {
		gain = 0.2,
	})

		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()

		inv:set_size("slot", 1)

		meta:set_string("formspec",
        "size[8.5,10]"
        .."list[current_player;main;0.2,6;8,4;0]"
        .."list[context;slot;3.8,2;1,1]"
        .."label[3.3,0.4;Uncraft Table]"
        .."button[2.8,4;3,0.8;bouton;Uncraft]"
        .."listring[context;slot]")
    end,

	on_blast = function() end
}

minetest.register_node("uncraft:uncrafttable", tabledef)

function table_contains(table, element)
    for _, value in pairs(table) do
      if value == element then
        return true
      end
    end
    return false
  end


--- UNCRAFT TABLE SPAWN

minetest.register_decoration({
	name = "uncraft:uncrafttable",
	deco_type = "simple",
	place_on = {"ssp_base:metal_flooring"},
	sidelen = 16,
	noise_params = {
			offset = 0.0000001,
			scale = 0.00007,
			spread = {x = 250, y = 250, z = 250},
			seed = 1,
			octaves = 3,
			persist = 0.66
	},
	biomes = {"spacecraft"},
	y_max = 31000,
	y_min = 0,
	decoration = "uncraft:uncrafttable",
	flags = "place_center_x, place_center_z",
})

