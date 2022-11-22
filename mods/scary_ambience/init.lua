--
-- MUSIC
--

local music_player_timer = 0
minetest.register_globalstep(function(dtime)
	music_player_timer = music_player_timer + dtime

	if music_player_timer > 200 then
		music_player_timer = math.random(-120,0)
		for _,player in ipairs(minetest.get_connected_players()) do
			minetest.sound_play("music",{to_player = player:get_player_name(),gain=0.7})	
		end
	end
end)