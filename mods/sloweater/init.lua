local EATING_DELAY = 3 -- time in seconds player must wait before being allowed to eat again

minetest.register_on_item_eat(function(hp_change, replace_with_item, itemstack, user, pointed_thing)
	local last_eat_time = user:get_attribute("last_eat_time")
	local can_eat = true
	if last_eat_time ~= nil then
		last_eat_time = tonumber(last_eat_time)
	end
	if type(last_eat_time) == "number" then
		local current_time = minetest.get_gametime()
		if current_time - last_eat_time < EATING_DELAY then
			can_eat = false
		end
	end
	if can_eat then
		user:set_attribute("last_eat_time", minetest.get_gametime())
		local def = itemstack:get_definition()
		local eat_sound
		if def.sounds and def.sounds.eat then
			eat_sound = def.sounds.eat
		else
			eat_sound = { name = "sloweater_eat_generic", gain = 1 }
		end
		minetest.sound_play(eat_sound, {pos=user:getpos(), max_hear_distance = 16})
		return nil
	else
		return itemstack
	end
end)
