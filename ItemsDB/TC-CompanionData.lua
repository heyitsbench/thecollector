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
                  {COLLECTOR_DROP_MAGELORD, COLLECTOR_AZSHARA, "1"},
                  {COLLECTOR_DROP_SCALEBANE, COLLECTOR_AZSHARA, "1"},
                  {COLLECTOR_DROP_MAGEWEAVER, COLLECTOR_AZSHARA, "1"},
                 }
          },

  -- Baby Blizzard Bear
  [61855]={3, 7, COLLECTOR_FOURTH_ANNIVERSARY},

  -- Black Kingsnake
  [10714]={2, 1, { {COLLECTOR_XANTISH, COLLECTOR_NEAR_SPIRITS_VALLEY, COLLECTOR_ORGRIMMAR, "50s"} } },

  -- Black Tabby Cat
  [10675]={2, 3, {
                  {COLLECTOR_DROP_SPELLSCRIBE, COLLECTOR_SILVERPINE_FOREST, "19"},
                  {COLLECTOR_DROP_THEURGIST, COLLECTOR_ALTERAC_MOUNTAINS, "0.1"},
                  {COLLECTOR_DROP_SUMMONER, COLLECTOR_ALTERAC_MOUNTAINS, "0.1"},
                  {COLLECTOR_DROP_SHIELD_GUARD, COLLECTOR_ALTERAC_MOUNTAINS, "0.1"},
                 }
          },

  -- Blue Clockwork Rocket Bot
  [75134]={1, 1, { {COLLECTOR_JEPETTO_JOYBUZZ, "44.64, 45.61", COLLECTOR_DALARAN, "50g"} } },

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
  [10716]={2, 1, { {COLLECTOR_XANTISH, COLLECTOR_NEAR_SPIRITS_VALLEY, COLLECTOR_ORGRIMMAR, "50s"} } },

  -- Calico Cat
  [65358]={2, 1, { {COLLECTOR_BREANNI, "58.8, 39.0", COLLECTOR_DALARAN, "50g"} } },

  -- Chuck
  [46426]={1, 3, { {COLLECTOR_FISHING_DAILY_BAG, COLLECTOR_CROCOLISKS_IN_THE_CITY, "1.1"} } },

  -- Cobra Hatchling
  [61351]={2, 3, { {COLLECTOR_MYSTERIOUS_EGG, COLLECTOR_GEEN.." (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\n"..COLLECTOR_ORACLES_REVERED, "19"} } },

  -- Cockatiel
  [10680]={2, 1, { {COLLECTOR_NARKK, "28.2, 74.5", COLLECTOR_STRANGLETHORN_VALE, "40s"} } },

  -- Cockroach
  [10688]={2, 1, {
                  {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "50s"},
                  {COLLECTOR_JEREMIAH_PAYSON, "67.5, 44.6", COLLECTOR_UNDERCITY, "50s"},
                 }
          },

  -- Core Hound Pup
  [69452]={1, 7, COLLECTOR_AUTHENTICATOR},

  -- Cornish Rex Cat
  [10674]={2, 1, { {COLLECTOR_DONNI_ANTHANIA, "44.2, 53.4", COLLECTOR_ELWYNN_FOREST, "40s"} } },

  -- Crimson Snake
  [10717]={2, 1, {
                  {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "50s"},
                  {COLLECTOR_XANTISH, COLLECTOR_NEAR_SPIRITS_VALLEY, COLLECTOR_ORGRIMMAR, "50s"},
                 }
          },

  -- Crimson Whelpling
  [10697]={2, 3, {
                  {COLLECTOR_DROP_FLAMESNORTING_WHELP, COLLECTOR_WETLANDS, "0.3"},
                  {COLLECTOR_DROP_CRIMSON_WHELP, COLLECTOR_WETLANDS, "0.2"},
                  {COLLECTOR_DROP_RED_WHELP, COLLECTOR_WETLANDS, "0.2"},
                 }
          },

  -- Curious Oracle Hatchling
  [65381]={1, 2, COLLECTOR_ORPHANAGE},

  -- Curious Wolvar Pup
  [65382]={1, 2, COLLECTOR_ORPHANAGE},

  -- Dark Whelpling
  [10695]={2, 3, {
                  {COLLECTOR_DROP_SEARING_WHELP, COLLECTOR_DUSTWALLOW_MARSH, "0.1"},
                  {COLLECTOR_DROP_SCALDING_WHELP, COLLECTOR_BADLANDS, "0.1"},
                 }
          },

  -- Darting Hatchling
  [67413]={2, 3, { {COLLECTOR_DROP_DART, COLLECTOR_DUSTWALLOW_MARSH, "100"} } },

  -- Deviate Hatchling
  [67414]={2, 3, { {COLLECTOR_DROP_DEVIATE_RAVAGER, COLLECTOR_WAILING_CAVERNS, "1"},
                   {COLLECTOR_DROP_DEVIATE_GUARDIAN, COLLECTOR_WAILING_CAVERNS, "1"} } },

  -- Disgusting Oozeling
  [25162]={2, 3, { {COLLECTOR_OOZING_BAG, COLLECTOR_OOZING_BAG_DESC, "1.4"} } },

  -- Dun Morogh Cub
  [62508]={2, 1, { {COLLECTOR_DERRICK_BRINDLEBEARD, "76.5, 19.5", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Durotar Scorpion
  [62513]={2, 1, { {COLLECTOR_FREKA_BLOODAXE, "76.4, 24.3", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Egbert
  [40614]={1, 2, COLLECTOR_ORPHANAGE},

  -- Elwynn Lamb
  [62516]={2, 1, { {COLLECTOR_CORPORAL_ARTHUR_FLEW, "76.5, 19.2", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Emerald Whelpling
  [10698]={2, 3, { {COLLECTOR_DROP_DREAMING_WHELP, COLLECTOR_SWAMP_OF_SORROWS, "0.2"} } },

  -- Enchanted Broom
  [62564]={2, 1, { {COLLECTOR_TRELLIS_MORNINGSUN, "76.3, 23.9", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Father Winter's Helper
  [26533]={2, 3, { {COLLECTOR_GAILY_WRAPPED_PRESENT, COLLECTOR_GAILY_WRAPPED_PRESENT_DESC, "26"} } },

  -- Firefly
  [36034]={2, 3, { {COLLECTOR_DROP_BOGFLARE_NEEDLER, COLLECTOR_ZANGARMARSH, "0.1"} } },

  -- Ghostly Skull
  [53316]={1, 1, { {COLLECTOR_DARAHIR, "63.7, 16.5", COLLECTOR_DALARAN, "40g"} } },

  -- Giant Sewer Rat
  [59250]={1, 3, { {COLLECTOR_RARE_FISHING, COLLECTOR_DALARAN_SEWERS, "1"} } },

  -- Golden Dragonhawk Hatchling
  [36027]={2, 1, { {COLLECTOR_JILANNE, "44.8, 71.7", COLLECTOR_EVERSONG_WOODS, "50s"} } },

  -- Great Horned Owl
  [10707]={2, 1, { {COLLECTOR_SHYLENAI, "69.8, 45.4", COLLECTOR_DARNASSUS, "50s"} } },

  -- Green Wing Macaw
  [10683]={2, 3, { {COLLECTOR_DROP_DEFIAS_PIRATE, COLLECTOR_DEADMINES, "2"} } },

  -- Gryphon Hatchling
  [69535]={1, 7, COLLECTOR_BLIZZARD_STORE},

  -- Gundrak Hatchling
  [67415]={2, 3, { {COLLECTOR_DROP_GUNDRAK_RAPTOR, COLLECTOR_ZULDRAK, "1"} } },

  -- Hawk Owl
  [10706]={2, 1, { {COLLECTOR_SHYLENAI, "69.8, 45.4", COLLECTOR_DARNASSUS, "50s"} } },

  -- Hyacinth Macaw
  [10682]={2, 3, {
                  {COLLECTOR_DROP_PRETTY_BOY_DUNCAN, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_RAIDER, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_DECKHAND, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_MAGE, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_SWABBY, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_SWASHBUCKLER, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_SEA_DOG, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_WARLOCK, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                  {COLLECTOR_DROP_BLOODSAIL_MAGUS, COLLECTOR_STRANGLETHORN_VALE, "0.1"},
                 }
          },

  -- Jubling
  [23811]={1, 2, COLLECTOR_SPAWN_OF_JUBJUB},

  -- Kirin Tor Familiar
  [61472]={1, 5, COLLECTOR_HIGHER_LEARNING},

  -- Leaping Hatchling
  [67416]={2, 3, { {COLLECTOR_DROP_TAKK, COLLECTOR_BARRENS, "100"} } },

  -- Lifelike Toad
  [19772]={2, 4, COLLECTOR_ENGINEERING, "265"},

  -- Lil' K.T.
  [69677]={1, 7, COLLECTOR_BLIZZARD_STORE},

  -- Lil' Smoky
  [15049]={2, 4, COLLECTOR_ENGINEERING, "205"},

  -- Little Fawn
  [61991]={1, 5, COLLECTOR_LIL_GAME_HUNTER},

  -- Magical Crawdad
  [33050]={1, 7, COLLECTOR_MR_PINCHY},

  -- Mana Wyrmling
  [35156]={2, 1, { {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "40g"} } },

  -- Mechanical Chicken
  [12243]={2, 2, COLLECTOR_OOX_OF_YOUR_OWN},

  -- Mechanical Squirrel
  [4055]={2, 4, COLLECTOR_ENGINEERING, "265"},

  -- Mechanopeep
  [62674]={2, 1, { {COLLECTOR_RILLIE_SPINDLENUT, "76.5, 19.7", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Miniwing
  [39181]={1, 2, COLLECTOR_SKYWING},

  -- Mojo
  [43918]={1, 7, COLLECTOR_HEX_STICK},

  -- Mr. Wiggles
  [28739]={1, 2, COLLECTOR_A_WARDEN_OF_FACTION},

  -- Muckbreath
  [43698]={1, 3, { {COLLECTOR_FISHING_DAILY_BAG, COLLECTOR_CROCOLISKS_IN_THE_CITY, "1.1"} } },

  -- Mulgore Hatchling
  [62542]={2, 1, { {COLLECTOR_DORA_THUNDERHORN, "76.2, 24.5", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Nether Ray Fry
  [51716]={1, 1, { {COLLECTOR_GRELLA, "64.3, 66.3", COLLECTOR_TEROKKAR_FOREST, "40g", COLLECTOR_SHATARI_SKYGUARD_EXALTED} } },

  -- Obsidian Hatchling
  [67417]={2, 1, { {COLLECTOR_BREANNI, "58.8, 39.0", COLLECTOR_DALARAN, "50g"} } },

  -- Orange Tabby Cat
  [10676]={2, 1, { {COLLECTOR_DONNI_ANTHANIA, "44.2, 53.4", COLLECTOR_ELWYNN_FOREST, "40s"} } },

  -- Pandaren Monk
  [69541]={3, 7, COLLECTOR_BLIZZARD_STORE},

  -- Peanut
  [40634]={1, 2, COLLECTOR_A_WARDEN_OF_FACTION},

  -- Peddlefeet
  [27570]={1, 3, { {COLLECTOR_GIFT_OF_ADORATION, COLLECTOR_VALENTINES_DAY, "1"} } },

  -- Pengu
  [61357]={1, 1, {
                  {COLLECTOR_SAIRUK, "48.5, 75.7", COLLECTOR_DRAGONBLIGHT, "12g", COLLECTOR_KALUAK_EXALTED},
                  {COLLECTOR_TANAIKA, "25.5, 58.7", COLLECTOR_HOWLING_FJORD, "12g", COLLECTOR_KALUAK_EXALTED},
                 }
          },

  -- Perky Pug
  [70613]={1, 5, COLLECTOR_LFG_ACHIEVEMENT},

  -- Pet Bombling  [15048]={2, 4, COLLECTOR_ENGINEERING, "205" },

  -- Phoenix Hatchling
  [46599]={1, 3, { {COLLECTOR_DROP_KAEL_THAS, COLLECTOR_MAGISTERS_TERRACE, "6"} } },

  -- Pint-Sized Pink Elekk
  [44369]={1, 1, {
                  {COLLECTOR_BELBI_QUICKSWITCH, "49.3, 39.5", COLLECTOR_DUN_MOROGH, "100 "..COLLECTOR_BREWFEST_TOKENS"},
                  {COLLECTOR_BLIX_FIXWIDGET, "44.1, 17.9", COLLECTOR_DUROTAR, "100 "..COLLECTOR_BREWFEST_TOKENS"},
                 }
          },

  -- Plump Turkey
  [61773]={1, 5, COLLECTOR_PILGRIM},

  -- Proto-Drake Whelp
  [61350]={2, 3, { {COLLECTOR_MYSTERIOUS_EGG, COLLECTOR_GEEN.." (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\n"..COLLECTOR_ORACLES_REVERED, "8"} } },

  -- Ravasaur Hatchling
  [67418]={2, 3, { {COLLECTOR_DROP_RAVASAUR_MATRIARCH, COLLECTOR_UNGORO_CRATER, "100"} } },

  -- Razormaw Hatchling
  [67419]={2, 3, { {COLLECTOR_DROP_RAZORMAW_MATRIARCH, COLLECTOR_WETLANDS, "100"} } },

  -- Razzashi Hatchling
  [67420]={2, 3, { {COLLECTOR_DROP_RAZZASHI_RAPTOR, COLLECTOR_ZULGURUB, "1"} } },

  -- Red Dragonhawk Hatchling
  [36028]={2, 1, { {COLLECTOR_JILANNE, "44.8, 71.7", COLLECTOR_EVERSONG_WOODS, "50s"} } },

  -- Red Moth
  [35909]={2, 1, { {COLLECTOR_DEALER_RASHAAD, "43.5, 35.2", COLLECTOR_NETHERSTORM, "10g"} } },

  -- Scorchling
  [45890]={1, 3, { {COLLECTOR_ICE_CHEST, COLLECTOR_MIDSUMMER_SLAVE_PENS, "1.7"} } },

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
  [10677]={2, 3, { {COLLECTOR_COOKIE, COLLECTOR_DEADMINES, "15"} } },

  -- Silver Dragonhawk Hatchling
  [36029]={2, 1, { {COLLECTOR_JILANNE, "44.8, 71.7", COLLECTOR_EVERSONG_WOODS, "50s"} } },

  -- Silver Tabby Cat
  [10678]={2, 1, { {COLLECTOR_DONNI_ANTHANIA, "44.2, 53.4", COLLECTOR_ELWYNN_FOREST, "40s"} } },

  -- Sinister Squashling
  [42609]={1, 3, { {COLLECTOR_DROP_HEADLESS_HORSEMAN, COLLECTOR_HALLOWEEN_SCARLET_MONASTERY, "5"} } },

  -- Smolderweb Hatchling
  [16450]={1, 2, COLLECTOR_NASTY},

  -- Snarly
  [46425]={1, 3, { {COLLECTOR_FISHING_DAILY_BAG, COLLECTOR_CROCOLISKS_IN_THE_CITY, "1.1"} } },

  -- Snowshoe Rabbit
  [10711]={2, 1, { {COLLECTOR_VARLYN_AMBERSTILL, "63.2, 51.0", COLLECTOR_DUN_MOROGH, "20s"} } },

  -- Speedy
  [28738]={1, 2, COLLECTOR_A_WARDEN_OF_FACTION},

  -- Spirit of Summer
  [28871]={1, 1, { {COLLECTOR_MIDSUMMER_VENDOR, "", COLLECTOR_MIDSUMMER_MAIN_CITIES, "350 "..COLLECTOR_BURNING_BLOSSOMS} } },

  -- Spring Rabbit
  [61725]={1, 1, { {COLLECTOR_NOBLEGARDEN_VENDOR, "", COLLECTOR_NOBLEGARDEN, "100 "..COLLECTOR_NOBLEGARDEN_CHOCOLATE} } },

  -- Stinker
  [40990]={1, 5, COLLECTOR_SHOP_PET_SMART},

  -- Strand Crawler
  [62561]={1, 3, { {COLLECTOR_FISHING_DAILY_BAG, COLLECTOR_DALARAN_FISHING_DAILY, "3"} } },

  -- Teldrassil Sproutling
  [62491]={2, 1, { {COLLECTOR_ROOK_HAWKFIST, "76.3, 19.2", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Tickbird Hatchling
  [61348]={2, 3, { {COLLECTOR_MYSTERIOUS_EGG, COLLECTOR_GEEN.." (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\n"..COLLECTOR_ORACLES_REVERED, "21"} } },

  -- Tiny Sporebat
  [45082]={1, 1, { {COLLECTOR_MYCAH, "17.9, 51.2", COLLECTOR_ZANGARMARSH, "30 "..COLLECTOR_GLOWCAP, COLLECTOR_SPOREGGAR_EXALTED} } },

  -- Tiny Snowman
  [26045]={2, 3, { {COLLECTOR_GAILY_WRAPPED_PRESENT, COLLECTOR_GAILY_WRAPPED_PRESENT_DESC, "25"} } },

  -- Tirisfal Batling
  [62510]={2, 1, { {COLLECTOR_ELIZA_KILLIAN, "76.5, 24.2", COLLECTOR_ICECROWN, "40 "..COLLECTOR_CHAMPION_SEAL} } },

  -- Toothy
  [43697]={1, 3, { {COLLECTOR_FISHING_DAILY_BAG, COLLECTOR_CROCOLISKS_IN_THE_CITY, "1.1"} } },

  -- Toxic Wasteling
  [71840]={1, 3, { {COLLECTOR_DROP_APOTHECARY_HUMMEL, COLLECTOR_VALENTINES_DAY_SFK, "25"} } },

  -- Tranquil Mechanical Yeti
  [26010]={2, 4, COLLECTOR_ENGINEERING, "250"},

  -- Tree Frog
  [10704]={2, 1, {
                  {COLLECTOR_FLIK, "35.0, 34.3", COLLECTOR_TEROKKAR_FOREST, "1g", COLLECTOR_DMF},
                  {COLLECTOR_FLIK, "42.2, 66.7", COLLECTOR_ELWYNN_FOREST, "1g", COLLECTOR_DMF},
                  {COLLECTOR_FLIK, "37.4, 38.0", COLLECTOR_MULGORE, "1g", COLLECTOR_DMF},
                 }
          },

  -- Westfall Chicken
  [13548]={1, 2, COLLECTOR_CLUCK},

  -- Whiskers the Rat
  [28740]={1, 2, COLLECTOR_A_WARDEN_OF_FACTION},

  -- White Kitten
  [10679]={2, 1, { {COLLECTOR_LIL_TIMMY, COLLECTOR_NEAR_CANALS, COLLECTOR_STORMWIND, "60s"} } },

  -- White Moth
  [35911]={2, 1, { {COLLECTOR_SIXX, "30.0, 33.4", COLLECTOR_EXODAR, "50s"} } },

  -- White Tickbird Hatchling
  [61349]={2, 3, { {COLLECTOR_MYSTERIOUS_EGG, COLLECTOR_GEEN.." (54.5, 56.2)\n"..COLLECTOR_SHOLAZAR_BASIN.."\n3g\n"..COLLECTOR_ORACLES_REVERED, "20"} } },

  -- Willy
  [40613]={1, 2, COLLECTOR_ORPHANAGE},

  -- Wind Rider Cub
  [69536]={1, 7, COLLECTOR_BLIZZARD_STORE},

  -- Winter Reindeer
  [26529]={2, 3, { {COLLECTOR_GAILY_WRAPPED_PRESENT, COLLECTOR_GAILY_WRAPPED_PRESENT_DESC, "25"} } },

  -- Winter's Little Helper
  [26541]={2, 3, { {COLLECTOR_GAILY_WRAPPED_PRESENT, COLLECTOR_GAILY_WRAPPED_PRESENT_DESC, "25"} } },

  -- Wolpertinger
  [39709]={1, 1, {
                  {COLLECTOR_BLIX_FIXWIDGET, "44.1, 17.9", COLLECTOR_DUROTAR, "50s"},
                  {COLLECTOR_LARKIN_THUNDERBREW, "19.5, 53.2", COLLECTOR_IRONFORGE, "50s"},
                  {COLLECTOR_RAYMA, "37.9, 85.6", COLLECTOR_ORGRIMMAR, "50s"},
                 }
          },

  -- Wood Frog
  [10703]={2, 1, {
                  {COLLECTOR_FLIK, "35.0, 34.3", COLLECTOR_TEROKKAR_FOREST, "1g", COLLECTOR_DMF},
                  {COLLECTOR_FLIK, "42.2, 66.7", COLLECTOR_ELWYNN_FOREST, "1g", COLLECTOR_DMF},
                  {COLLECTOR_FLIK, "37.4, 38.0", COLLECTOR_MULGORE, "1g", COLLECTOR_DMF},
                 }
          },

  -- Worg Pup
  [15999]={1, 2, COLLECTOR_KIBLERS_EXOTIC_PETS},

  -- Yellow Moth
  [35910]={2, 1, { {COLLECTOR_SIXX, "30.0, 33.4", COLLECTOR_EXODAR, "50s"} } },

};



-- These are companions that only Alliance can get.
TheCollectorAllianceCompanionTable = {
  -- Argent Squire
  [62609]={1, 2, COLLECTOR_CHAMPION_RISES},

  -- Sprite Darter Hatchling
  [15067]={1, 2, COLLECTOR_BECOMING_A_PARENT},
};



-- These are companions that only Horde can get.
TheCollectorHordeCompanionTable = {
  -- Argent Gruntling
  [62746]={1, 2, COLLECTOR_CHAMPION_RISES},

  -- Sprite Darter Hatchling
  [15067]={1, 3, { {COLLECTOR_DROP_SPRITE_DARTER, COLLECTOR_FERALAS, "1"} } },
};



-- These are companions that only engineers can get.
TheCollectorEngineerCompanionTable = {

};



-- These are companions that are hard to get that I haven't decided what to do with yet.
-- We put them here so it doesn't spew warnings about missing companions for these.
TheCollectorSpecialCompanionTable = {
  -- Bananas
  [40549]={1, 7, COLLECTOR_TCG_MUKLA},

  -- Battle-bot
  [65682]={1, 7, COLLECTOR_MTN_DEW_PROMO},

  -- Clockwork Rocket Bot
  [54187]={1, 7, COLLECTOR_WINTER_VEIL_2007_GIFT},

  -- Corrupted Kitten
  [15648]={4, 7, COLLECTOR_UNOBTAINABLE},

  -- Dragon Kite
  [45127]={1, 7, COLLECTOR_TCG_KITING},

  -- Essence of Competition
  [48408]={1, 7, COLLECTOR_OLYMPICS_ASIA},
  -- Ethereal Soul-Trader
  [49964]={1, 7, COLLECTOR_TCG_ETHEREAL_PLUNDERER},

  -- Frosty
  [52615]={3, 7, COLLECTOR_WOTLK_COLLECTORS_EDITION},

  -- Golden Pig
  [45174]={1, 7, COLLECTOR_UNKNOWN_ASIA},

  -- Grunty
  [66030]={3, 7, COLLECTOR_BLIZZCON_2009},

  -- Gurky
  [27241]={3, 7, COLLECTOR_FAN_WEBSITES_PROMO},

  -- Hippogryph Hatchling
  [30156]={1, 7, COLLECTOR_TCG_THUNDERHEAD_HIPPOGRYPH},

  -- Jade Tiger
  [66520]={1, 7, COLLECTOR_JADE_TIGER_GIVEAWAY},

  -- Lil XT
  [75906]={1, 7, COLLECTOR_BLIZZARD_STORE},

  -- Loggerhead Snapjaw
  [23429]={2, 7, COLLECTOR_UNOBTAINABLE},

  -- Lucky
  [40319]={3, 7, COLLECTOR_INVITATIONAL_2007},

  -- Lucky
  [40405]={3, 7, COLLECTOR_INVITATIONAL_2007},

  -- Lurky
  [24988]={1, 7, COLLECTOR_EURO_TBC_COLLECTORS_EDITION},

  -- Mini Diablo
  [17708]={3, 7, COLLECTOR_VANILLA_COLLECTORS_EDITION},

  -- Mini Thor
  [78381]={3, 7, COLLECTOR_SC2_COLLECTORS_EDITION},

  -- Mini Tyrael
  [53082]={3, 7, COLLECTOR_INVITATIONAL_2008},

  -- Mr. Chilly
  [55068]={3, 7, COLLECTOR_BNET_TRANSFER},

  -- Murkimus the Gladiator
  [63318]={3, 7, COLLECTOR_PVP_TOURNAMENT_WINS},

  -- Murky
  [24696]={3, 7, COLLECTOR_BLIZZCON_2005},

  -- Netherwhelp
  [32298]={3, 7, COLLECTOR_TBC_COLLECTORS_EDITION},

  -- Onyx Panther
  [67527]={1, 7, COLLECTOR_UNKNOWN_KOREA},

  -- Onyxia Whelpling
  [69002]={3, 7, COLLECTOR_FIFTH_ANNIVERSARY},

  -- Panda Cub
  [17707]={3, 7, COLLECTOR_VANILLA_COLLECTORS_EDITION},

  -- Poley
  [28505]={3, 7, COLLECTOR_COCA_COLA_PROMO},

  -- Rocket Chicken
  [45125]={1, 7, COLLECTOR_TCG_ROBOTIC_HOMING_CHICKEN},

  -- Silver Pig
  [45175]={1, 7, COLLECTOR_UNKNOWN_ASIA},

  -- Spectral Tiger Cub
  [68810]={1, 7, COLLECTOR_TCG_SPECTRAL_TIGER_CUB},

  -- Spirit of Competition
  [48406]={1, 7, COLLECTOR_OLYMPICS_VICTORY},

  -- Tiny Green Dragon
  [23531]={1, 7, COLLECTOR_COCA_COLA_PROMO},

  -- Tiny Red Dragon
  [23530]={1, 7, COLLECTOR_COCA_COLA_PROMO},

  -- Tuskarr Kite
  [68767]={1, 7, COLLECTOR_TCG_TUSKARR_KITE},

  -- Vampiric Batling
  [51851]={1, 3, { {COLLECTOR_DROP_TENRIS_MIRKBLOOD, COLLECTOR_PREPATCH_KARA, "100"} } },

  -- XS-001 Constructor Bot
  [64351]={4, 7, COLLECTOR_PTR_APPRECIATION},

  -- Zergling
  [17709]={3, 7, COLLECTOR_VANILLA_COLLECTORS_EDITION},


  -- 3.2.2 unknown locations
  -- Baby Shark
  [25849]={1, 7, COLLECTOR_UNOBTAINABLE},

  -- Zipao Tiger
  [69539]={1, 7, COLLECTOR_UNOBTAINABLE},

  -- 3.3.3 unknown locations
  -- Celestial Dragon
  [75613]={1, 7, COLLECTOR_UNOBTAINABLE},
};
