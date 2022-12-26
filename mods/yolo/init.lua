
--[[

Copyright (C) 2019 - Auke Kok <sofar@foo-projects.org>

"yolo" is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as
published by the Free Software Foundation; either version 2.1
of the license, or (at your option) any later version.

--]]

if minetest.is_creative_enabled("") then

else

minetest.register_on_dieplayer(function(player, reason)
	local name = player:get_player_name()
	local meta = player:get_meta()
	meta:set_int("dead", 1)
	minetest.kick_player(name, "You've been knocked out.")
end)

minetest.register_on_joinplayer(function(player)
	local meta = player:get_meta()
	if meta:get_int("dead") == 1 then
		local name = player:get_player_name()
		minetest.kick_player(name, "You've been knocked out.")
	end
end)


end