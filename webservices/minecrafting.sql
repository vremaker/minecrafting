
CREATE TABLE recipes ( 
    result VARCHAR(250) PRIMARY KEY,
    one VARCHAR(250),
    two VARCHAR(250),
    three VARCHAR(250),
    four VARCHAR(250),
    five VARCHAR(250),
    six VARCHAR(250),
    seven VARCHAR(250),
    eight VARCHAR(250),
    nine VARCHAR(250)
);

CREATE TABLE blocks (
    formal VARCHAR(250) PRIMARY KEY,
    shortname VARCHAR(250),
    descriptions VARCHAR(250)
);

INSERT INTO blocks (formal, shortname, descriptions) 
VALUES("Acacia Log", "acacia-log", "Acacia first started sprouting across our blocky landscapes on 21 October 2013 as part of snapshot 13w43a, and hasn't changed much since."),
      ("Birch Log", "birch-log", "Birch was fadded to the game in January 2011 in version Beta 1.2. They were inspired by the birch trees that grow all over the place in Sweden, where Minecraft is made."),
      ("Jungle Log", "jungle-log", "Before Update 0.9.0, Jungle Wood was a Creative-only Block that could not be Crafted into planks in Survival Mode due to Jungle Trees being non-existent at the time."),
      ("Jungle Planks", "jungle-planks", "Before Update 0.9.0, Jungle Wood was a Creative-only Block that could not be Crafted into planks in Survival Mode due to Jungle Trees being non-existent at the time."),
      ("Spruce Log", "spruce-log", "Spruce was added to the game in Beta 1.2 in January 2011."),
      ("Oak Log", "oak-log", "Oak is the mother-block - the block from which everything else in the game develops."),
      ("Acacia Planks", "acacia-planks", "Acacia first started sprouting across our blocky landscapes on 21 October 2013 as part of snapshot 13w43a, and hasn't changed much since."),
      ("Birch Planks", "birch-planks", "Birch was fadded to the game in January 2011 in version Beta 1.2. They were inspired by the birch trees that grow all over the place in Sweden, where Minecraft is made."),
      ("Spruce Planks", "spruce-planks", "Spruce was added to the game in Beta 1.2 in January 2011."),
      ("Oak Planks", "oak-planks", "Oak is the mother-block - the block from which everything else in the game develops."), 
      ("Bed", "bed", "You can sleep in the day during a thunderstorm."),
      ("Boat", "boat", "Boats travel at fast speeds when on ice, packed ice, and frosted ice. They travel even faster on blue ice."),
      ("Bowl", "bowl", "Bowls can be obtained as a junk item while fishing."),
      ("Chest", "chest", "Chests are one of the few blocks in Minecraft that can generate in all three dimensions."),
      ("Coal", "coal", "Coal is used as fuel, for crafting torches and campfires, or for trading with villagers"),
      ("Cobblestone", "cobblestone", "Cobblestone was one of the first blocks added to Minecraft!"),
      ("Crafting Table", "crafting-table", "The sides of the Crafting Table feature a hammer, saw, and pliers, which are not available in the game."),
      ("Diamond", "diamond", "In real life, diamond is commonly used for industrial purposes, generally as diamond-tipped drill bits and saw blades. Diamonds used for this purpose are typically not of gemstone quality."),
      ("Fence", "fence", "Placing a carpet on top of a fence does not reduce the fence or wall collision box down to one block, it just provides a platform one block high around the fence/wall to make it easier for climbing on the top of the fence."),
      ("Fishing Rod", "fishing-rod", "The player can get into bed after casting a line, and the line remains in the water until the player wakes up and reels it in."),
      ("Furnace", "furnace", "Furnaces function as multiple real-world devices combined into one block: bloomeries and blast furnaces (for smelting ores), ovens (for baking and cooking), charcoal pits (for the charring of wood) and kilns (for baking of clay)."),
      ("Ladder", "ladder", "Like vines, ladders slow the player down when walked through."),
      ("Redstone Dust", "redstone-dust", "The redstone block has 16 * 3^4 = 1296 possible block state combinations, the highest of all blocks."),
      ("Sign", "sign", "The sign texture appears to be a pixelated version of the L is real sign from Super Mario 64."),
      ("Stick", "stick", "A stick is an item used for crafting many tools and items."),
      ("String", "string", "String can be obtained from drops, breaking cobwebs, fishing, and as gifts from cats."),
      ("Torch", "torch", "Torches can be found randomly generated among the supports in an abandoned mineshaft's corridors, various rooms in strongholds, as part of village lamp posts, in the basements of igloos, in woodland mansions, and in pillager outposts"),
      ("Wooden Pickaxe", "wooden-pickaxe", "Wooden pickaxes can be used as a fuel in furnaces, smelting 1 item per wooden pickaxe.‌"),
      ("Wooden Shovel", "wooden-shovel", "Wooden Shovels have 33 uses before they break."),
      ("Wooden Axe", "wooden-axe", "A wooden axe will break a wood block twice as fast as by hand."),
      ("Wooden Hoe", "wooden-hoe", "Wooden hoes can be used as fuel in a furnace."),
      ("Stone Pickaxe", "stone-pickaxe", "The Stone Pickaxe has a durability of 131 uses."),
      ("Stone Shovel", "stone-shovel", "The Stone Shovel has a durability of 131 uses."),
      ("Stone Axe", "stone-axe", "The Stone Axe has a durability of 131 uses."),
      ("Stone Hoe", "stone-hoe", "The Stone Hoe has a durability of 131 uses."),
      ("Golden Pickaxe", "golden-pickaxe", "The Golden Pickaxe has a durability of 32 uses."),
      ("Golden Shovel", "golden-shovel", "The Golden Shovel has a durability of 32 uses"),
      ("Golden Axe", "golden-axe", "The Golden Axe has a durability of 32 uses."),
      ("Golden Hoe", "golden-hoe", "The Golden Hoe has a durability of 32 uses."),
      ("Gold Ingot", "gold-ingot", "Due to gold being soft in reality, tools made from Gold Ingot have the least durability."),
      ("Diamond Pickaxe", "diamond-pickaxe", "The Diamond Pickaxe has a durability of 1561 uses."),
      ("Diamond Shovel", "diamond-shovel", "The Diamond Shovel has a durability of 1561 uses."),
      ("Diamond Axe", "diamond-axe", "The Diamond Axe has a durability of 1561 uses."),
      ("Diamond Hoe", "diamond-hoe", "The Diamond Hoe has a durability of 1561 uses."),
      ("Iron Ingot", "iron-ingot", "The iron ingot is the most versatile item in the game, being used in 34 crafting recipes."),
      ("Flint", "flint", "When a block of gravel is mined, there is a 10% chance for a single piece of flint to drop instead of the gravel block."), 
      ("Flint and Steel", "flint-and-steel", "The name Flint and Steel is inaccurate considering there is no steel in the game and it's made with iron instead."),
      ("Shears", "shears", "Shears are a tool used primarily to shear sheep to get wool and mine a few types of blocks."),
      ("Bucket", "bucket", "An empty bucket fills with water when placed in the fuel slot of a furnace while smelting a wet sponge."),
      ("Clock", "clock", "Clocks are items that display the current in-game time by displaying the sun and the moon's position relative to the horizon."),
      ("Compass", "compass", "Compasses are an item used to point to the world spawn."),
      ("Paper", "paper", "In Java Edition, cartographer villagers may give players with the Hero of the Village effect paper."),
      ("Map", "map", "Since all copies of a map are links to the same file, copying an unfinished map keeps it synchronized with the copy as the player fills it in. Thus, a copy stored in a chest can act as a remote backup."),
      ("Sugarcane", "sugarcane", "By placing more sugar canes on top of a sugar cane plant, it is possible to create tall sugar canes, but do not naturally grow that high."),
      ("Leather", "leather", "Leather is an animal skin used to make item frames, armor and books."),
      ("Leather Cap", "leather-cap", "The Leather Cap can protect the player from 55 hits."),
      ("Leather Tunic", "leather-tunic", "The Leather Tunic can protect the player from 80 hits."),
      ("Leather Leggings", "leather-leggings", "The Leather Leggings can protect the player from 75 hits."),
      ("Leather Boots", "leather-boots", "The Leather Tunic can protect the player from 65 hits."),
      ("Iron Helmet", "iron-helmet", "The Iron Helmet can protect the player from 165 hits."),
      ("Iron Boots", "iron-boots", "The Iron Boots can protect the player from 195 hits."),
      ("Iron Leggings", "iron-leggings", "The Iron Leggings can protect the player from 225 hits."),
      ("Ink Sack", "ink-sack", "Ink sacks are items dropped by squid. They are used to create black dye."),
      ("Iron Chestplate", "iron-chestplate", "The Iron Chestplate can protect the player from 240 hits."),
      ("Iron Pickaxe", "iron-pickaxe", "The Iron Pickaxe has a durability of 250 uses."),
      ("Iron Shovel", "iron-shovel", "The Iron Shovel has a durability of 250 uses."),
      ("Iron Axe", "iron-axe", "The Iron Axe has a durability of 250 uses."),
      ("Iron Hoe", "iron-hoe", "The Iron Hoe has a durability of 250 uses."),
      ("Golden Helmet", "golden-helmet", "The Gold Helmet can protect the player from 77 hits."),
      ("Golden Chestplate", "golden-chestplate","The Golden Chestplate can protect the player from 112 hits."),
      ("Golden Leggings", "golden-leggings", "The Golden Leggings can protect the player from 105 hits."),
      ("Golden Boots", "golden-boots", "The Golden Boots can protect the player from 91 hits."),
      ("Diamond Helmet", "diamond-helmet", "The Diamond Helmet can protect the player from 363 hits."),
      ("Diamond Boots", "diamond-boots", "The Diamond Boots can protect the player from 429 hits."),
      ("Diamond Leggings", "diamond-leggings", "The Diamond Leggings can protect the player from 495 hits."),
      ("Diamond Chestplate", "diamond-chestplate", "The Diamond Chestplate can protect the player from 528 hits."),
      ("Feather","feather", "Feathers are items dropped by chickens and parrots, as well as tamed cats as morning gifts."),
      ("Arrow","arrow", "Arrows are ammunition for bows, crossbows and dispensers. They can be modified to imbue status effects on players and mobs."),
      ("Wooden Sword","wooden-sword", "The Wooden Sword has a damage per second rate of 6.4."),
      ("Stone Sword","stone-sword", "The Stone Sword has a damage per second rate of 8"),
      ("Diamond Sword","diamond-sword", "The Diamond Sword has a damage per second rate of 11.2."),
      ("Gold Sword","gold-sword", "The Gold Sword has a damage rate of 6.4."),
      ("Iron Sword", "iron-sword", "The Gold Sword has a damage rate of 9.6."),
      ("Bow","bow", "Bows were intentionally left unchanged in the Texture Update as to appear to be made of a different wood type from crossbows."),
      ("Shield","shield", "A shield is a tool used for protecting the player against attacks."),
      ("Tripwire Hook","tripwire-hook", "A tripwire hook is a block that can be used to detect entities (players, mobs, items, etc.) when part of a tripwire circuit is passed through."),
      ("Crossbow","crossbow", "Crossbows deal an average damage of 9 with a high of 11 and a minimum of 6."),
      ("Cake","cake", "The player can place cake on top of a bed, and while sleeping, the cake shows on your screen as if it were on top of your head."),
      ("Milk Bucket","milk-bucket", "Milk buckets can be obtained from cows and mooshrooms by pressing use while looking at them with an empty bucket."),
      ("Sugar","sugar", "Witches have a chance of dropping 0–2 sugar upon death. "),
      ("Egg","egg", "Chickens drop an egg item every 5–10 minutes."),
      ("Bread","bread", " Eating bread restores 5 hunger and 6hunger saturation."),
      ("Wheat","wheat", "Holding wheat in your hand causes cows, sheep, and mooshrooms that are close by to follow you, until you stop holding the wheat or create too large a distance between them, thus leading them to lose interest."),
      ("Cocoa Beans","cocoa-beans", "Wandering traders sell 3 cocoa beans for an emerald."),
      ("Cookie","cookie", "Feeding a cookie to a parrot kills the parrot instantly, and causes it to give off Poison particles as it dies due to chocolate being toxic to parrots. "),
      ("Golden Apple","golden-apple", "A golden apple and a potion of weakness can be used to convert a zombie villager into a regular villager."),
      ("Apple","apple", "Oak and dark oak leaves have 0.5% (1⁄200) chance of dropping an apple when decayed or broken, but not if burned."),
      ("Wool", "wool", "Wool blocks can be placed under note blocks to produce guitar sounds.‌"), 
      ("Book", "book", "Three books are dropped when a bookshelf is mined without silk touch or destroyed by an explosion."),
      ("Book & Quill", "book-and-quill", "A book and quill is an item used to write written books."),
      ("Iron Bars",  "iron-bars", "Iron bars are blocks that serve a similar purpose to glass panes, but made of iron instead of glass."), 
      ("Gold Nugget", "gold-nugget", "One gold nugget is effectively worth one-ninth of a gold ingot."),
      ("Obsidian", "obsidian", "One gold nugget is effectively worth one-ninth of a gold ingot."),
      ("Enchanting Table", "enchanting-table", "An enchanting table is a block that allows players to spend their experience point levels to enchant tools, weapons, books, armor, and certain other items."),
      ("Anvil", "anvil", "An anvil is a block that allows players to repair items, rename items, and combine enchantments."), 
      ("Iron Block", "iron-block", "A block of iron is a precious metal block equivalent to nine iron ingots. It can be used to make a pyramid for a beacon, spawn iron golems, and for other things such as building."), 
      ("Fire Charge", "fire-charge", "When a dispenser with a fire charge is placed with a block directly in front of it, the dispenser shoots through it and lights a fire on the other side."),
      ("Blaze Powder", "blaze-powder", "In addition to being a brewing ingredient, blaze powder is needed to fuel a brewing stand. Each piece of blaze powder can brew up to 20 batches of potions."), 
      ("Gunpowder", "gunpowder", "Gunpowder was previously known as Sulfur in Minecraft."), 
      ("Brick", "brick", "Brick is an item used to craft brick blocks and flower pots."),
      ("Bricks", "bricks", "Bricks are a decorative building block."),
      ("Campfire", "campfire", "A campfire is a block that can be used to cook food or act as a light source or smoke signal."),
      ("Flower Pot", "flower-pot", "A flower pot is a decorative block that can contain flowers, bamboo, saplings, cactus, mushrooms, fungi and other reasonably sized plants."), 
      ("Blast Furnace", "blast-furnace", "A blast furnace is a block that smelts ores and metal armor and tools, similar to a furnace, but at twice the rate."),
      ("Smooth Stone", "smooth-stone", "The original Smooth Stone Slab is called Stone Slab, and later changed it is name to Smooth Stone in 1.14."),
      ("Banner", "banner", "Banners are tall decorative blocks, featuring a field that is highly customizable using dyes and patterns."), 
      ("Loom", "loom", "A loom is used to apply patterns to banners. It is also a shepherd's job site block found in villages."),
      ("Beehive", "beehive", "The Beehive is a man-made enclosure for bees, while naturally occuring hives are called Bee Nests."),
      ("Honeycomb", "honeycomb", "Honeycombs are items obtained from bee nests and beehives."),
      ("Painting", "painting", "Paintings are not actually attached to the wall. When looked at closely, there is a visible gap between the painting and the wall.");


