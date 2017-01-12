--  default textures are here:
--  https://github.com/minetest/minetest_game/tree/master/mods/default/textures
--[[
packed_things.config = packed_things.config or Settings(minetest.get_worldpath().."/packed_things.conf")

local conf_table = packed_things.config:to_table()

local defaults = {
	enable_cobble = "true",
	enable_dirt = "true",
	enable_sand = "true",
	enable_desert_sand = "true",
}

for k, v in pairs(defaults) do
	if conf_table[k] == nil then
		packed_things.config:set(k, v)
	end
end
]]--

minetest.register_node("packed_things:packed_cobble", {
	description = "Packed Cobble",
	tiles = {"cobble1.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_cobble_2x", {
	description = "2x Packed Cobble",
	tiles = {"cobble2.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_cobble_3x", {
	description = "3x Packed Cobble",
	tiles = {"cobble3.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_cobble_4x", {
	description = "4x Packed Cobble",
	tiles = {"cobble4.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_cobble_5x", {
	description = "5x Packed Cobble",
	tiles = {"cobble5.png"},
	groups = {cracky=2,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_cobble_6x", {
	description = "6x Packed Cobble",
	tiles = {"cobble6.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_cobble_7x", {
	description = "7x Packed Cobble",
	tiles = {"cobble7.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_cobble_8x", {
	description = "Ultra Packed Cobble",
	tiles = {"cobble8.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})

-- if moreblocks is installed, need to convert from cobble_compressed to my packed_cobble

if minetest.get_modpath("moreblocks") then
minetest.register_craft({
	output = 'packed_things:packed_cobble 2',
	recipe = {
		{'moreblocks:cobble_compressed', 'moreblocks:cobble_compressed'}
	}
})
minetest.register_craft({
	output = 'moreblocks:cobble_compressed 2',
	recipe = {
		{'packed_things:packed_cobble', 'packed_things:packed_cobble'}
	}
})
else
minetest.register_craft({
	output = 'packed_things:packed_cobble',
	recipe = {
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'},
		{'default:cobble', 'default:cobble', 'default:cobble'}
	}
})
end


-- pack the cobble items

minetest.register_craft({
	output = 'packed_things:packed_cobble_2x',
	recipe = {
		{'packed_things:packed_cobble', 'packed_things:packed_cobble', 'packed_things:packed_cobble'},
		{'packed_things:packed_cobble', 'packed_things:packed_cobble', 'packed_things:packed_cobble'},
		{'packed_things:packed_cobble', 'packed_things:packed_cobble', 'packed_things:packed_cobble'}
	}
})
local nxt=0
for i=2,7,1 do
	nxt=i+1
	minetest.register_craft({
		output = 'packed_things:packed_cobble_'..nxt..'x',
		recipe = {
			{'packed_things:packed_cobble_'..i..'x', 'packed_things:packed_cobble_'..i..'x', 'packed_things:packed_cobble_'..i..'x'},
			{'packed_things:packed_cobble_'..i..'x', 'packed_things:packed_cobble_'..i..'x', 'packed_things:packed_cobble_'..i..'x'},
			{'packed_things:packed_cobble_'..i..'x', 'packed_things:packed_cobble_'..i..'x', 'packed_things:packed_cobble_'..i..'x'}
		}
	})
end

-- unpack the cobble items

minetest.register_craft({
	output = 'default:cobble 9',
	recipe = {
		{'packed_things:packed_cobble'}
	}
})

minetest.register_craft({
	output = 'packed_things:packed_cobble 9',
	recipe = {
		{'packed_things:packed_cobble_2x'}
	}
})

for i=2,7,1 do
	nxt=i+1

	minetest.register_craft({
		output = 'packed_things:packed_cobble_'..i..'x 9',
		recipe = {
			{'packed_things:packed_cobble_'..nxt..'x'}
		}
	})
end

--  -- --    DIRT sequence

minetest.register_node("packed_things:packed_dirt", {
	description = "Packed Dirt",
	tiles = {"dirt1.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_dirt_2x", {
	description = "2x Packed Dirt",
	tiles = {"dirt2.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_dirt_3x", {
	description = "3x Packed Dirt",
	tiles = {"dirt3.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_dirt_4x", {
	description = "4x Packed Dirt",
	tiles = {"dirt4.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_dirt_5x", {
	description = "5x Packed Dirt",
	tiles = {"dirt5.png"},
	groups = {cracky=2,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_dirt_6x", {
	description = "6x Packed Dirt",
	tiles = {"dirt6.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_dirt_7x", {
	description = "7x Packed Dirt",
	tiles = {"dirt7.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_dirt_8x", {
	description = "Ultra Packed Dirt",
	tiles = {"dirt8.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})

-- pack the dirt series

minetest.register_craft({
	output = 'packed_things:packed_dirt',
	recipe = {
		{'default:dirt', 'default:dirt', 'default:dirt'},
		{'default:dirt', 'default:dirt', 'default:dirt'},
		{'default:dirt', 'default:dirt', 'default:dirt'}
	}
})
minetest.register_craft({
	output = 'packed_things:packed_dirt_2x',
	recipe = {
		{'packed_things:packed_dirt', 'packed_things:packed_dirt', 'packed_things:packed_dirt'},
		{'packed_things:packed_dirt', 'packed_things:packed_dirt', 'packed_things:packed_dirt'},
		{'packed_things:packed_dirt', 'packed_things:packed_dirt', 'packed_things:packed_dirt'}
	}
})
local nxt=0
for i=2,7,1 do
	nxt=i+1
	minetest.register_craft({
		output = 'packed_things:packed_dirt_'..nxt..'x',
		recipe = {
			{'packed_things:packed_dirt_'..i..'x', 'packed_things:packed_dirt_'..i..'x', 'packed_things:packed_dirt_'..i..'x'},
			{'packed_things:packed_dirt_'..i..'x', 'packed_things:packed_dirt_'..i..'x', 'packed_things:packed_dirt_'..i..'x'},
			{'packed_things:packed_dirt_'..i..'x', 'packed_things:packed_dirt_'..i..'x', 'packed_things:packed_dirt_'..i..'x'}
		}
	})
end

-- unpack the dirt items

minetest.register_craft({
	output = 'default:dirt 9',
	recipe = {
		{'packed_things:packed_dirt'}
	}
})

minetest.register_craft({
	output = 'packed_things:packed_dirt 9',
	recipe = {
		{'packed_things:packed_dirt_2x'}
	}
})

for i=2,7,1 do
	nxt=i+1

	minetest.register_craft({
		output = 'packed_things:packed_dirt_'..i..'x 9',
		recipe = {
			{'packed_things:packed_dirt_'..nxt..'x'}
		}
	})
end

-- -- -- the SAND SERIES

minetest.register_node("packed_things:packed_sand", {
	description = "Packed Sand",
	tiles = {"sand32.png^packed1.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_sand_2x", {
	description = "2x Packed Sand",
	tiles = {"sand32.png^packed2.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_sand_3x", {
	description = "3x Packed Sand",
	tiles = {"sand32.png^packed3.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_sand_4x", {
	description = "4x Packed Sand",
	tiles = {"sand32.png^packed4.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_sand_5x", {
	description = "5x Packed Sand",
	tiles = {"sand32.png^packed5.png"},
	groups = {cracky=2,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_sand_6x", {
	description = "6x Packed Sand",
	tiles = {"sand32.png^packed6.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_sand_7x", {
	description = "7x Packed Sand",
	tiles = {"sand32.png^packed7.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_sand_8x", {
	description = "Ultra Packed Sand",
	tiles = {"sand32.png^packed8.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})

-- pack the sand series

minetest.register_craft({
	output = 'packed_things:packed_sand',
	recipe = {
		{'default:sand', 'default:sand', 'default:sand'},
		{'default:sand', 'default:sand', 'default:sand'},
		{'default:sand', 'default:sand', 'default:sand'}
	}
})
minetest.register_craft({
	output = 'packed_things:packed_sand_2x',
	recipe = {
		{'packed_things:packed_sand', 'packed_things:packed_sand', 'packed_things:packed_sand'},
		{'packed_things:packed_sand', 'packed_things:packed_sand', 'packed_things:packed_sand'},
		{'packed_things:packed_sand', 'packed_things:packed_sand', 'packed_things:packed_sand'}
	}
})
local nxt=0
for i=2,7,1 do
	nxt=i+1
	minetest.register_craft({
		output = 'packed_things:packed_sand_'..nxt..'x',
		recipe = {
			{'packed_things:packed_sand_'..i..'x', 'packed_things:packed_sand_'..i..'x', 'packed_things:packed_sand_'..i..'x'},
			{'packed_things:packed_sand_'..i..'x', 'packed_things:packed_sand_'..i..'x', 'packed_things:packed_sand_'..i..'x'},
			{'packed_things:packed_sand_'..i..'x', 'packed_things:packed_sand_'..i..'x', 'packed_things:packed_sand_'..i..'x'}
		}
	})
end

-- unpack the sand items

minetest.register_craft({
	output = 'default:sand 9',
	recipe = {
		{'packed_things:packed_sand'}
	}
})

minetest.register_craft({
	output = 'packed_things:packed_sand 9',
	recipe = {
		{'packed_things:packed_sand_2x'}
	}
})

for i=2,7,1 do
	nxt=i+1

	minetest.register_craft({
		output = 'packed_things:packed_sand_'..i..'x 9',
		recipe = {
			{'packed_things:packed_sand_'..nxt..'x'}
		}
	})
end

-- -- -- the DESERT SAND SERIES

minetest.register_node("packed_things:packed_desert_sand", {
	description = "Packed Desert Sand",
	tiles = {"desert_sand32.png^packed1.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_desert_sand_2x", {
	description = "2x Packed Desert Sand",
	tiles = {"desert_sand32.png^packed2.png"},
	groups = {cracky=3,stone=3},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_desert_sand_3x", {
	description = "3x Packed Desert Sand",
	tiles = {"desert_sand32.png^packed3.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_desert_sand_4x", {
	description = "4x Packed Desert Sand",
	tiles = {"desert_sand32.png^packed4.png"},
	groups = {cracky=2,stone=2},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_desert_sand_5x", {
	description = "5x Packed Desert Sand",
	tiles = {"desert_sand32.png^packed5.png"},
	groups = {cracky=2,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_desert_sand_6x", {
	description = "6x Packed Desert Sand",
	tiles = {"desert_sand32.png^packed6.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_desert_sand_7x", {
	description = "7x Packed Desert Sand",
	tiles = {"desert_sand32.png^packed7.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("packed_things:packed_desert_sand_8x", {
	description = "Ultra Packed Desert Sand",
	tiles = {"desert_sand32.png^packed8.png"},
	groups = {cracky=1,stone=1},
--	sounds = default.node_sound_stone_defaults()
})

-- pack the sand series

local ingred="default:desert_sand";
minetest.register_craft({
	output = 'packed_things:packed_desert_sand',
	recipe = {
		{ingred, ingred, ingred}, {ingred, ingred, ingred}, {ingred, ingred, ingred}
	}
})
local ingred="packed_things:packed_desert_sand";
minetest.register_craft({
	output = 'packed_things:packed_desert_sand_2x',
	recipe = {
		{ingred, ingred, ingred}, {ingred, ingred, ingred}, {ingred, ingred, ingred}
	}
})
local nxt=0
for i=2,7,1 do
	nxt=i+1
	local ingred="packed_things:packed_desert_sand_"..i.."x";
	minetest.register_craft({
		output = 'packed_things:packed_desert_sand_'..nxt..'x',
		recipe = {
		{ingred, ingred, ingred}, {ingred, ingred, ingred}, {ingred, ingred, ingred}
		}
	})
end

-- unpack the sand items

minetest.register_craft({
	output = 'default:desert_sand 9',
	recipe = {
		{'packed_things:packed_desert_sand'}
	}
})

minetest.register_craft({
	output = 'packed_things:packed_desert_sand 9',
	recipe = {
		{'packed_things:packed_desert_sand_2x'}
	}
})

for i=2,7,1 do
	nxt=i+1

	minetest.register_craft({
		output = 'packed_things:packed_desert_sand_'..i..'x 9',
		recipe = {
			{'packed_things:packed_desert_sand_'..nxt..'x'}
		}
	})
end

minetest.log("info", "[packed_things] Done loading.")