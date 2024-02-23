--[[

TC-CompanionData.lua

Companion spellIDs for all the companions a player could potentially have.

--]]


-- These are companions that either faction (neutral auction house, etc) can get.
TheCollectorCommonCompanionTable = {

  -- Albino Snake
  [10713]={2, 1, { {COLLECTOR_BREANNI, "58.8, 39.0", COLLECTOR_DALARAN, "50g"} } },

  -- Ammen Vale Lashling
  [62562]={2, 1, { {COLLECTOR_IRISEE, "76.2, 19.3", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Ancona Chicken
  [10685]={2, 1, { {COLLECTOR_MAGUS_TIRTH, "78.3, 75.7", COLLECTOR_THOUSAND_NEEDLES, "1g"} } },

  -- Azure Whelpling
  [10696]={2, 3, {
                  {"Draconic Magelord", COLLECTOR_AZSHARA, "1"},
                  {"Blue Scalebane", COLLECTOR_AZSHARA, "1"},
                  {"Draconic Mageweaver", COLLECTOR_AZSHARA, "1"},
                 }
          },

  -- Baby Blizzard Bear
  [61855]={3, 7, "Obtained from logging in during WoW's 4th anniversary"},

  -- Black Kingsnake
  [10714]={2, 1, { {COLLECTOR_XANTISH, "wanders near Valley of Spirits", COLLECTOR_ORGRIMMAR, "50s"} } },

  -- Black Tabby Cat
  [10675]={2, 3, {
                  {"Dalaran Spellscribe", COLLECTOR_SILVERPINE_FOREST, "19"},
                  {"Dalaran Theurgist", COLLECTOR_ALTERAC_MOUNTAINS, "0.1"},
                  {"Dalaran Summoner", COLLECTOR_ALTERAC_MOUNTAINS, "0.1"},
                  {"Dalaran Shield Guard", COLLECTOR_ALTERAC_MOUNTAINS, "0.1"},
                 }
          },

  -- Blue Clockwork Rocket Bot
  [75134]={1, 1, { {"Jepetto Joybuzz", "44.64, 45.61", COLLECTOR_DALARAN, "50g"} } },

  -- Blue Dragonhawk Hatchling
  [36031]={2, 1, { {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "10g"} } },

  -- Blue Moth
  [35907]={2, 1, { {COLLECTOR_SIXX, "30.0, 33.4", COLLECTOR_EXODAR, "50s"} } },

  -- Bombay Cat
  [10673]={2, 1, { {COLLECTOR_DONNI_ANTHANIA, "44.2, 53.4", COLLECTOR_ELWYNN_FOREST, "40s"} } },

  -- Brown Prairie Dog
  [10709]={2, 1, { {COLLECTOR_HALPA, "62.2, 58.5", COLLECTOR_THUNDER_BLUFF, "50s"} } },

  -- Brown Rabbit
  [35239]={2, 1, { {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "10g"} } },

  -- Brown Snake
  [10716]={2, 1, { {COLLECTOR_XANTISH, "wanders near Valley of Spirits", COLLECTOR_ORGRIMMAR, "50s"} } },

  -- Calico Cat
  [65358]={2, 1, { {COLLECTOR_BREANNI, "58.8, 39.0", COLLECTOR_DALARAN, "50g"} } },

  -- Chuck
  [46426]={1, 3, { {"Bag of Fishing Treasures", "Crocolisks in the City fishing daily", "1.1"} } },

  -- Cobra Hatchling
  [61351]={2, 3, { {"Mysterious Egg", "Geen (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\nThe Oracles - Revered", "19"} } },

  -- Cockatiel
  [10680]={2, 1, { {COLLECTOR_NARKK, "28.2, 74.5", COLLECTOR_STRANGLETHORN_VALE, "40s"} } },

  -- Cockroach
  [10688]={2, 1, {
                  {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "50s"},
                  {COLLECTOR_JEREMIAH_PAYSON, "67.5, 44.6", COLLECTOR_UNDERCITY, "50s"},
                 }
          },

  -- Core Hound Pup
  [69452]={1, 7, "Attach an authenticator to your account"},

  -- Cornish Rex Cat
  [10674]={2, 1, { {COLLECTOR_DONNI_ANTHANIA, "44.2, 53.4", COLLECTOR_ELWYNN_FOREST, "40s"} } },

  -- Crimson Snake
  [10717]={2, 1, {
                  {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "50s"},
                  {COLLECTOR_XANTISH, "wanders near Valley of Spirits", COLLECTOR_ORGRIMMAR, "50s"},
                 }
          },

  -- Crimson Whelpling
  [10697]={2, 3, {
                  {"Flamesnorting Whelp", COLLECTOR_WETLANDS, "0.3"},
                  {"Crimson Whelp", COLLECTOR_WETLANDS, "0.2"},
                  {"Red Whelp", COLLECTOR_WETLANDS, "0.2"},
                 }
          },

  -- Curious Oracle Hatchling
  [65381]={1, 2, "Back to the Orphanage"},

  -- Curious Wolvar Pup
  [65382]={1, 2, "Back to the Orphanage"},

  -- Dark Whelpling
  [10695]={2, 3, {
                  {"Searing Whelp", COLLECTOR_DUSTWALLOW_MARSH, "0.1"},
                  {"Scalding Whelp", COLLECTOR_BADLANDS, "0.1"},
                 }
          },

  -- Darting Hatchling
  [67413]={2, 3, { {"Dart", COLLECTOR_DUSTWALLOW_MARSH, "100"} } },

  -- Deviate Hatchling
  [67414]={2, 3, { {"Deviate Ravager", COLLECTOR_WAILING_CAVERNS, "1"},
                   {"Deviate Guardian", COLLECTOR_WAILING_CAVERNS, "1"} } },

  -- Disgusting Oozeling
  [25162]={2, 3, { {"Oozing Bag", "Bag drops from oozes around the world", "1.4"} } },

  -- Dun Morogh Cub
  [62508]={2, 1, { {COLLECTOR_DERRICK_BRINDLEBEARD, "76.5, 19.5", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Durotar Scorpion
  [62513]={2, 1, { {COLLECTOR_FREKA_BLOODAXE, "76.4, 24.3", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Egbert
  [40614]={1, 2, "Back to the Orphanage"},

  -- Elwynn Lamb
  [62516]={2, 1, { {COLLECTOR_CORPORAL_ARTHUR_FLEW, "76.5, 19.2", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Emerald Whelpling
  [10698]={2, 3, { {"Dreaming Whelp", COLLECTOR_SWAMP_OF_SORROWS, "0.2"} } },

  -- Enchanted Broom
  [62564]={2, 1, { {"Trellis Morningsun", "76.3, 23.9", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Father Winter's Helper
  [26533]={2, 3, { {"Gaily Wrapped Present", "A Gaily Wrapped Present quest during Winter Veil", "26"} } },

  -- Firefly
  [36034]={2, 3, { {"Bogflare Needler", COLLECTOR_ZANGARMARSH, "0.1"} } },

  -- Ghostly Skull
  [53316]={1, 1, { {COLLECTOR_DARAHIR, "63.7, 16.5", COLLECTOR_DALARAN, "40g"} } },

  -- Giant Sewer Rat
  [59250]={1, 3, { {"Rare drop from Fishing", COLLECTOR_DALARAN_SEWERS, "1"} } },

  -- Golden Dragonhawk Hatchling
  [36027]={2, 1, { {COLLECTOR_JILANNE, "44.8, 71.7", COLLECTOR_EVERSONG_WOODS, "50s"} } },

  -- Great Horned Owl
  [10707]={2, 1, { {COLLECTOR_SHYLENAI, "69.8, 45.4", COLLECTOR_DARNASSUS, "50s"} } },

  -- Green Wing Macaw
  [10683]={2, 3, { {"Defias Pirate", COLLECTOR_DEADMINES, "2"} } },

  -- Gryphon Hatchling
  [69535]={1, 7, "Sold through the Blizzard store"},

  -- Gundrak Hatchling
  [67415]={2, 3, { {"Gundrak Raptor", COLLECTOR_ZULDRAK, "1"} } },

  -- Hawk Owl
  [10706]={2, 1, { {COLLECTOR_SHYLENAI, "69.8, 45.4", COLLECTOR_DARNASSUS, "50s"} } },

  -- Hyacinth Macaw
  [10682]={2, 3, {
                  {"Pretty Boy Duncan", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Raider", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Deckhand", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Mage", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Swabby", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Swashbuckler", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Sea Dog", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Warlock", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {"Bloodsail Elder Magus", COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                 }
          },

  -- Jubling
  [23811]={1, 2, "Spawn of Jubjub"},

  -- Kirin Tor Familiar
  [61472]={1, 5, "Higher Learning"},

  -- Leaping Hatchling
  [67416]={2, 3, { {"Takk the Leaper", COLLECTOR_BARRENS, "100"} } },

  -- Lifelike Toad
  [19772]={2, 4, "Engineering", "265"},

  -- Lil' K.T.
  [69677]={1, 7, "Sold through the Blizzard store"},

  -- Lil' Smoky
  [15049]={2, 4, "Engineering", "205"},

  -- Little Fawn
  [61991]={1, 5, "Lil' Game Hunter"},

  -- Magical Crawdad
  [33050]={1, 7, "Possible wish from Fishing up Mr. Pinchy"},

  -- Mana Wyrmling
  [35156]={2, 1, { {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "40g"} } },

  -- Mechanical Chicken
  [12243]={2, 2, "An OOX of Your Own"},

  -- Mechanical Squirrel
  [4055]={2, 4, "Engineering", "265"},

  -- Mechanopeep
  [62674]={2, 1, { {COLLECTOR_RILLIE_SPINDLENUT, "76.5, 19.7", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Miniwing
  [39181]={1, 2, "Skywing" },

  -- Mojo
  [43918]={1, 7, "Use the Amani Hex Stick in Zul'Aman on the frogs" },

  -- Mr. Wiggles
  [28739]={1, 2, "A Warden of the Alliance (or Horde)"},

  -- Muckbreath
  [43698]={1, 3, { {"Bag of Fishing Treasures", "Crocolisks in the City fishing daily", "1.1"} } },

  -- Mulgore Hatchling
  [62542]={2, 1, { {COLLECTOR_DORA_THUNDERHORN, "76.2, 24.5", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Nether Ray Fry
  [51716]={1, 1, { {COLLECTOR_GRELLA, "64.3, 66.3", COLLECTOR_TEROKKAR_FOREST, "40g", "Sha'tari Skyguard - Exalted"} } },

  -- Obsidian Hatchling
  [67417]={2, 1, { {COLLECTOR_BREANNI, "58.8, 39.0", COLLECTOR_DALARAN, "50g"} } },

  -- Orange Tabby Cat
  [10676]={2, 1, { {COLLECTOR_DONNI_ANTHANIA, "44.2, 53.4", COLLECTOR_ELWYNN_FOREST, "40s"} } },

  -- Pandaren Monk
  [69541]={3, 7, "Sold through the Blizzard store"},

  -- Peanut
  [40634]={1, 2, "A Warden of the Alliance (or Horde)"},

  -- Peddlefeet
  [27570]={1, 3, { {"Gift of Adoration", "During Valentine's Day", "1"} } },

  -- Pengu
  [61357]={1, 1, {
                  {COLLECTOR_SAIRUK, "48.5, 75.7", COLLECTOR_DRAGONBLIGHT, "12g", "The Kalu'ak - Exalted"},
                  {COLLECTOR_TANAIKA, "25.5, 58.7", COLLECTOR_HOWLING_FJORD, "12g", "The Kalu'ak - Exalted"},
                 }
          },

  -- Perky Pug
  [70613]={1, 5, "Looking for Multitudes"},

  -- Pet Bombling  [15048]={2, 4, "Engineering", "205" },

  -- Phoenix Hatchling
  [46599]={1, 3, { {"Kael'thas Sunstrider", COLLECTOR_MAGISTERS_TERRACE, "6"} } },

  -- Pint-Sized Pink Elekk
  [44369]={1, 1, {
                  {COLLECTOR_BELBI_QUICKSWITCH, "49.3, 39.5", COLLECTOR_DUN_MOROGH, "100 Brewfest Prize Tokens"},
                  {COLLECTOR_BLIX_FIXWIDGET, "44.1, 17.9", COLLECTOR_DUROTAR, "100 Brewfest Prize Tokens"},
                 }
          },

  -- Plump Turkey
  [61773]={1, 5, "Pilgrim"},

  -- Proto-Drake Whelp
  [61350]={2, 3, { {"Mysterious Egg", "Geen (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\nThe Oracles - Revered", "8"} } },

  -- Ravasaur Hatchling
  [67418]={2, 3, { {"Ravasaur Matriarch", COLLECTOR_UNGORO_CRATER, "100"} } },

  -- Razormaw Hatchling
  [67419]={2, 3, { {"Razormaw Matriarch", COLLECTOR_WETLANDS, "100"} } },

  -- Razzashi Hatchling
  [67420]={2, 3, { {"Razzashi Raptor", COLLECTOR_ZULGURUB, "1"} } },

  -- Red Dragonhawk Hatchling
  [36028]={2, 1, { {COLLECTOR_JILANNE, "44.8, 71.7", COLLECTOR_EVERSONG_WOODS, "50s"} } },

  -- Red Moth
  [35909]={2, 1, { {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "10g"} } },

  -- Scorchling
  [45890]={1, 3, { {"Ice Chest", "The Slave Pens (during Midsummer Festival)", "1.7"} } },

  -- Senegal
  [10684]={2, 1, {
                  {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "40s"},
                  {COLLECTOR_NARKK, "28.2, 74.5", COLLECTOR_STRANGLETHORN_VALE, "40s"}
                 }
          },

  -- Sen'jin Fetish
  [63712]={2, 1, { {COLLECTOR_SAMAMBA, "76.1, 24.5", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Shimmering Wyrmling
  [66096]={2, 1, {
                  {COLLECTOR_HIREN_LORESONG, "76.1, 19.6", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL},
                  {COLLECTOR_VASARIN_REDMORN, "76, 24", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL},
                 }
          },

  -- Siamese Cat
  [10677]={2, 3, { {"Cookie", COLLECTOR_DEADMINES, "15"} } },

  -- Silver Dragonhawk Hatchling
  [36029]={2, 1, { {COLLECTOR_JILANNE, "44.8, 71.7", COLLECTOR_EVERSONG_WOODS, "50s"} } },

  -- Silver Tabby Cat
  [10678]={2, 1, { {COLLECTOR_DONNI_ANTHANIA, "44.2, 53.4", COLLECTOR_ELWYNN_FOREST, "40s"} } },

  -- Sinister Squashling
  [42609]={1, 3, { {"Headless Horseman", "Scarlet Monastery (during Halloween)", "5"} } },

  -- Smolderweb Hatchling
  [16450]={1, 2, "En-Ay-Es-Tee-Why"},

  -- Snarly
  [46425]={1, 3, { {"Bag of Fishing Treasures", "Crocolisks in the City fishing daily", "1.1"} } },

  -- Snowshoe Rabbit
  [10711]={2, 1, { {COLLECTOR_VARLYN_AMBERSTILL, "63.2, 51.0", COLLECTOR_DUN_MOROGH, "20s"} } },

  -- Speedy
  [28738]={1, 2, "A Warden of the Alliance (or Horde)"},

  -- Spirit of Summer
  [28871]={1, 1, { {"Midsummer Merchant/Supplier", "", "Main cities during Midsummer world event", "350 Burning Blossom"} } },

  -- Spring Rabbit
  [61725]={1, 1, { {"Noblegarden vendor", "", "During Noblegarden world event", "100 Noblegarden Chocolate"} } },

  -- Stinker
  [40990]={1, 5, "Shop Smart, Shop Pet...Smart"},

  -- Strand Crawler
  [62561]={1, 3, { {"Bag of Fishing Treasures", "Dalaran fishing daily", "3"} } },

  -- Teldrassil Sproutling
  [62491]={2, 1, { {COLLECTOR_ROOK_HAWKFIST, "76.3, 19.2", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Tickbird Hatchling
  [61348]={2, 3, { {"Mysterious Egg", "Geen (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\nThe Oracles - Revered", "21"} } },

  -- Tiny Sporebat
  [45082]={1, 1, { {COLLECTOR_MYCAH, "17.9, 51.2", COLLECTOR_ZANGARMARSH, "30 Glowcap", "Sporeggar - Exalted"} } },

  -- Tiny Snowman
  [26045]={2, 3, { {"Gaily Wrapped Present", "A Gaily Wrapped Present quest during Winter Veil", "25"} } },

  -- Tirisfal Batling
  [62510]={2, 1, { {COLLECTOR_ELIZA_KILLIAN, "76.5, 24.2", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Toothy
  [43697]={1, 3, { {"Bag of Fishing Treasures", "Crocolisks in the City fishing daily", "1.1"} } },

  -- Toxic Wasteling
  [71840]={1, 3, { {"Apothecary Hummel", "Shadowfang Keep (during Love is in the Air)", "25"} } },

  -- Tranquil Mechanical Yeti
  [26010]={2, 4, "Engineering", "250"},

  -- Tree Frog
  [10704]={2, 1, {
                  {COLLECTOR_FLIK, "35.0, 34.3", COLLECTOR_TEROKKAR_FOREST, "1g", "Darkmoon Faire"},
                  {COLLECTOR_FLIK, "42.2, 66.7", COLLECTOR_ELWYNN_FOREST, "1g", "Darkmoon Faire"},
                  {COLLECTOR_FLIK, "37.4, 38.0", COLLECTOR_MULGORE, "1g", "Darkmoon Faire"},
                 }
          },

  -- Westfall Chicken
  [13548]={1, 2, "CLUCK!"},

  -- Whiskers the Rat
  [28740]={1, 2, "A Warden of the Alliance (or Horde)"},

  -- White Kitten
  [10679]={2, 1, { {"Lil Timmy", "wanders Canal district", COLLECTOR_STORMWIND, "60s"} } },

  -- White Moth
  [35911]={2, 1, { {COLLECTOR_SIXX, "30.0, 33.4", COLLECTOR_EXODAR, "50s"} } },

  -- White Tickbird Hatchling
  [61349]={2, 3, { {"Mysterious Egg", "Geen (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\nThe Oracles - Revered", "20"} } },

  -- Willy
  [40613]={1, 2, "Back to the Orphanage"},

  -- Wind Rider Cub
  [69536]={1, 7, "Sold through the Blizzard store"},

  -- Winter Reindeer
  [26529]={2, 3, { {"Gaily Wrapped Present", "A Gaily Wrapped Present quest during Winter Veil", "25"} } },

  -- Winter's Little Helper
  [26541]={2, 3, { {"Gaily Wrapped Present", "A Gaily Wrapped Present quest during Winter Veil", "25"} } },

  -- Wolpertinger
  [39709]={1, 1, {
                  {COLLECTOR_BLIX_FIXWIDGET, "44.1, 17.9", COLLECTOR_DUROTAR, "50s"},
                  {COLLECTOR_LARKIN_THUNDERBREW, "19.5, 53.2", COLLECTOR_IRONFORGE, "50s"},
                  {COLLECTOR_RAYMA, "37.9, 85.6", COLLECTOR_ORGRIMMAR, "50s"},
                 }
          },

  -- Wood Frog
  [10703]={2, 1, {
                  {COLLECTOR_FLIK, "35.0, 34.3", COLLECTOR_TEROKKAR_FOREST, "1g", "Darkmoon Faire"},
                  {COLLECTOR_FLIK, "42.2, 66.7", COLLECTOR_ELWYNN_FOREST, "1g", "Darkmoon Faire"},
                  {COLLECTOR_FLIK, "37.4, 38.0", COLLECTOR_MULGORE, "1g", "Darkmoon Faire"},
                 }
          },

  -- Worg Pup
  [15999]={1, 2, "Kibler's Exotic Pets"},

  -- Yellow Moth
  [35910]={2, 1, { {COLLECTOR_SIXX, "30.0, 33.4", COLLECTOR_EXODAR, "50s"} } },

};



-- These are companions that only Alliance can get.
TheCollectorAllianceCompanionTable = {
  -- Argent Squire
  [62609]={1, 2, "A Champion Rises"},

  -- Sprite Darter Hatchling
  [15067]={1, 2, "Becoming a Parent"},
};



-- These are companions that only Horde can get.
TheCollectorHordeCompanionTable = {
  -- Argent Gruntling
  [62746]={1, 2, "A Champion Rises"},

  -- Sprite Darter Hatchling
  [15067]={1, 3, { {"Sprite Darter", COLLECTOR_FERALAS, "1"} } },
};



-- These are companions that only engineers can get.
TheCollectorEngineerCompanionTable = {

};



-- These are companions that are hard to get that I haven't decided what to do with yet.
-- We put them here so it doesn't spew warnings about missing companions for these.
TheCollectorSpecialCompanionTable = {
  -- Bananas
  [40549]={1, 7, "World of Warcraft TCG\nDark Portal pack\nKing Mukla card"},

  -- Battle-bot
  [65682]={1, 7, "US 2009 Mountain Dew promotion"},

  -- Clockwork Rocket Bot
  [54187]={1, 7, "Winter Veil 2007 gift"},

  -- Corrupted Kitten
  [15648]={4, 7, "Unobtainable"},

  -- Dragon Kite
  [45127]={1, 7, "World of Warcraft TCG\nMarch of the Legion pack\nKiting card"},

  -- Essence of Competition
  [48408]={1, 7, "Random reward during 2008 Summer Olympics (Asia only)"},
  -- Ethereal Soul-Trader
  [49964]={1, 7, "World of Warcraft TCG\nHunt for Illidan pack\nEthereal Plunderer card"},

  -- Frosty
  [52615]={3, 7, "Wrath of the Lich King Collector's edition gift"},

  -- Golden Pig
  [45174]={1, 7, "Unknown - Promotional pet from Asia?"},

  -- Grunty
  [66030]={3, 7, "Blizzcon 2009 gift"},

  -- Gurky
  [27241]={3, 7, "European fan websites promotional gift"},

  -- Hippogryph Hatchling
  [30156]={1, 7, "World of Warcraft TCG\nHeroes of Azeroth pack\nThunderhead Hippogryph card"},

  -- Jade Tiger
  [66520]={1, 7, "Logged in during the Chinese Jade Tiger giveaway"},

  -- Lil XT
  [75906]={1, 7, "Blizzard Store"},

  -- Loggerhead Snapjaw
  [23429]={2, 7, "Unobtainable"},

  -- Lucky
  [40319]={3, 7, "2007 Blizzard Worldwide Invitational gift"},

  -- Lucky
  [40405]={3, 7, "2007 Blizzard Worldwide Invitational gift"},

  -- Lurky
  [24988]={1, 7, "European Burning Crusade Collector's edition gift"},

  -- Mini Diablo
  [17708]={3, 7, "World of Warcraft Collector's edition gift"},

  -- Mini Thor
  [78381]={3, 7, "Starcraft II: Wings of Liberty Collector's Edition gift"},

  -- Mini Tyrael
  [53082]={3, 7, "2008 Worldwide Invitational gift"},

  -- Mr. Chilly
  [55068]={3, 7, "Transferring to a battle.net account in November 2009"},

  -- Murkimus the Gladiator
  [63318]={3, 7, "Play 200 matches in the Arena PVP Tournament"},

  -- Murky
  [24696]={3, 7, "Blizzcon 2005 gift"},

  -- Netherwhelp
  [32298]={3, 7, "Burning Crusade Collector's edition gift"},

  -- Onyx Panther
  [67527]={1, 7, "Unknown, Korean only"},

  -- Onyxia Whelpling
  [69002]={3, 7, "Obtained from logging in during WoW's 5th anniversary"},

  -- Panda Cub
  [17707]={3, 7, "World of Warcraft Collector's edition gift"},

  -- Poley
  [28505]={3, 7, "Chinese Coca-cola promotional gift"},

  -- Rocket Chicken
  [45125]={1, 7, "World of Warcraft TCG\nMarch of the Legion pack\nRobotic Homing Chicken card"},

  -- Silver Pig
  [45175]={1, 7, "Unknown - promotional pet from Asia?"},

  -- Spectral Tiger Cub
  [68810]={1, 7, "World of Warcraft TCG\nScourgewar pack\nSpectral Tiger Cub card"},

  -- Spirit of Competition
  [48406]={1, 7, "Win a battleground during the 2008 Summer Olympics"},

  -- Tiny Green Dragon
  [23531]={1, 7, "Chinese Coca-cola promotional gift"},

  -- Tiny Red Dragon
  [23530]={1, 7, "Chinese Coca-cola promotional gift"},

  -- Tuskarr Kite
  [68767]={1, 7, "World of Warcraft TCG\nScourgewar pack\nTuskarr Kite card"},

  -- Vampiric Batling
  [51851]={1, 3, { {"Prince Tenris Mirkblood", "Karazhan\n(Only appears during WotLK event)", "100"} } },

  -- XS-001 Constructor Bot
  [64351]={4, 7, "PTR Appreciation gift"},

  -- Zergling
  [17709]={3, 7, "World of Warcraft Collector's edition gift"},


  -- 3.2.2 unknown locations
  -- Baby Shark
  [25849]={1, 7, "Unknown"},

  -- Zipao Tiger
  [69539]={1, 7, "Unknown"},

  -- 3.3.3 unknown locations
  -- Celestial Dragon
  [75613]={1, 7, "Unknown"},
};
