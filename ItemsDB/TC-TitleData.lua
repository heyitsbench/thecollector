--[[

TC-TitleData.lua

Title IDs for all the titles a player could potentially have.

--]]


-- These are titles that either faction can get.
TheCollectorCommonTitleTable = {
  -- Gladiator
  [29]={4, 7, COLLECTOR_TITLE_REQ_GLADIATOR},

  -- Duelist
  [30]={4, 7, COLLECTOR_TITLE_REQ_DUELIST},

  -- Rival
  [31]={4, 7, COLLECTOR_TITLE_REQ_RIVAL},

  -- Challenger
  [32]={4, 7, COLLECTOR_TITLE_REQ_CHALLENGER},

  -- of the Shattered Sun
  [38]={4, 7, COLLECTOR_TITLE_REQ_SHATTERED_SUN},

  -- Battlemaster
  [41]={4, 5, COLLECTOR_TITLE_REQ_BATTLEMASTER},

  -- the Seeker
  [42]={4, 7, COLLECTOR_TITLE_REQ_SEEKER},

  -- Elder
  [43]={4, 5, COLLECTOR_TITLE_REQ_ELDER},

  -- the Exalted
  [46]={4, 7, COLLECTOR_TITLE_REQ_EXALTED},

  -- the Explorer
  [47]={4, 7, COLLECTOR_TITLE_REQ_EXPLORER},

  -- Arena Master
  [50]={4, 5, COLLECTOR_TITLE_REQ_ARENA_MASTER},

  -- Salty
  [51]={4, 5, COLLECTOR_TITLE_REQ_SALTY},

  -- Chef
  [52]={4, 5, COLLECTOR_TITLE_REQ_CHEF},

  -- Twilight Vanquisher
  [89]={4, 5, COLLECTOR_TITLE_REQ_TWILIGHT_VANQUISHER},

  -- the Hallowed
  [92]={4, 5, COLLECTOR_TITLE_REQ_HALLOWED},

  -- Loremaster
  [93]={4, 5, COLLECTOR_TITLE_REQ_LOREMASTER},

  -- the Flawless Victor
  --[96]={4, 7, COLLECTOR_TITLE_REQ_FLAWLESS_VICTOR},

  -- Champion of the Frozen Wastes
  [97]={4, 5, COLLECTOR_TITLE_REQ_FROZEN_WASTES},

  -- Ambassador
  [98]={4, 7, COLLECTOR_TITLE_REQ_AMBASSADOR},

  -- the Argent Champion
  [99]={4, 7, COLLECTOR_TITLE_REQ_ARGENT_CHAMPION},

  -- Guardian of Cenarius
  [100]={4, 7, COLLECTOR_TITLE_REQ_CENARIUS},

  -- Brewmaster
  [101]={4, 5, COLLECTOR_TITLE_REQ_BREWMASTER},

  -- Merrymaker
  [102]={4, 5, COLLECTOR_TITLE_REQ_MERRYMAKER},

  -- the Love Fool
  [103]={4, 5, COLLECTOR_TITLE_REQ_LOVE_FOOL},

  -- of the Nightfall
  [107]={4, 5, COLLECTOR_TITLE_REQ_NIGHTFALL},

  -- the Immortal
  [108]={4, 5, COLLECTOR_TITLE_REQ_IMMORTAL},

  -- the Undying
  [109]={4, 5, COLLECTOR_TITLE_REQ_UNDYING},

  -- Jenkins
  [110]={4, 5, COLLECTOR_TITLE_REQ_JENKINS},

  -- Bloodsail Admiral
  [111]={4, 2, COLLECTOR_TITLE_REQ_BLOODSAIL},

  -- the Insane
  [112]={4, 7, COLLECTOR_TITLE_REQ_INSANE},

  -- the Noble
  [122]={4, 5, COLLECTOR_TITLE_REQ_NOBLE},

  -- Conqueror of Ulduar
  [126]={4, 5, COLLECTOR_TITLE_REQ_ULDUAR_CONQUEROR},

  -- Champion of Ulduar
  [127]={4, 5, COLLECTOR_TITLE_REQ_ULDUAR_CHAMPION},

  -- Starcaller
  [129]={4, 5, COLLECTOR_TITLE_REQ_STARCALLER},

  -- the Astral Walker
  [130]={4, 5, COLLECTOR_TITLE_REQ_ASTRAL_WALKER},

  -- Herald of the Titans
  [131]={4, 5, COLLECTOR_TITLE_REQ_HERALD},

  -- the Pilgrim
  [133]={4, 5, COLLECTOR_TITLE_REQ_PILGRIM},

  -- Argent Defender
  [136]={4, 5, COLLECTOR_TITLE_REQ_ARGENT_DEFENDER},

  -- the Patient
  [137]={4, 5, COLLECTOR_TITLE_REQ_PATIENT},

  -- the Light of the Dawn
  [138]={4, 5, COLLECTOR_TITLE_REQ_LIGHT_OF_DAWN},

  -- the Bane of the Fallen King
  [139]={4, 5, COLLECTOR_TITLE_REQ_BANE},

  -- the Kingslayer
  [140]={4, 5, COLLECTOR_TITLE_REQ_KINGSLAYER},

  -- of the Ashen Verdict
  [141]={4, 5, COLLECTOR_TITLE_REQ_ASHEN_VERDICT},

};