INSERT INTO recipes (result, five) 
VALUES ("acacia-planks", "acacia-log"),
        ("birch-planks", "birch-log"),
        ("jungle-planks", "jungle-log"),
        ("oak-planks", "oak-log"),
        ("spruce-planks", "spruce-log"),
        ("iron-ingot", "iron-block");


INSERT INTO recipes (result, five, eight)
VALUES("stick", "planks", "planks"),
      ("torch", "stick", "coal");

INSERT INTO recipes (result, four, eight)
VALUES("flint-and-steel", "iron-ingot", "flint");



INSERT INTO recipes (result, five, seven)
VALUES("shears", "iron-ingot", "iron-ingot");

INSERT INTO recipes (result, four, six, eight)
VALUES("bucket", "iron-ingot", "iron-ingot", "iron-ingot"),
      ("bowl", "planks", "planks", "planks"),
      ("flower-pot", "brick", "brick", "brick");


INSERT INTO recipes (result, seven, eight, nine)
VALUES("paper", "sugarcane", "sugarcane", "sugarcane"),
      ("bread", "wheat", "wheat", "wheat"),
      ("cookie", "wheat", "cocoa-beans", "wheat");


INSERT INTO recipes (result, four, six, seven, eight, nine)
VALUES("boat", "planks", "planks", "planks", "planks", "planks");

