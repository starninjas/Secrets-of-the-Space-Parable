--- NOTE: THE CODE OF INIT IS ALL FROM MINETEST GAME. CHANGES MADE BY STARNINJAS FOR SECRETS OF THE SPACE PARABLE

ssp_base = {}

--- on_joinplayers functions
minetest.register_on_joinplayer(function(player)
	-- Set formspec prepend
	local formspec = [[
			bgcolor[#080808BB;true]
			listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF] ]]
	local name = player:get_player_name()
	local info = minetest.get_player_information(name)
	if info.formspec_version > 1 then
		formspec = formspec .. "background9[5,5;1,1;gui_formbg.png;true;10]"
	else
		formspec = formspec .. "background[5,5;1,1;gui_formbg.png;true]"
	end
	player:set_formspec_prepend(formspec)

	-- Set hotbar textures
	player:hud_set_hotbar_image("gui_hotbar.png")
	player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")

	-- Set sky
	player:set_sky(000000, "plain", {})
	player:set_clouds({density = 0})
	player:override_day_night_ratio(0)
end)

function ssp_base.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

ssp_base.gui_survival_form = "size[8,8.5]"..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			ssp_base.get_hotbar_bg(0,4.25)

-- Load files
local ssp_base_path = minetest.get_modpath("ssp_base")

dofile(ssp_base_path.."/crafting.lua")
dofile(ssp_base_path.."/functions.lua")
dofile(ssp_base_path.."/items.lua")
dofile(ssp_base_path.."/tools.lua")
dofile(ssp_base_path.."/nodes.lua")
dofile(ssp_base_path.."/mapgen.lua")
