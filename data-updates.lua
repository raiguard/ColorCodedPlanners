local changes = {
	["blueprint"] = {
		["blueprint"] = {
			selection_cursor_box_type = "electricity",
			alt_selection_cursor_box_type = "electricity",
		},
	},
	["copy-paste-tool"] = {
		["cut-paste-tool"] = {
			selection_cursor_box_type = "not-allowed",
			alt_selection_cursor_box_type = "not-allowed",
		},
		["copy-paste-tool"] = {
			selection_cursor_box_type = "electricity",
			alt_selection_cursor_box_type = "electricity",
		},
	},
	["deconstruction-item"] = {
		["deconstruction-planner"] = {
			selection_cursor_box_type = "not-allowed",
			alt_selection_cursor_box_type = "not-allowed",
		},
	},
	["upgrade-item"] = {
		["upgrade-planner"] = {
			selection_cursor_box_type = "copy",
			alt_selection_cursor_box_type = "copy",
			reverse_selection_cursor_box_type = "entity",
			alt_reverse_selection_cursor_box_type = "entity",
		},
	},
}

for category, items in pairs(changes) do
	local category_data = data.raw[category]
	for name, mods in pairs(items) do
		local item = category_data[name]
		for k, v in pairs(mods) do
			item[k] = v
		end
	end
end

data.raw["utility-sprites"]["default"]["upgrade_mark"].filename = "__ColorCodedPlanners__/graphics/upgrade.png"

-- -- Screenshots simulation

-- data:extend({
-- 	{
-- 		type = "tips-and-tricks-item",
-- 		name = "ccp-screenshotting",
-- 		order = "a",
-- 		simulation = {
-- 			init_update_count = 850,
-- 			init = [[
-- 				local player = game.create_test_player({ name = "Big K" })
-- 				local character = player.character
-- 				character.teleport({ 0, 3 })
-- 				game.camera_player = player

-- 				game.surfaces[1].create_entities_from_blueprint_string({
-- 					string = "0eNqtmNuOmzAQht/F13iFzTF5lWoVOWSSWDU2ss226Yp3r4EuTVuSeLLNVcDwze8Zz0G8k73qobNSe7J9J7Ix2pHtl3fi5EkLNd7zlw7IlkgPLUmIFu14JZyDdq+kPtFWNGepgXIyJETqA3wnWzYkDxHeCu06Yz3dg/JXL/PhNSGgvfQSZjHTxWWn+3YPNtAXhtRHqcMSbc7gfGB3xoXXjB6tBhRl2UuRkEv4V7wUk4n5hZ0D74N6Nz5ooTVvsOvDmvJg4bAblYalo1AOEjLfnqX8MtyYrgNLOyU8BLON6UcHsjRNSGsOk4c8VSAmUYtTXofRL3/thi+7UUYcwp17u8jDHg7SQjMv58mHb03vu3704j/8bOGDCu9Z2VDQYE8XGoIO9igaWDNZzgb5nwaD2H1/PILdOfkDph1//FZM57eCfW+LfArUtc0VcoEgcxS5RJAZilwhyCmKXMeTaxR4Ew/eoMAsjSeXODKLJ1c4Mo8nFzhyFk/OcWRECuLyhCFSEJfb7HcKulYoRZe61Rm1WqsWn7CJr0GeznvTTyWb1a9rNipM1Q3t7HGdZTVS9uae6jLhWcKrVe2bq/7nwPpV9fU1fa3tpPeb+W1iOskNIZSTR0TvTSvGB6lrJOgGaCear2su4gxrs/i8TR7jreKRtzJkcLO7RzLJirXI8jxGK3+ktcB6mX/ey+UTM1n6X0cyaYPOEwhLv50B1GensurJbOaYeD/RuLOYEspRJYKvn6PsiR4dpS57okXHgTm+j8aBM3zrjwPnmOp0K1DFk8Vp5ayGc8+ztbOalfhJIs4FFX6QiAPXmGp6y7eIETjFqMsR2cVQ4PjswnHjkwvniPjcQoU/jx99Uec1Lx6OjrdoyxQp9Y0hMo/vo3+WXFwX9baHYfzMMn2S2V59BErIW+irs9ya5dWGV2VZ1GVdD8NPtcby+w==",
-- 					position = { 0, -1 },
-- 				})

-- 				player.cursor_stack.set_stack({ name = "upgrade-planner", count = 1 })

-- 				game.camera_player_cursor_position = { -7.5, -3.5 }
-- 				game.activate_selection()
-- 				game.camera_player_cursor_position = { 7.4, 4.1 }

-- 				script.on_nth_tick(60, function()
-- 					game.finish_selection()
-- 				end)
-- 			]],
-- 		},
-- 	},
-- })