INSERT INTO recipes (result, one, two, three, four, six)
VALUES("leather-cap", "leather", "leather", "leather", "leather", "leather"),
      ("golden-helmet", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot"),
      ("iron-helmet", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot"),
      ("diamond-helmet", "diamond", "diamond", "diamond", "diamond", "diamond");

INSERT INTO recipes (result, four, five, seven, eight)
VALUES("leather-boots", "leather", "leather", "leather", "leather"),
      ("golden-boots", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot"),
      ("iron-boots", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot"),
      ("diamond-boots", "diamond", "diamond", "diamond", "diamond");


INSERT INTO recipes (result, one, two, three, four, six, seven, nine)
VALUES("leather-leggings", "leather", "leather", "leather", "leather", "leather", "leather", "leather"),
      ("golden-leggings", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot"),
      ("diamond-leggings", "diamond", "diamond", "diamond", "diamond", "diamond", "diamond", "diamond"),
      ("iron-leggings", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot");

INSERT INTO recipes (result, one, three, four, five, six, seven, eight, nine)
VALUES("leather-tunic", "leather", "leather", "leather", "leather", "leather", "leather", "leather", "leather"),
      ("golden-chestplate", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot", "gold-ingot"),
      ("diamond-chestplate", "diamond", "diamond", "diamond", "diamond", "diamond", "diamond", "diamond", "diamond"),
      ("iron-chestplate", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot");

INSERT INTO recipes (result, two, four, five, six, eight)
VALUES("clock", "gold-ingot", "gold-ingot", "redstone-dust", "gold-ingot", "gold-ingot"),
      ("compass", "iron-ingot", "iron-ingot", "redstone-dust", "iron-ingot", "iron-ingot");


INSERT INTO recipes (result, one, two, three, four, six, seven, eight, nine)
VALUES("chest", "planks", "planks", "planks", "planks", "planks", "planks", "planks", "planks"),
      ("furnace", "cobblestone", "cobblestone", "cobblestone", "cobblestone", "cobblestone", "cobblestone", "cobblestone", "cobblestone");


INSERT INTO recipes(result, one, two, three, four, five, six, seven, eight, nine)
VALUES("painting", "stick", "stick", "stick", "stick", "wool", "stick","stick","stick","stick"),
      ("map", "paper", "paper", "paper", "paper", "compass", "paper", "paper", "paper", "paper"),
      ("cake","milk-bucket", "milk-bucket", "milk-bucket", "sugar", "egg", "sugar", "wheat", "wheat", "wheat"),
      ("golden-apple", "gold-ingot","gold-ingot", "gold-ingot", "gold-ingot", "apple", "gold-ingot", "gold-ingot", "gold-ingot","gold-ingot"),
      ("gold-ingot", "gold-nugget", "gold-nugget","gold-nugget","gold-nugget","gold-nugget", "gold-nugget","gold-nugget","gold-nugget","gold-nugget"),
      ("blast-furnace", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "furnace", "iron-ingot", "smooth-stone", "smooth-stone", "smooth-stone"),
      ("beehive", "planks", "planks", "planks", "honeycomb", "honeycomb", "honeycomb", "planks", "planks", "planks");

INSERT INTO recipes(result, four, five, seven, eight)
VALUES("bricks", "brick", "brick", "brick", "brick"),
      ("loom", "string", "string", "planks", "planks");

INSERT INTO recipes (result, one, three, four, five, six, seven, nine)
VALUES("ladder", "stick", "stick", "stick", "stick", "stick", "stick", "stick");

INSERT INTO recipes(result, two, four, eight, nine)
VALUES("book", "paper", "paper", "paper", "leather");

INSERT INTO recipes(result, four, five, eight)
VALUES("book-and-quill", "feather","ink-sack", "feather");

INSERT INTO recipes (result, four, five, six, seven, eight, nine) 
VALUES("fence", "planks", "stick", "planks", "stick", "planks", "stick"),
      ("bed", "wool", "wool", "wool", "planks", "planks", "planks"),
      ("iron-bars", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot","iron-ingot");

INSERT INTO recipes (result, two, four, five, six, seven, eight, nine)
VALUES("enchanting-table", "book", "diamond", "obsidian", "diamond", "obsidian", "obsidian", "obsidian");

INSERT INTO recipes (result,four, five, seven, eight)
VALUES("crafting-table", "planks", "planks", "planks", "planks");


INSERT INTO recipes (result, one, two, three, four, five, six, eight) 
VALUES("sign", "planks", "planks", "planks", "planks", "planks", "planks", "stick"),
      ("shield", "planks", "iron-ingot", "planks", "planks", "planks", "planks", "planks"),
      ("crossbow", "stick", "iron-ingot", "stick", "string", "tripwire-hook", "string", "stick"),
      ("banner", "wool", "wool", "wool", "wool", "wool", "wool", "stick");


INSERT INTO recipes(result, one, two, three, five, eight)
VALUES("golden-pickaxe","gold-ingot", "gold-ingot", "gold-ingot", "stick", "stick"),
      ("wooden-pickaxe","planks", "planks", "planks", "stick", "stick"),
      ("iron-pickaxe","iron-ingot", "iron-ingot", "iron-ingot", "stick", "stick"),
      ("stone-pickaxe","cobblestone", "cobblestone", "cobblestone", "stick", "stick"),
      ("diamond-pickaxe", "diamond", "diamond", "diamond", "stick", "stick");



INSERT INTO recipes(result, two, five, eight)
VALUES("golden-shovel","gold-ingot", "stick", "stick"),
      ("wooden-shovel","planks", "stick", "stick"),
      ("iron-shovel","iron-ingot", "stick", "stick"),
      ("stone-shovel","cobblestone","stick", "stick"),
      ("diamond-shovel", "diamond", "stick", "stick"),
      ("golden-sword","gold-ingot", "gold-ingot", "stick"),
      ("wooden-sword","planks", "planks", "stick"),
      ("iron-sword","iron-ingot", "iron-ingot", "stick"),
      ("stone-sword","cobblestone", "cobblestone",  "stick"),
      ("diamond-sword", "diamond", "diamond", "stick"),
      ("fire-charge", "blaze-powder", "coal", "gunpowder"),
      ("arrow", "flint", "stick", "feather");

INSERT INTO recipes (result, one, two, three, five, seven, eight, nine)
VALUES("anvil", "smooth-stone", "smooth-stone", "smooth-stone", "iron-ingot", "iron-ingot", "iron-ingot", "iron-ingot");

INSERT INTO recipes(result,one, two, four, six, seven, eight)
VALUES("bow", "string", "stick", "string", "stick", "string", "stick");

INSERT INTO recipes (result, two, four, five, six, seven, eight, nine)
VALUES("campfire", "stick", "stick", "coal", "stick", "log", "log", "log");

INSERT INTO recipes(result, one, two, four, five, eight)
VALUES("golden-axe","gold-ingot", "gold-ingot", "gold-ingot", "stick", "stick"),
      ("wooden-axe","planks", "planks", "planks", "stick", "stick"),
      ("iron-axe","iron-ingot", "iron-ingot", "iron-ingot", "stick", "stick"),
      ("stone-axe","cobblestone", "cobblestone", "cobblestone", "stick", "stick"),
      ("diamond-axe", "diamond", "diamond", "diamond", "stick", "stick");

INSERT INTO recipes(result, one, two, five, eight)
VALUES("golden-hoe","gold-ingot", "gold-ingot", "stick", "stick"),
      ("wooden-hoe","planks",  "planks", "stick", "stick"),
      ("iron-hoe","iron-ingot", "iron-ingot", "stick", "stick"),
      ("stone-hoe", "cobblestone", "cobblestone", "stick", "stick"),
      ("diamond-hoe", "diamond", "diamond", "stick", "stick");

INSERT INTO recipes(result, three, five, six, seven, nine)
VALUES("fishing-rod","stick", "stick", "string", "stick", "string");