-- These are titles that only Alliance can get.
TheCollectorAllianceTitleTable = {
  -- Justicar
  [35]={4, 7, COLLECTOR_TITLE_REQ_PVP_EXALTED_ALLY},

  -- Flame Warden
  [44]={4, 5, COLLECTOR_TITLE_REQ_MIDSUMMER_ALLY},

  -- the Diplomat
  [48]={4, 7, COLLECTOR_TITLE_REQ_DIPLOMAT_ALLY},

  -- of Gnomeregan
  [81]={4, 7, COLLECTOR_TITLE_REQ_GNOMEREGAN},

  -- of the Alliance
  [94]={4, 7, COLLECTOR_TITLE_REQ_PVP},

  -- of the Exodar
  [113]={4, 7, COLLECTOR_TITLE_REQ_EXODAR},

  -- of Darnassus
  [114]={4, 7, COLLECTOR_TITLE_REQ_DARNASSUS},

  -- of Ironforge
  [115]={4, 7, COLLECTOR_TITLE_REQ_IRONFORGE},

  -- of Stormwind
  [116]={4, 7, COLLECTOR_TITLE_REQ_STORMWIND},

  -- Crusader
  [123]={4, 7, COLLECTOR_TITLE_REQ_CRUSADER_ALLY},
};



-- These are titles that only Horde can get.
TheCollectorHordeTitleTable = {
  -- Conqueror
  [34]={4, 7, COLLECTOR_TITLE_REQ_PVP_EXALTED_HORDE},

  -- Flame Keeper
  [45]={4, 5, COLLECTOR_TITLE_REQ_MIDSUMMER_HORDE},

  -- the Diplomat
  [48]={4, 7, COLLECTOR_TITLE_REQ_DIPLOMAT_HORDE},

  -- of the Horde
  [95]={4, 7, COLLECTOR_TITLE_REQ_PVP},

  -- of Orgrimmar
  [117]={4, 7, COLLECTOR_TITLE_REQ_ORGRIMMAR},

  -- of Sen'jin
  [118]={4, 7, COLLECTOR_TITLE_REQ_SENJIN},

  -- of Silvermoon
  [119]={4, 7, COLLECTOR_TITLE_REQ_SILVERMOON},

  -- of Thunder Bluff
  [120]={4, 7, COLLECTOR_TITLE_REQ_THUNDER_BLUFF},

  -- of the Undercity
  [121]={4, 7, COLLECTOR_TITLE_REQ_UNDERCITY},

  -- Crusader
  [123]={4, 7, COLLECTOR_TITLE_REQ_CRUSADER_HORDE},

};


-- These are titles that male players can get.
TheCollectorMaleTitleTable = {
  -- Patron
  [105]={4, 5, COLLECTOR_TITLE_REQ_CHILDREN},
};


-- These are titles that female players can get.
TheCollectorFemaleTitleTable = {
  -- Matron
  [104]={4, 5, COLLECTOR_TITLE_REQ_CHILDREN},

};


