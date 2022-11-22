
--[[

Copyright (C) 2019 - Auke Kok <sofar@foo-projects.org>

"yolo" is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as
published by the Free Software Foundation; either version 2.1
of the license, or (at your option) any later version.

--]]

local reasontbl = {
	set_hp = "lost their health",
	punch = "got their lights punched out",
	fall = "fell to their death",
	node_damage = "burnt to a crips",
	drown = "swam with the fish",
	respawn = "tried to cheat death"
}

minetest.register_on_dieplayer(function(player, reason)
	local name = player:get_player_name()
	local reasonstr = reasontbl[reason.type] or "expired"
	minetest.chat_send_all(
		"RIP " .. name .. ", who " .. reasonstr)
	local meta = player:get_meta()
	meta:set_int("dead", 1)
	minetest.kick_player(name, "You died on a hardcore server.")
end)

minetest.register_on_joinplayer(function(player)
	local meta = player:get_meta()
	if meta:get_int("dead") == 1 then
		local name = player:get_player_name()
		minetest.kick_player(name, "You died on a hardcore server.")
	end
end)
