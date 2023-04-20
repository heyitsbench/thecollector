--[[

TC-MountData.lua

Mount spellIDs for all the mounts a player could potentially have.

--]]


-- These are mounts that either faction can get.
TheCollectorCommonMountTable = {
  -- Albino Drake
  [60025]={1, 5, "Leading the Cavalry"},

  -- Argent Warhorse
  [67466]={1, 1, { {COLLECTOR_DAME_EVNIKI_KAPSALIS, "69.4, 23.2", COLLECTOR_ICECROWN, "100 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Ashes of Al'ar
  [40192]={1, 3, { {"Kael'thas Sunstrider", "The Eye", "1.6"} } },

  -- Azure Drake
  [59567]={1, 3, { {"Malygos", "The Eye of Eternity", "1"} } },

  -- Azure Netherwing Drake
  [41514]={1, 1, { {COLLECTOR_DRAKE_DEALER_HURLUNK, "65.6, 86", COLLECTOR_SHADOWMOON_VALLEY, "200g", "Netherwing - Exalted"} } },

  -- Big Love Rocket
  [71342]={1, 3, { {"Apothecary Hummel", "Shadowfang Keep (during Love is in the Air)", "1"} } },

  -- Bloodbathed Frostbrood Vanquisher
  [72808]={1, 5, "Glory of the Icecrown Raider (10)"},

  -- Blue Drake
  [59568]={1, 3, { {"Loot bag", "Oculus (random dungeon)", "1"} } },

  -- Black Drake
  [59650]={1, 3, { {"Sartharion + 3 Drakes", "The Obsidian Sanctum", "100"} } },

  -- Blue Proto-Drake
  [59996]={1, 3, { {"Skadi the Ruthless", "Utgarde Pinnacle (Heroic)", "1"} } },

  -- Blue Qiraji Battle Tank
  [25953]={1, 3, {
                  {"Anubisath Warder",    COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Qiraji Slayer",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Qiraji Mindslayer",   COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Qiraji Champion",     COLLECTOR_TEMPLE_OF_AHNQIRAJ, "13"},
                  {"Obsidian Nullifier",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "13"},
                  {"Qiraji Lasher",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "13"},
                  {"Anubisath Defender",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "12"},
                  {"Qiraji Brainwasher",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "12"},
                  {"Anubisath Sentinel",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "11"},
                  {"Obsidian Eradicator", COLLECTOR_TEMPLE_OF_AHNQIRAJ, "10"},
                 }
          },

  -- Blue Riding Nether Ray
  [39803]={1, 1, { {COLLECTOR_GRELLA, "64.3, 66.3", COLLECTOR_TEROKKAR_FOREST, "200g", "Sha'tari Skyguard - Exalted"} } },

  -- Bronze Drake
  [59569]={1, 3, { {"Infinite Corruptor", "The Culling of Stratholme (Heroic) (Timed Run)", "100"} } },

  -- Cenarion War Hippogryph
  [43927]={1, 1, { {COLLECTOR_FEDRYEN_SWIFTSPEAR, "79.3, 63.8", "Zangarmarsh", "2,000g", "Cenarion Expedition - Exalted"} } },

  -- Cobalt Netherwing Drake
  [41515]={1, 1, { {COLLECTOR_DRAKE_DEALER_HURLUNK, "65.6, 86", COLLECTOR_SHADOWMOON_VALLEY, "200g", "Netherwing - Exalted"} } },

  -- Fiery Warhorse
  [36702]={1, 3, { {"Attumen the Huntsman", "Karazhan", "0.7"} } },

  -- Great Brewfest Kodo
  [49379]={1, 3, { {"Coren Direbrew", "Blackrock Depths (during Brewfest)", "4"} } },

  -- Green Proto-Drake
  [61294]={1, 3, { {"Mysterious Egg", "Geen (54.5, 56.2)\nSholazar Basin\n3g\nThe Oracles - Revered", "2"} } },

  -- Green Qiraji Battle Tank
  [26056]={1, 3, {
                  {"Qiraji Slayer",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "15"},
                  {"Qiraji Mindslayer",   COLLECTOR_TEMPLE_OF_AHNQIRAJ, "15"},
                  {"Qiraji Lasher",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "15"},
                  {"Anubisath Warder",    COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Anubisath Defender",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Qiraji Brainwasher",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "13"},
                  {"Obsidian Nullifier",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "13"},
                  {"Qiraji Champion",     COLLECTOR_TEMPLE_OF_AHNQIRAJ, "13"},
                  {"Obsidian Eradicator", COLLECTOR_TEMPLE_OF_AHNQIRAJ, "11"},
                  {"Anubisath Sentinel",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "11"},
                 }
          },

  -- Green Riding Nether Ray
  [39798]={1, 1, { {COLLECTOR_GRELLA, "64.3, 66.3", COLLECTOR_TEROKKAR_FOREST, "200g", "Sha'tari Skyguard - Exalted"} } },

  -- Headless Horseman's Mount
  [48025]={1, 3, { {"Headless Horseman", "Scarlet Monastery (during Halloween)", "1"} } },

  -- Icebound Frostbrood Vanquisher
  [72807]={1, 5, "Glory of the Icecrown Raider (25)"},

  -- Invincible
  [72286]={1, 7, "Lich King (25 Heroic)"},

  -- Ironbound Proto-Drake
  [63956]={1, 5, "Heroic: Glory of the Ulduar Raider (25)"},

  -- Mimiron's Head
  [63796]={1, 3, { {"Yogg-Saron + 0 Keepers (Heroic)", "Ulduar", "100"} } },

  -- Onyx Netherwing Drake
  [41513]={1, 1, { {COLLECTOR_DRAKE_DEALER_HURLUNK, "65.6, 86", COLLECTOR_SHADOWMOON_VALLEY, "200g", "Netherwing - Exalted"} } },

  -- Onyxian Drake
  [69395]={1, 3, { {"Onyxia", "Onyxia's Lair", "1"} } },

  -- Purple Netherwing Drake
  [41516]={1, 1, { {COLLECTOR_DRAKE_DEALER_HURLUNK, "65.6, 86", COLLECTOR_SHADOWMOON_VALLEY, "200g", "Netherwing - Exalted"} } },

  -- Purple Riding Nether Ray
  [39801]={1, 1, { {COLLECTOR_GRELLA, "64.3, 66.3", COLLECTOR_TEROKKAR_FOREST, "200g", "Sha'tari Skyguard - Exalted"} } },

  -- Raven Lord
  [41252]={1, 3, { {"Anzu", "Sethekk Halls (Heroic)", "1"} } },

  -- Red Drake
  [59570]={1, 1, { {COLLECTOR_CIELSTRASZA, "59.9, 53.1", COLLECTOR_DRAGONBLIGHT, "2,000g", "The Wyrmrest Accord - Exalted"} } },

  -- Red Proto-Drake
  [59961]={1, 5, "Glory of the Hero"},

  -- Red Qiraji Battle Tank
  [26054]={1, 3, {
                  {"Qiraji Lasher",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "2"},
                  {"Anubisath Defender",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.9"},
                  {"Anubisath Warder",    COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.8"},
                  {"Qiraji Brainwasher",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.7"},
                  {"Qiraji Mindslayer",   COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.7"},
                  {"Qiraji Slayer",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.6"},
                  {"Obsidian Nullifier",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.5"},
                  {"Qiraji Champion",     COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.5"},
                  {"Obsidian Eradicator", COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.4"},
                  {"Anubisath Sentinel",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "1.4"},
                 }
          },

  -- Red Riding Nether Ray
  [39800]={1, 1, { {COLLECTOR_GRELLA, "64.3, 66.3", COLLECTOR_TEROKKAR_FOREST, "200g", "Sha'tari Skyguard - Exalted"} } },

  -- Rivendare's Deathcharger
  [17481]={1, 3, { {"Baron Rivendare", "Stratholme", "1"} } },

  -- Rusted Proto-Drake
  [63963]={1, 5, "Glory of the Ulduar Raider (10)"},

  -- Sea Turtle
  [64731]={1, 3, { {"Northrend fishing pools", "Northrend", "1"} } },

  -- Silver Riding Nether Ray
  [39802]={1, 1, { {COLLECTOR_GRELLA, "64.3, 66.3", COLLECTOR_TEROKKAR_FOREST, "200g", "Sha'tari Skyguard - Exalted"} } },

  -- Swift Brewfest Ram
  [43900]={1, 3, { {"Coren Direbrew", "Blackrock Depths (during Brewfest)", "5"} } },

  -- Swift Razzashi Raptor
  [24242]={1, 3, { {"Bloodlord Mandokir", COLLECTOR_ZULGURUB, "1"} } },

  -- Swift White Hawkstrider
  [46628]={1, 3, { {"Kael'thas Sunstrider", "Magister's Terrace (Heroic)", "2"} } },

  -- Swift Zulian Tiger
  [24252]={1, 3, { {"High Priest Thekal", COLLECTOR_ZULGURUB, "1"} } },

  -- Time-Lost Proto-Drake
  [60002]={1, 3, { {"Time-Lost Proto Drake", "The Storm Peaks", "100"} } },

  -- Twilight Drake
  [59571]={1, 3, { {"Sartharion + 3 Drakes", "The Obsidian Sanctum (Heroic)", "100"} } },

  -- Veridian Netherwing Drake
  [41517]={1, 1, { {COLLECTOR_DRAKE_DEALER_HURLUNK, "65.6, 86", COLLECTOR_SHADOWMOON_VALLEY, "200g", "Netherwing - Exalted"} } },

  -- Violet Netherwing Drake
  [41518]={1, 1, { {COLLECTOR_DRAKE_DEALER_HURLUNK, "65.6, 86", COLLECTOR_SHADOWMOON_VALLEY, "200g", "Netherwing - Exalted"} } },

  -- Violet Proto-Drake
  [60024]={1, 5, "What A Long, Strange Trip It's Been"},

  -- White Polar Bear
  [54753]={1, 3, { {"Hyldnir Spoils", "The Storm Peaks (Brunnhildar daily quest)", "1"} } },

  -- Yellow Qiraji Battle Tank
  [26055]={1, 3, {
                  {"Qiraji Lasher",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "18"},
                  {"Anubisath Warder",    COLLECTOR_TEMPLE_OF_AHNQIRAJ, "16"},
                  {"Qiraji Champion",     COLLECTOR_TEMPLE_OF_AHNQIRAJ, "16"},
                  {"Qiraji Slayer",       COLLECTOR_TEMPLE_OF_AHNQIRAJ, "16"},
                  {"Qiraji Mindslayer",   COLLECTOR_TEMPLE_OF_AHNQIRAJ, "15"},
                  {"Anubisath Defender",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Obsidian Nullifier",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Qiraji Brainwasher",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "14"},
                  {"Anubisath Sentinel",  COLLECTOR_TEMPLE_OF_AHNQIRAJ, "12"},
                  {"Obsidian Eradicator", COLLECTOR_TEMPLE_OF_AHNQIRAJ, "11"},
                 }
          },
};


-- These are mounts that only Alliance can get.
-- These have to be mounts that every member of the Alliance can ride:
--   Human, Dwarf, Night Elf, Gnome, Draenei
TheCollectorAllianceMountTable = {
  -- Argent Hippogryph
  [63844]={1, 1, {
                  {COLLECTOR_CORPORAL_ARTHUR_FLEW, "76.5, 19.2", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_DERRICK_BRINDLEBEARD, "76.5, 19.5", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_IRISEE,               "76.2, 19.3", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_RILLIE_SPINDLENUT,    "76.5, 19.7", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_ROOK_HAWKFIST,        "76.3, 19.2", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                 }
           },

  -- Armored Brown Bear
  [60114]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "750g"} } },

  -- Armored Snowy Gryphon
  [61229]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "2,000g"} } },

  -- Black Battlestrider
  [22719]={1, 1, { {COLLECTOR_LIEUTENANT_KARTER, "74.7, 67.3", COLLECTOR_STORMWIND, "50,000 Honor Points"} } },

  -- Black Stallion Bridle
  [470]={1, 1, { {COLLECTOR_UNGER_STATFORTH, "8.6, 54.5", COLLECTOR_WETLANDS, "1g"} } },

  -- Black War Bear
  [60118]={1, 5, "For The Alliance!"},

  -- Black War Elekk
  [48027]={1, 1, { {COLLECTOR_LIEUTENANT_KARTER, "74.7, 67.3", COLLECTOR_STORMWIND, "50,000 Honor Points"} } },

  -- Black War Mammoth
  [59785]={1, 1, { {COLLECTOR_KNIGHT_DAMERON, "51.7, 17.5", "Wintergrasp", "300 Stone Keeper's Shard"} } },

  -- Black War Ram
  [22720]={1, 1, { {COLLECTOR_LIEUTENANT_KARTER, "74.7, 67.3", COLLECTOR_STORMWIND, "50,000 Honor Points"} } },

  -- Black War Steed
  [22717]={1, 1, { {COLLECTOR_LIEUTENANT_KARTER, "74.7, 67.3", COLLECTOR_STORMWIND, "50,000 Honor Points"} } },

  -- Black War Tiger
  [22723]={1, 1, { {COLLECTOR_LIEUTENANT_KARTER, "74.7, 67.3", COLLECTOR_STORMWIND, "50,000 Honor Points"} } },

  -- Blue Dragonhawk
  [61996]={1, 5, "Mountain o' Mounts"},

  -- Blue Mechanostrider
  [10969]={1, 1, { {COLLECTOR_MILLI_FEATHERWHISTLE, "49.2, 48.0", COLLECTOR_DUN_MOROGH, "1g"} } },

  -- Brown Elekk
  [34406]={1, 1, { {COLLECTOR_TORALLIUS, "81.5, 52.0", COLLECTOR_EXODAR, "1g"} } },

  -- Brown Horse
  [458]={1, 1, {
                {COLLECTOR_GREGOR_MACVINCE,  "65.2, 51.5", COLLECTOR_DUSTWALLOW_MARSH,    "1g"},
                {COLLECTOR_KATIE_HUNTER,     "84.1, 65.5", COLLECTOR_ELWYNN_FOREST,       "1g"},
                {COLLECTOR_MERIDETH_CARLSON, "52.1, 55.6", COLLECTOR_HILLSBRAD_FOOTHILLS, "1g"},
                {COLLECTOR_UNGER_STATFORTH,  "8.6, 54.5",  COLLECTOR_WETLANDS,            "1g"}
               }
        },

  -- Brown Ram
  [6899]={1, 1, { {COLLECTOR_VERON_AMBERSTILL, "63.5, 50.7", COLLECTOR_DUN_MOROGH, "1g"} } },

  -- Chestnut Mare
  [6648]={1, 1, {
                 {COLLECTOR_GREGOR_MACVINCE,  "65.2, 51.5", COLLECTOR_DUSTWALLOW_MARSH,    "1g"},
                 {COLLECTOR_KATIE_HUNTER,     "84.1, 65.5", COLLECTOR_ELWYNN_FOREST,       "1g"},
                 {COLLECTOR_MERIDETH_CARLSON, "52.1, 55.6", COLLECTOR_HILLSBRAD_FOOTHILLS, "1g"},
                 {COLLECTOR_UNGER_STATFORTH,  "8.6, 54.5",  COLLECTOR_WETLANDS,            "1g"}
                }
          },

  -- Cobalt Riding Talbuk
  [39315]={1, 1, { {COLLECTOR_TRADER_NARASU, "54.6, 75.2", COLLECTOR_NAGRAND, "70g", "Kurenai - Exalted"} } },

  -- Cobalt War Talbuk
  [34896]={1, 1, { {COLLECTOR_TRADER_NARASU, "54.6, 75.2", COLLECTOR_NAGRAND, "100g", "Kurenai - Exalted"} } },

  -- Crusader's White Warhorse
  [68187]={1, 5, "A Tribute to Immortality"},

  -- Dark Riding Talbuk
  [39316]={1, 1, { {COLLECTOR_ALDRAAN, "42.9, 42.5", COLLECTOR_NAGRAND, "\n70 Halaa Battle Token\n15 Halaa Research Token"} } },

  -- Dark War Talbuk
  [34790]={1, 1, { {COLLECTOR_ALDRAAN, "42.9, 42.5", COLLECTOR_NAGRAND, "\n100 Halaa Battle Token\n20 Halaa Research Token"} } },

  -- Darnassian Mistsaber
  [63637]={1, 1, { {COLLECTOR_ROOK_HAWKFIST, "76.3, 19.2", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Ebon Gryphon
  [32239]={1, 1, { {COLLECTOR_BRUNN_FLAMEBEARD, "37.6, 56.0", COLLECTOR_SHADOWMOON_VALLEY, "50g"},
                   {COLLECTOR_MEI_FRANCIS,      "58.1, 42.5", COLLECTOR_DALARAN,           "50g"}, } },

  -- Exodar Elekk
  [63639]={1, 1, { {COLLECTOR_IRISEE, "76.2, 19.3", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Gnomeregan Mechanostrider
  [63638]={1, 1, { {COLLECTOR_RILLIE_SPINDLENUT, "76.5, 19.7", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Golden Gryphon
  [32235]={1, 1, { {COLLECTOR_BRUNN_FLAMEBEARD, "37.6, 56.0", COLLECTOR_SHADOWMOON_VALLEY, "50g"},
                   {COLLECTOR_MEI_FRANCIS,      "58.1, 42.5", COLLECTOR_DALARAN,           "50g"}, } },

  -- Grand Black War Mammoth
  [61465]={1, 3, {
                  {"Archavon the Stone Watcher", "Vault of Archavon", "1"},
                  {"Emalon the Storm Watcher",   "Vault of Archavon", "1"},
                 }
          },

  -- Grand Ice Mammoth
  [61470]={1, 1, { {COLLECTOR_LILLEHOFF, "66.2, 61.4", "The Storm Peaks", "10,000g", "The Sons of Hodir - Exalted"} } },

  -- Gray Elekk
  [35710]={1, 1, { {COLLECTOR_TORALLIUS, "81.5, 52.0", COLLECTOR_EXODAR, "1g"} } },

  -- Gray Ram
  [6777]={1, 1, { {COLLECTOR_VERON_AMBERSTILL, "63.5, 50.7", COLLECTOR_DUN_MOROGH, "1g"} } },

  -- Great Blue Elekk
  [35713]={1, 1, { {COLLECTOR_TORALLIUS, "81.5, 52.0", COLLECTOR_EXODAR, "10g"} } },

  -- Great Green Elekk
  [35712]={1, 1, { {COLLECTOR_TORALLIUS, "81.5, 52.0", COLLECTOR_EXODAR, "10g"} } },

  -- Great Purple Elekk
  [35714]={1, 1, { {COLLECTOR_TORALLIUS, "81.5, 52.0", COLLECTOR_EXODAR, "10g"} } },

  -- Great Red Elekk
  [65637]={1, 1, { {COLLECTOR_IRISEE, "76.2, 19.3", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Green Mechanostrider
  [17453]={1, 1, { {COLLECTOR_MILLI_FEATHERWHISTLE, "49.2, 48.0", COLLECTOR_DUN_MOROGH, "1g"} } },

  -- Ice Mammoth
  [59799]={1, 1, { {COLLECTOR_LILLEHOFF, "66.2, 61.4", "The Storm Peaks", "1,000g", "The Sons of Hodir - Revered"} } },

  -- Ironforge Ram
  [63636]={1, 1, { {COLLECTOR_DERRICK_BRINDLEBEARD, "76.5, 19.5", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Mekgineer's Chopper
  [60424]={2, 4, "Engineering", "450"},

  -- Pinto
  [472]={1, 1, {
                 {COLLECTOR_GREGOR_MACVINCE,  "65.2, 51.5", COLLECTOR_DUSTWALLOW_MARSH,    "1g"},
                 {COLLECTOR_KATIE_HUNTER,     "84.1, 65.5", COLLECTOR_ELWYNN_FOREST,       "1g"},
                 {COLLECTOR_MERIDETH_CARLSON, "52.1, 55.6", COLLECTOR_HILLSBRAD_FOOTHILLS, "1g"},
                 {COLLECTOR_UNGER_STATFORTH,  "8.6, 54.5",  COLLECTOR_WETLANDS,            "1g"}
                }
          },

  -- Purple Elekk
  [35711]={1, 1, { {COLLECTOR_TORALLIUS, "81.5, 52.0", COLLECTOR_EXODAR, "1g"} } },

  -- Quel'dorei Steed
  [66090]={1, 1, { {COLLECTOR_HIREN_LORESONG, "76.1, 19.6", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Red Mechanostrider
  [10873]={1, 1, { {COLLECTOR_MILLI_FEATHERWHISTLE, "49.2, 48.0", COLLECTOR_DUN_MOROGH, "1g"} } },

  -- Silver Covenant Hippogryph
  [66087]={1, 1, { {COLLECTOR_HIREN_LORESONG, "76.1, 19.6", COLLECTOR_ICECROWN, "150 Champion's Seal"} } },

  -- Silver Riding Talbuk
  [39317]={1, 1, { {COLLECTOR_TRADER_NARASU, "54.6, 75.2", COLLECTOR_NAGRAND, "70g", "Kurenai - Exalted"} } },

  -- Silver War Talbuk
  [34898]={1, 1, { {"Trader Narasu", "54.6, 75.2", COLLECTOR_NAGRAND, "100g", "Kurenai - Exalted"} } },

  -- Snowy Gryphon
  [32240]={1, 1, { {COLLECTOR_BRUNN_FLAMEBEARD, "37.6, 56.0", COLLECTOR_SHADOWMOON_VALLEY, "50g"},
                   {"Mei Francis",              "58.1, 42.5", COLLECTOR_DALARAN,           "50g"}, } },

  -- Spotted Frostsaber
  [10789]={1, 1, { {COLLECTOR_LELANAI, "38.3, 15.7", COLLECTOR_DARNASSUS, "1g"} } },

  -- Stormpike Battle Charger
  [23510]={1, 1, {
                  {COLLECTOR_GAELDEN_HAMMERSMITH,   "44.2, 18.2", "Alterac Valley",    "50,000 Honor Points"},
                  {COLLECTOR_THANTHALDIS_SNOWGLEAM, "39.5, 81.7", "Alterac Mountains", "50,000 Honor Points"}
                 }
           },

  -- Stormwind Steed
  [63232]={1, 1, { {COLLECTOR_CORPORAL_ARTHUR_FLEW, "76.5, 19.2", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Striped Dawnsaber
  [66847]={1, 1, { {COLLECTOR_LELANAI, "38.3, 15.7", COLLECTOR_DARNASSUS, "1g"} } },

  -- Striped Frostsaber
  [8394]={1, 1, { {COLLECTOR_LELANAI, "38.3, 15.7", COLLECTOR_DARNASSUS, "1g"} } },

  -- Striped Nightsaber
  [10793]={1, 1, { {COLLECTOR_LELANAI, "38.3, 15.7", COLLECTOR_DARNASSUS, "1g"} } },

  -- Swift Alliance Steed
  [68057]={1, 3, { {"10 man Heroic with 50 attempts left", "Trial of the Grand Crusader", "100"} } },

  -- Swift Blue Gryphon
  [32242]={1, 1, { {COLLECTOR_BRUNN_FLAMEBEARD, "37.6, 56.0", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,      "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Swift Brown Ram
  [23238]={1, 1, { {COLLECTOR_VERON_AMBERSTILL, "63.5, 50.7", COLLECTOR_DUN_MOROGH, "10g"} } },

  -- Swift Brown Steed
  [23229]={1, 1, {
                 {COLLECTOR_GREGOR_MACVINCE,  "65.2, 51.5", COLLECTOR_DUSTWALLOW_MARSH,    "10g"},
                 {COLLECTOR_KATIE_HUNTER,     "84.1, 65.5", COLLECTOR_ELWYNN_FOREST,       "10g"},
                 {COLLECTOR_MERIDETH_CARLSON, "52.1, 55.6", COLLECTOR_HILLSBRAD_FOOTHILLS, "10g"},
                }
          },

  -- Swift Frostsaber
  [23221]={1, 1, { {COLLECTOR_LELANAI, "38.3, 15.7", COLLECTOR_DARNASSUS, "10g"} } },

  -- Swift Gray Ram
  [23239]={1, 1, { {COLLECTOR_VERON_AMBERSTILL, "63.5, 50.7", COLLECTOR_DUN_MOROGH, "10g"} } },

  -- Swift Gray Steed
  [65640]={1, 1, { {COLLECTOR_CORPORAL_ARTHUR_FLEW, "76.5, 19.2", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Swift Green Gryphon
  [32290]={1, 1, { {COLLECTOR_BRUNN_FLAMEBEARD, "37.6, 56.0", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,      "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Swift Green Mechanostrider
  [23225]={1, 1, { {COLLECTOR_MILLI_FEATHERWHISTLE, "49.2, 48.0", COLLECTOR_DUN_MOROGH, "10g"} } },

  -- Swift Mistsaber
  [23219]={1, 1, { {COLLECTOR_LELANAI, "38.3, 15.7", COLLECTOR_DARNASSUS, "10g"} } },

  -- Swift Moonsaber
  [65638]={1, 1, { {COLLECTOR_ROOK_HAWKFIST, "76.3, 19.2", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Swift Palomino
  [23227]={1, 1, {
                 {COLLECTOR_GREGOR_MACVINCE,  "65.2, 51.5", COLLECTOR_DUSTWALLOW_MARSH,    "10g"},
                 {COLLECTOR_KATIE_HUNTER,     "84.1, 65.5", COLLECTOR_ELWYNN_FOREST,       "10g"},
                 {COLLECTOR_MERIDETH_CARLSON, "52.1, 55.6", COLLECTOR_HILLSBRAD_FOOTHILLS, "10g"},
                }
          },

  -- Swift Purple Gryphon
  [32292]={1, 1, { {COLLECTOR_BRUNN_FLAMEBEARD, "37.6, 56.0", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,      "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Swift Red Gryphon
  [32289]={1, 1, { {COLLECTOR_BRUNN_FLAMEBEARD, "37.6, 56.0", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,      "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Swift Stormsaber
  [23338]={1, 1, { {COLLECTOR_LELANAI, "38.3, 15.7", COLLECTOR_DARNASSUS, "10g"} } },

  -- Swift Violet Ram
  [65643]={1, 1, { {COLLECTOR_DERRICK_BRINDLEBEARD, "76.5, 19.5", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Swift White Mechanostrider
  [23223]={1, 1, { {COLLECTOR_MILLI_FEATHERWHISTLE, "49.2, 48.0", COLLECTOR_DUN_MOROGH, "10g"} } },

  -- Swift White Ram
  [23240]={1, 1, { {COLLECTOR_VERON_AMBERSTILL, "63.5, 50.7", COLLECTOR_DUN_MOROGH, "10g"} } },

  -- Swift White Steed
  [23228]={1, 1, {
                 {COLLECTOR_GREGOR_MACVINCE,  "65.2, 51.5", COLLECTOR_DUSTWALLOW_MARSH,    "10g"},
                 {COLLECTOR_KATIE_HUNTER,     "84.1, 65.5", COLLECTOR_ELWYNN_FOREST,       "10g"},
                 {COLLECTOR_MERIDETH_CARLSON, "52.1, 55.6", COLLECTOR_HILLSBRAD_FOOTHILLS, "10g"},
                }
          },

  -- Swift Yellow Mechanostrider
  [23222]={1, 1, { {COLLECTOR_MILLI_FEATHERWHISTLE, "49.2, 48.0", COLLECTOR_DUN_MOROGH, "10g"} } },

  -- Tan Riding Talbuk
  [39318]={1, 1, { {COLLECTOR_TRADER_NARASU, "54.6, 75.2", COLLECTOR_NAGRAND, "70g", "Kurenai - Exalted"} } },

  -- Tan War Talbuk
  [34899]={1, 1, { {COLLECTOR_TRADER_NARASU, "54.6, 75.2", COLLECTOR_NAGRAND, "100g", "Kurenai - Exalted"} } },

  -- Traveler's Tundra Mammoth
  [61425]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "20,000g"} } },

  -- Turbostrider
  [65642]={1, 1, { {COLLECTOR_RILLIE_SPINDLENUT, "76.5, 19.7", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Unpainted Mechanostrider
  [17454]={1, 1, { {COLLECTOR_MILLI_FEATHERWHISTLE, "49.2, 48.0", COLLECTOR_DUN_MOROGH, "1g"} } },

  -- White Ram
  [6898]={1, 1, { {COLLECTOR_VERON_AMBERSTILL, "63.5, 50.7", COLLECTOR_DUN_MOROGH, "1g"} } },

  -- White Riding Talbuk
  [39319]={1, 1, { {COLLECTOR_TRADER_NARASU, "54.6, 75.2", COLLECTOR_NAGRAND, "70g", "Kurenai - Exalted"} } },

  -- White War Talbuk
  [34897]={1, 1, { {COLLECTOR_TRADER_NARASU, "54.6, 75.2", COLLECTOR_NAGRAND, "100g", "Kurenai - Exalted"} } },

  -- Winterspring Frostsaber
  [17229]={1, 1, { {COLLECTOR_RIVERN_FROSTWIND, "49.9, 9.9", COLLECTOR_WINTERSPRING, "100g", "Wintersaber Trainers - Exalted"} } },

  -- Wooly Mammoth
  [59791]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "200 Emblem of Heroism"} } },
};



-- These are mounts that only Horde can get.
-- These have to be mounts that every member of the Horde can ride:
--   Orc, Undead, Tauren, Troll, Blood Elf
TheCollectorHordeMountTable = {
  -- Argent Hippogryph
  [63844]={1, 1, {
                  {COLLECTOR_DORU_THUNDERHORN,   "76.2, 24.5", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_ELIZA_KILLIAN,      "76.5, 24.2", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_FREKA_BLOODAXE,     "76.4, 24.3", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_SAMAMBA,            "76.1, 24.5", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                  {COLLECTOR_TRELLIS_MORNINGSUN, "76.3, 23.9", COLLECTOR_ICECROWN, "150 Champion's Seal"},
                 }
           },

  -- Armored Blue Wind Rider
  [61230]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "2,000g"} } },

  -- Armored Brown Bear
  [60116]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "750g"} } },

  -- Black Hawkstrider
  [35022]={1, 1, { {COLLECTOR_WINAESTRA, "61.0, 54.7", COLLECTOR_EVERSONG_WOODS, "1g"} } },

  -- Black Skeletal Horse
  [64977]={1, 1, { {COLLECTOR_ZACARIAH_POST, "59.9, 52.6", COLLECTOR_TIRISFAL_GLADES, "1g"} } },

  -- Black War Bear
  [60119]={1, 5, "For The Horde!"},

  -- Black War Kodo
  [22718]={1, 1, { {COLLECTOR_RAIDER_BORK, "37.9, 64.5", COLLECTOR_ORGRIMMAR, "50,000 Honor Points"} } },

  -- Black War Mammoth
  [59788]={1, 1, { {COLLECTOR_STONE_GUARD_MUKAR, "51.7, 17.5", "Wintergrasp", "300 Stone Keeper's Shard"} } },

  -- Black War Raptor
  [22721]={1, 1, { {COLLECTOR_RAIDER_BORK, "37.9, 64.5", COLLECTOR_ORGRIMMAR, "50,000 Honor Points"} } },

  -- Black War Wolf
  [22724]={1, 1, { {COLLECTOR_RAIDER_BORK, "37.9, 64.5", COLLECTOR_ORGRIMMAR, "50,000 Honor Points"} } },

  -- Black Wolf
  [64658]={1, 1, { {COLLECTOR_OGUNARO_WOLFRUNNER, "69.3, 12.7", COLLECTOR_ORGRIMMAR, "1g"} } },

  -- Blue Hawkstrider
  [35020]={1, 1, { {COLLECTOR_WINAESTRA, "61.0, 54.7", COLLECTOR_EVERSONG_WOODS, "1g"} } },

  -- Blue Skeletal Horse
  [17463]={1, 1, { {COLLECTOR_ZACARIAH_POST, "59.9, 52.6", COLLECTOR_TIRISFAL_GLADES, "1g"} } },

  -- Blue Wind Rider
  [32244]={1, 1, { {COLLECTOR_DAMA_WILDMANE, "29.2, 29.5", COLLECTOR_SHADOWMOON_VALLEY, "50g"},
                   {COLLECTOR_MEI_FRANCIS,   "58.1, 42.5", COLLECTOR_DALARAN,           "50g"}, } },

  -- Brown Kodo
  [18990]={1, 1, { {COLLECTOR_HARB_CLAWHOOF, "47.5, 58.5", COLLECTOR_MULGORE, "1g"} } },

  -- Brown Skeletal Horse
  [17464]={1, 1, { {COLLECTOR_ZACARIAH_POST, "59.9, 52.6", COLLECTOR_TIRISFAL_GLADES, "1g"} } },

  -- Brown Wolf
  [6654]={1, 1, { {COLLECTOR_OGUNARO_WOLFRUNNER, "69.3, 12.7", COLLECTOR_ORGRIMMAR, "1g"} } },

  -- Cobalt Riding Talbuk
  [39315]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "70g", "The Mag'har - Exalted"} } },

  -- Cobalt War Talbuk
  [34896]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "100g", "The Mag'har - Exalted"} } },

  -- Crusader's Black Warhorse
  [68188]={1, 5, "A Tribute to Immortality"},

  -- Darkspear Raptor
  [63635]={1, 1, { {COLLECTOR_SAMAMBA, "76.1, 24.5", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Dark Riding Talbuk
  [39316]={1, 1, { {COLLECTOR_COREIEL, "42.8, 42.6", COLLECTOR_NAGRAND, "\n70 Halaa Battle Token\n15 Halaa Research Token"} } },

  -- Dark War Talbuk
  [34790]={1, 1, { {COLLECTOR_COREIEL, "42.8, 42.6", COLLECTOR_NAGRAND, "\n100 Halaa Battle Token\n20 Halaa Research Token"} } },

  -- Dire Wolf
  [6653]={1, 1, { {COLLECTOR_OGURANO_WOLFRUNNER, "69.3, 12.7", COLLECTOR_ORGRIMMAR, "1g"} } },

  -- Emerald Raptor
  [8395]={1, 1, { {COLLECTOR_ZJOLNIR, "55.2, 75.6", COLLECTOR_DUROTAR, "1g"} } },

  -- Forsaken Warhorse
  [63643]={1, 1, { {COLLECTOR_ELIZA_KILLIAN, "76.5, 24.2", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Frostwolf Howler
  [23509]={1, 1, {
                  {COLLECTOR_GRUNNDA_WOLFHEART, "49.0, 85.5", "Alterac Valley",    "50,000 Honor Points"},
                  {COLLECTOR_JEKYLL_FLANDRING,  "62.8, 59.4", "Alterac Mountains", "50,000 Honor Points"},
                 }
           },

  -- Grand Black War Mammoth
  [61467]={1, 3, {
                  {"Archavon the Stone Watcher", "Vault of Archavon", "1"},
                  {"Emalon the Storm Watcher",   "Vault of Archavon", "1"},
                 }
          },

  -- Grand Ice Mammoth
  [61469]={1, 1, { {COLLECTOR_LILLEHOFF, "66.2, 61.4", "The Storm Peaks", "10,000g", "The Sons of Hodir - Exalted"} } },

  -- Gray Kodo
  [18989]={1, 1, { {COLLECTOR_HARB_CLAWHOOF, "47.5, 58.5", COLLECTOR_MULGORE, "1g"} } },

  -- Great Brown Kodo
  [23249]={1, 1, { {COLLECTOR_HARB_CLAWHOOF, "47.5, 58.5", COLLECTOR_MULGORE, "10g"} } },

  -- Great Gray Kodo
  [23248]={1, 1, { {COLLECTOR_HARB_CLAWHOOF, "47.5, 58.5", COLLECTOR_MULGORE, "10g"} } },

  -- Great Golden Kodo
  [65641]={1, 1, { {COLLECTOR_DORU_THUNDERHORN, "76.2, 24.5", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Great White Kodo
  [23247]={1, 1, { {COLLECTOR_HARB_CLAWHOOF, "47.5, 58.5", COLLECTOR_MULGORE, "10g"} } },

  -- Green Skeletal Warhorse
  [17465]={1, 1, { {COLLECTOR_ZACARIAH_POST, "59.9, 52.6", COLLECTOR_TIRISFAL_GLADES, "10g"} } },

  -- Green Wind Rider
  [32245]={1, 1, { {COLLECTOR_DAMA_WILDMANE, "29.2, 29.5", COLLECTOR_SHADOWMOON_VALLEY, "50g"},
                   {COLLECTOR_MEI_FRANCIS,   "58.1, 42.5", COLLECTOR_DALARAN,           "50g"}, } },

  -- Ice Mammoth
  [59797]={1, 1, { {COLLECTOR_LILLEHOFF, "66.2, 61.4", "The Storm Peaks", "1,000g", "The Sons of Hodir - Revered"} } },

  -- Mechano-Hog
  [55531]={2, 4, "Engineering", "450"},

  -- Ochre Skeletal Warhorse
  [66846]={1, 1, { {COLLECTOR_ZACARIAH_POST, "59.9, 52.6", COLLECTOR_TIRISFAL_GLADES, "10g"} } },

  -- Orgrimmar Wolf
  [63640]={1, 1, { {COLLECTOR_FREKA_BLOODAXE, "76.4, 24.3", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Purple Hawkstrider
  [35018]={1, 1, { {COLLECTOR_WINAESTRA, "61.0, 54.7", COLLECTOR_EVERSONG_WOODS, "1g"} } },

  -- Purple Skeletal Warhorse
  [23246]={1, 1, { {COLLECTOR_ZACARIAH_POST, "59.9, 52.6", COLLECTOR_TIRISFAL_GLADES, "10g"} } },

  -- Red Dragonhawk
  [61997]={1, 5, "Mountain o' Mounts" },

  -- Red Hawkstrider
  [34795]={1, 1, { {COLLECTOR_WINAESTRA, "61.0, 54.7", COLLECTOR_EVERSONG_WOODS, "1g"} } },

  -- Red Skeletal Horse
  [17462]={1, 1, { {COLLECTOR_ZACARIAH_POST, "59.9, 52.6", COLLECTOR_TIRISFAL_GLADES, "1g"} } },

  -- Red Skeletal Warhorse
  [22722]={1, 1, { {COLLECTOR_RAIDER_BORK, "37.9, 64.5", COLLECTOR_ORGRIMMAR, "50,000 Honor Points"} } },

  -- Silvermoon Hawkstrider
  [63642]={1, 1, { {COLLECTOR_TRELLIS_MORNINGSUN, "76.3, 23.9", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Silver Riding Talbuk
  [39317]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "70g", "The Mag'har - Exalted"} } },

  -- Silver War Talbuk
  [34898]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "100g", "The Mag'har - Exalted"} } },

  -- Sunreaver Dragonhawk
  [66088]={1, 1, { {COLLECTOR_VASARIN_REDMORN, "76, 24", COLLECTOR_ICECROWN, "150 Champion's Seal"} } },

  -- Sunreaver Hawkstrider
  [66091]={1, 1, { {COLLECTOR_VASARIN_REDMORN, "76, 24", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Swift Blue Raptor
  [23241]={1, 1, { {COLLECTOR_ZJOLNIR, "55.2, 75.6", COLLECTOR_DUROTAR, "10g"} } },

  -- Swift Brown Wolf
  [23250]={1, 1, { {COLLECTOR_OGUNARO_WOLFRUNNER, "69.3, 12.7", COLLECTOR_ORGRIMMAR, "10g"} } },

  -- Swift Burgundy Wolf
  [65646]={1, 1, { {COLLECTOR_FREKA_BLOODAXE, "76.4, 24.3", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Swift Gray Wolf
  [23252]={1, 1, { {COLLECTOR_OGUNARO_WOLFRUNNER, "69.3, 12.7", COLLECTOR_ORGRIMMAR, "10g"} } },

  -- Swift Green Hawkstrider
  [35025]={1, 1, { {COLLECTOR_WINAESTRA, "61.0, 54.7", COLLECTOR_EVERSONG_WOODS, "10g"} } },

  -- Swift Green Wind Rider
  [32295]={1, 1, { {COLLECTOR_DAMA_WILDMANE, "29.2, 29.5", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,   "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Swift Horde Wolf
  [68056]={1, 3, { {"10 man Heroic with 50 attempts left", "Trial of the Grand Crusader", "100"} } },

  -- Swift Olive Raptor
  [23242]={1, 1, { {COLLECTOR_ZJOLNIR, "55.2, 75.6", COLLECTOR_DUROTAR, "10g"} } },

  -- Swift Orange Raptor
  [23243]={1, 1, { {COLLECTOR_ZJOLNIR, "55.2, 75.6", COLLECTOR_DUROTAR, "10g"} } },

  -- Swift Pink Hawstrider
  [33660]={1, 1, { {COLLECTOR_WINAESTRA, "61.0, 54.7", COLLECTOR_EVERSONG_WOODS, "10g"} } },

  -- Swift Purple Hawkstrider
  [35027]={1, 1, { {COLLECTOR_WINAESTRA, "61.0, 54.7", COLLECTOR_EVERSONG_WOODS, "10g"} } },

  -- Swift Purple Raptor
  [65644]={1, 1, { {COLLECTOR_SAMAMBA, "76.1, 24.5", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Swift Purple Wind Rider
  [32297]={1, 1, { {COLLECTOR_DAMA_WILDMANE, "29.2, 29.5", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,   "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Swift Red Hawkstrider
  [65639]={1, 1, { {COLLECTOR_TRELLIS_MORNINGSUN, "76.3, 23.9", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- Swift Red Wind Rider
  [32246]={1, 1, { {COLLECTOR_DAMA_WILDMANE, "29.2, 29.5", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,   "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Swift Timber Wolf
  [23251]={1, 1, { {COLLECTOR_OGUNARO_WOLFRUNNER, "69.3, 12.7", COLLECTOR_ORGRIMMAR, "10g"} } },

  -- Swift Warstrider
  [35028]={1, 1, { {COLLECTOR_RAIDER_BORK, "37.9, 64.5", COLLECTOR_ORGRIMMAR, "50,000 Honor Points"} } },

  -- Swift Yellow Wind Rider
  [32296]={1, 1, { {COLLECTOR_DAMA_WILDMANE, "29.2, 29.5", COLLECTOR_SHADOWMOON_VALLEY, "100g"},
                   {COLLECTOR_MEI_FRANCIS,   "58.1, 42.5", COLLECTOR_DALARAN,           "100g"}, } },

  -- Tan Riding Talbuk
  [39318]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "70g", "The Mag'har - Exalted"} } },

  -- Tan War Talbuk
  [34899]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "100g", "The Mag'har - Exalted"} } },

  -- Tawny Wind Rider
  [32243]={1, 1, { {COLLECTOR_DAMA_WILDMANE, "29.2, 29.5", COLLECTOR_SHADOWMOON_VALLEY, "50g"},
                   {COLLECTOR_MEI_FRANCIS,   "58.1, 42.5", COLLECTOR_DALARAN,           "50g"}, } },

  -- Timber Wolf
  [580]={1, 1, { {COLLECTOR_OGUNARO_WOLFRUNNER, "69.3, 12.7", COLLECTOR_ORGRIMMAR, "1g"} } },

  -- Thunder Bluff Kodo
  [63641]={1, 1, { {COLLECTOR_DORU_THUNDERHORN, "76.2, 24.5", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Traveler's Tundra Mammoth
  [61447]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "20,000g"} } },

  -- Turquoise Raptor
  [10796]={1, 1, { {COLLECTOR_ZJOLNIR, "55.2, 75.6", COLLECTOR_DUROTAR, "1g"} } },

  -- Venomhide Ravasaur
  [64659]={1, 2, "They Grow Up So Fast"},

  -- Violet Raptor
  [10799]={1, 1, { {COLLECTOR_ZJOLNIR, "55.2, 75.6", COLLECTOR_DUROTAR, "1g"} } },

  -- White Kodo
  [64657]={1, 1, { {COLLECTOR_HARB_CLAWHOOF, "47.5, 58.5", COLLECTOR_MULGORE, "1g"} } },

  -- White Riding Talbuk
  [39319]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "70g", "The Mag'har - Exalted"} } },

  -- White Skeletal Warhorse
  [65645]={1, 1, { {COLLECTOR_ELIZA_KILLIAN, "76.5, 24.2", COLLECTOR_ICECROWN, "500g, 5 Champion's Seal"} } },

  -- White War Talbuk
  [34897]={1, 1, { {COLLECTOR_PROVISIONER_NASELA, "53.5, 36.9", COLLECTOR_NAGRAND, "100g", "The Mag'har - Exalted"} } },

  -- Wooly Mammoth
  [59793]={1, 1, { {COLLECTOR_MEI_FRANCIS, "58.1, 42.5", COLLECTOR_DALARAN, "200 Emblem of Heroism"} } },
};



-- These are mounts that are only available to Alliance Paladins.
TheCollectorAlliancePaladinMountTable = {
  -- Argent Charger
  [66906]={1, 1, { {COLLECTOR_DAME_EVNIKI_KAPSALIS, "69.4, 23.2", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Charger
  [23214]={1, 7, "Trained at any Paladin trainer\nRequires Level 60"},

  -- Warhorse
  [13819]={1, 7, "Trained at any Paladin trainer\nRequires Level 30"},
};



-- These are mounts that are only available to Horde Paladins.
TheCollectorHordePaladinMountTable = {
  -- Argent Charger
  [66906]={1, 1, { {COLLECTOR_DAME_EVNIKI_KAPSALIS, "69.4, 23.2", COLLECTOR_ICECROWN, "100 Champion's Seal"} } },

  -- Charger
  [34767]={1, 7, "Trained at any Paladin trainer\nRequires Level 60"},

  -- Warhorse
  [34769]={1, 7, "Trained at any Paladin trainer\nRequires Level 30"},
};



-- These are mounts that are only available to Warlocks.
TheCollectorWarlockMountTable = {
  -- Dreadsteed
  [23161]={1, 7, "Trained at any Warlock trainer\nRequires Level 60"},

  -- Felsteed
  [5784]={1, 7, "Trained at any Warlock trainer\nRequires Level 30"},
};



-- These are mounts that are only available to Death Knights.
TheCollectorDeathKnightMountTable = {
  -- Archerus Deathcharger
  [48778]={1, 7, "Reward from quest Into the Realm of Shadows"},

  -- Winged Steed of the Ebon Blade
  [54729]={1, 1, { {COLLECTOR_DREAD_COMMANDER_THALANOR, "84.1, 49.9", "Eastern Plaguelands", "1,000g"} } },
};



-- These are mounts that only engineers can make.
TheCollectorEngineerMountTable = {
  -- Flying Machine
  [44153]={2, 4, "Engineering", "350"},

  -- Turbo-Charged Flying Machine
  [44151]={2, 4, "Engineering", "375"},
};



-- These are mounts that only tailors can make.
TheCollectorTailorMountTable = {
  -- Flying Carpet
  [61451]={2, 4, "Tailoring", "410"},

  -- Frost Flying Carpet
  [75596]={1, 1, { {"Frozo the Renowned", "40.12, 28.05", COLLECTOR_DALARAN, "6 Frozen Orb"} } },

  -- Magnificent Flying Carpet
  [61309]={2, 4, "Tailoring", "425"},

--  [60975]=1,  -- Swift Ebonweave Carpet
--  [61442]=1,  -- Swift Mooncloth Carpet
--  [61446]=1,  -- Swift Spellfire Carpet
};



-- These are mounts that are hard to get that I haven't decided what to do with yet.
-- We put them here so it doesn't spew warnings about missing mounts for these.
TheCollectorSpecialMountTable = {
  -- Amani War Bear
  [43688]={1, 7, "Zul'Aman (Timed run)\nRemoved in 3.0"},

  -- Ancient Frostsaber
  [16056]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Arctic Wolf
  [16081]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Big Battle Bear
  [51412]={1, 7, "World of Warcraft TCG\nDrums of War pack\nThe Red Bearon card"},

  -- Big Blizzard Bear
  [58983]={3, 7, "BlizzCon 2008 Welcome package"},

  -- Black Proto-Drake
  [59976]={1, 7, "Reward from Glory of the Raider (Heroic)\nRemoved in 3.1"},

  -- Black Qiraji Battle Tank
  [26656]={1, 2, "Bang a Gong!"},

  -- Black Ram
  [17461]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Brewfest Ram
  [43899]={1, 7, "Reward from original Brewfest\nNo longer sold by vendors"},

  -- Brutal Nether Drake
  [58615]={1, 7, "Reward for Season 4 Arenas"},

  -- Deadly Gladiator's Frostwyrm
  [64927]={1, 7, "Reward for Season 5 Arenas"},

  -- Frost Ram
  [17460]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Furious Gladiator's Frostwyrm
  [65439]={1, 7, "Reward for Season 6 Arenas"},

  -- Green Kodo
  [18991]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Icy Blue Mechanostrider Mod A
  [17459]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Ivory Raptor
  [17450]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Little Ivory Raptor
  [68769]={1, 7, "World of Warcraft TCG\nScourgewar pack\nTiny card"},

  -- Little White Stallion
  [68768]={1, 7, "World of Warcraft TCG\nScourgewar pack\nTiny card"},

  -- Magic Rooster
  [65917]={1, 7, "World of Warcraft TCG\nFields of Honor pack\nEl Pollo Grande card"},

  -- Merciless Nether Drake
  [44744]={1, 7, "Reward for Season 2 Arenas"},

  -- Mottled Red Raptor
  [16084]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Nightsaber
  [16055]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Palomino
  [16082]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Plagued Proto-Drake
  [60021]={1, 7, "Reward from Glory of the Raider\nRemoved in 3.1"},

  -- Red Wolf
  [16080]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Relentless Gladiator's Frostwyrm
  [67336]={1, 7, "Reward for Season 7 Arenas"},

  -- Riding Turtle
  [30174]={1, 7, "World of Warcraft TCG\nHeroes of Azeroth pack\nSaltwater Snapjaw card"},

  -- Spectral Tiger
  [42776]={1, 7, "World of Warcraft TCG\nFires of Outland pack\nSpectral Tiger card"},

  -- Swift Nether Drake
  [37015]={1, 7, "Reward for Season 1 Arenas"},

  -- Swift Spectral Tiger
  [42777]={1, 7, "World of Warcraft TCG\nFires of Outland pack\nSwift Spectral Tiger card"},

  -- Swift Zhevra
  [49322]={1, 7, "Reward from Recruit-A-Friend promotion"},

  -- Teal Kodo
  [18992]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Vengeful Nether Drake
  [49193]={1, 7, "Reward for Season 3 Arenas"},

  -- White Stallion
  [16083]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- White Mechanostrider Mod B
  [15779]={1, 7, "Old-style armorless epic mount\nNo longer sold by vendors"},

  -- Wrathful Gladiator's Frost Wyrm
  [71810]={1, 7, "Reward for Season 8 Arenas"},

  -- X-51 Nether-Rocket
  [46197]={1, 7, "World of Warcraft TCG\nServants of the Betrayer pack\nX-51 Nether-Rocket card"},

  -- X-51 Nether-Rocket X-TREME
  [46199]={1, 7, "World of Warcraft TCG\nServants of the Betrayer pack\nX-51 Nether-Rocket X-TREME card"},

  -- 3.3.3 unknown locations
  -- Blazing Hippogryph
  [74856]={1, 7, "Unknown"},

  -- Celestial Steed
  [76153]={1, 7, "Unknown"},

  -- Crimson Deathcharger
  [73313]={1, 7, "Unknown"},

  -- Wooly White Rhino
  [74918]={1, 7, "Unknown"},

  -- X-53 Touring Rocket
  [76154]={1, 7, "Unknown"},

};