-- These are titles that are hard to get that I haven't decided what to do with yet.
-- We put them here so it doesn't spew warnings about missing titles for these.
TheCollectorSpecialTitleTable = {
  -- Private
  [1]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Corporal
  [2]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Sergeant
  [3]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Master Sergeant
  [4]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Sergeant Major
  [5]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Knight
  [6]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Knight-Lieutenant
  [7]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Knight-Captain
  [8]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Knight-Champion
  [9]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Lieutenant Commander
  [10]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Commander
  [11]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Marshal
  [12]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Field Marshal
  [13]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Grand Marshal
  [14]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Scout
  [15]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Grunt
  [16]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Sergeant
  [17]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Senior Sergeant
  [18]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- First Sergeant
  [19]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Stone Guard
  [20]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Blood Guard
  [21]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Legionnaire
  [22]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Centurion
  [23]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Champion
  [24]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Lieutenant General
  [25]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- General
  [26]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Warlord
  [27]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- High Warlord
  [28]={4, 7, COLLECTOR_TITLE_REQ_PVP_LEGACY},

  -- Scarab Lord
  [33]={4, 7, COLLECTOR_TITLE_REQ_SCARAB_LORD},

  -- Champion of the Naaru
  [36]={4, 7, COLLECTOR_TITLE_REQ_NAARU_CHAMPION},

  -- Merciless Gladiator
  [37]={4, 7, COLLECTOR_TITLE_REQ_MERCILESS},

  -- Hand of A'dal
  [39]={4, 7, COLLECTOR_TITLE_REQ_HAND_OF_ADAL},

  -- Vengeful Gladiator
  [40]={4, 7, COLLECTOR_TITLE_REQ_VENGEFUL},

  -- Brutal Gladiator
  [49]={4, 7, COLLECTOR_TITLE_REQ_BRUTAL},

  -- the Supreme
  [53]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- of the Ten Storms
  [54]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- of the Emerald Dream
  [55]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Crusader
  [56]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Prophet
  [57]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- the Malefic
  [58]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Stalker
  [59]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- of the Ebon Blade
  [60]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Archmage
  [61]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Warbringer
  [62]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Assassin
  [63]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Alchemist
  [64]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Blacksmith
  [65]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Iron Chef
  [66]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Enchanter
  [67]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Engineer
  [68]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Doctor
  [69]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Angler
  [70]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Herbalist
  [71]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Scribe
  [72]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Jewelcrafter
  [73]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Leatherworker
  [74]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Miner
  [75]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Skinner
  [76]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Grand Master Tailor
  [77]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- of Quel'Thalas
  [78]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- of Argus
  [79]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- of Khaz Modan
  [80]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- the Lion Hearted
  [82]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Champion of Elune
  [83]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Hero of Orgrimmar
  [84]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Plainsrunner
  [85]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- of the Darkspear
  [86]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- the Forsaken
  [87]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- the Magic Seeker
  [88]={4, 7, COLLECTOR_TITLE_REQ_MAGIC_SEEKER},

  -- Conqueror of Naxxramas
  [90]={4, 7, COLLECTOR_TITLE_REQ_NAXX_CONQUEROR},

  -- Hero of Northrend
  [91]={4, 7, COLLECTOR_TITLE_REQ_UNOBTAINABLE},

  -- Obsidian Slayer
  [106]={4, 7, COLLECTOR_TITLE_REQ_OBSIDIAN_SLAYER},

  -- Death's Demise
  [124]={4, 7, COLLECTOR_TITLE_REQ_DEATHS_DEMISE},

  -- the Celestial Defender
  [125]={4, 7, COLLECTOR_TITLE_REQ_CELESTIAL_DEFENDER},

  -- Vanquisher
  [128]={4, 7, COLLECTOR_TITLE_REQ_VANQUISHER},

  -- Furious Gladiator
  [132]={4, 7, COLLECTOR_TITLE_REQ_FURIOUS},

  -- Relentless Gladiator
  [134]={4, 7, COLLECTOR_TITLE_REQ_RELENTLESS},

  -- Grand Crusader
  [135]={4, 7, COLLECTOR_TITLE_REQ_GRAND},

  -- Wrathful Gladiator
  [142]={4, 7, COLLECTOR_TITLE_REQ_WRATHFUL},

};
