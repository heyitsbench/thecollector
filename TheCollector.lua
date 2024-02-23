--[[

TheCollector.lua

The main file for TheCollector.

--]]


COLLECTOR_VERSION = "";  -- This gets put into the frame header so the player can easily see what they're running.

COLLECTOR_NUM_ITEMS_TO_DISPLAY = 9;  -- This is the number of lines to display at once in the scroll frame.
COLLECTOR_LIST_ITEM_HEIGHT = 0;

COLLECTOR_CURRENT_FILTERS = "";

COLLECTOR_CRITTER = 1;
COLLECTOR_MOUNT   = 2;
COLLECTOR_TITLE   = 3;

local PotentialCompanionsTable = { };  -- These are the potential companions a player could have, based on filters.
local PotentialCompanionsFilters = "";
local PotentialMountsTable = { };  -- These are the potential mounts a player could have, based on filters.
local PotentialMountsFilters = "";
local PotentialTitlesTable = { };  -- These are the potential titles a player could have, based on filters.
local PotentialTitlesFilters = "";
local MissingItemsTable = { };  -- This is for any items the player is missing.
local MissingSpellsWarnedTable = { };  -- Keep track of which spellID-based items are missing but we've warned about.
local MissingItemsWarnedTable = { };  -- Keep track of which itemID-based items are missing but we've warned about.
local PlayerFaction = nil;
local LocalizedPlayerFaction = nil;
local PlayerRace = nil;
local LocalizedPlayerRace = nil;
local PlayerClass = nil;
local LocalizedPlayerClass = nil;
local PlayerIsEngineer = false;
local PlayerIsTailor = false;
local PlayerGender = nil;
local PlayerIsMale = false;
local PlayerIsFemale = false;
local ClickedScrollItem = "";

TheCollectorSavedVars = { IgnoredTitlesTable = { }, IgnoredCompanionsTable = { }, IgnoredMountsTable = { }, Settings = { }, };


function TheCollectorSlashCommandHandler(msg)
    local command = "";

    if ( msg ) then
        command = string.lower(msg);
    end

    if ( command == "" or command == "help" or command == "usage" ) then
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_USAGE);
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_USAGE_SHOW);
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_USAGE_CONFIG);
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_USAGE_RESET);
    elseif ( command == "show" ) then
        TheCollectorFrame:Show();
    elseif ( command == "reset" ) then
        TheCollectorFrame:ClearAllPoints();
        TheCollectorFrame:SetPoint("CENTER");
    elseif ( command == "config" ) then
        InterfaceOptionsFrame_OpenToCategory(TheCollectorConfigPanel);
    end
end

SLASH_THECOLLECTOR1 = "/thecollector";
SLASH_THECOLLECTOR2 = "/tc";
SlashCmdList["THECOLLECTOR"] = TheCollectorSlashCommandHandler;


--[[
  Because we register the PEW event, and then unregister it in the handler for that event,
  this function should only be called once (i.e. when the player first logs in).
--]]
function TheCollectorInitialize(self)
    -- Read the saved variables and set up the saved settings.
    TheCollectorInitSettings();

    -- Mirror the top right texture to place in the top left.
    testTexture:SetTexCoord(1, 0, 1, 1, 0, 0, 0, 1);

    -- This is the height of the items that get added to the scroll frame.
    -- We get this dynamically in case someone changes the height in the scroll frame button template.
    COLLECTOR_LIST_ITEM_HEIGHT = floor(TheCollectorFrameScrollFrameButton1:GetHeight());

    -- Enable pressing the Escape key to close the window
    tinsert(UISpecialFrames, self:GetName());

    PanelTemplates_SetTab(self, COLLECTOR_CRITTER);

    COLLECTOR_VERSION = GetAddOnMetadata("TheCollector", "Version");
    TheCollectorFrameHeaderFrameText:SetText("The Collector v"..COLLECTOR_VERSION);

    -- If PetListPlus is being used, try to play nice.
    local petListPlusFrame = getglobal("PetListPlusFrame");
    if ( petListPlusFrame ~= nil ) then
        getglobal("TheCollectorPetToggleButton"):SetParent(petListPlusFrame);
    end

    PlayerFaction, LocalizedPlayerFaction = UnitFactionGroup("player");
    if ( PlayerFaction == nil or LocalizedPlayerFaction == nil ) then
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_FACTION_WARNING);
    end

    LocalizedPlayerRace, PlayerRace = UnitRace("player");
    if ( PlayerRace == nil or LocalizedPlayerRace == nil ) then
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_RACE_WARNING);
    end

    LocalizedPlayerClass, PlayerClass = UnitClass("player");
    if ( PlayerClass == nil or LocalizedPlayerClass == nil ) then
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_CLASS_WARNING);
    end

    PlayerGender = UnitSex("player");
    if ( PlayerGender == 2 ) then
        PlayerIsMale = true;
    elseif ( PlayerGender == 3 ) then
        PlayerIsFemale = true;
    else
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_GENDER_WARNING);
    end

    -- Get the player's professions.
    for tabIndex = 1, MAX_SKILLLINE_TABS do
        local tabName, _, tabSpellOffset, tabNumSpells = GetSpellTabInfo(tabIndex);

        if ( not tabName ) then
            break;
        end

        for spellIndex = tabSpellOffset + 1, tabSpellOffset + tabNumSpells do
            local spellName, _ = GetSpellName(spellIndex, BOOKTYPE_SPELL)

            if ( spellName == GetSpellInfo(4036) ) then -- Apprentice Engineering
                PlayerIsEngineer = true;
            end

            if ( spellName == GetSpellInfo(3908) ) then -- Apprentice Tailoring
                PlayerIsTailor = true;
            end
        end
    end

    -- Set up the tables of items the player should potentially have.
    TheCollectorInitCompanionTable();
    TheCollectorInitMountTable();
    TheCollectorInitTitleTable();

    TheCollectorUpdate(COLLECTOR_CRITTER);

    COLLECTOR_INITIALIZATION = COLLECTOR_INITIALIZATION_FIRST..COLLECTOR_VERSION..COLLECTOR_INITIALIZATION_SECOND;

    DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_INITIALIZATION);
end


--[[
  This is the main update handler. Only this should be called to correctly update the frame.
  id is the identifier for what missing items to display (critters, mounts, etc).
--]]
function TheCollectorUpdate(id)
    -- Reset the missing items table because we reuse it each time we update.
    for k,v in pairs(MissingItemsTable) do
        MissingItemsTable[k] = nil;
    end

    local totalItems, totalKnownItems, totalSpecialItems = 0, 0, 0;

    if ( id == COLLECTOR_CRITTER ) then
        COLLECTOR_CURRENT_FILTERS = PotentialCompanionsFilters;
        totalItems, totalKnownItems, totalSpecialItems = TheCollectorCompanionUpdate();
    elseif ( id == COLLECTOR_MOUNT ) then
        COLLECTOR_CURRENT_FILTERS = PotentialMountsFilters;
        totalItems, totalKnownItems, totalSpecialItems = TheCollectorMountUpdate();
    elseif ( id == COLLECTOR_TITLE ) then
        totalItems, totalKnownItems, totalSpecialItems = TheCollectorTitleUpdate();
    end


    -- Update the progress bar with how many total items there are, and how many the player knows.
    local knownItemPercentage = floor((totalKnownItems/totalItems)*100);
    TheCollectorFrameStatusBar:SetValue(knownItemPercentage);
    local s = "";
    if ( totalSpecialItems > 0 ) then
        s = COLLECTOR_TOTAL_SPECIAL_ITEMS_FIRST..totalSpecialItems..COLLECTOR_TOTAL_SPECIAL_ITEMS_SECOND;
    end
    TheCollectorFrameStatusBarText:SetText(totalKnownItems..s.." / "..totalItems.." - "..knownItemPercentage.."\%");


    -- Refresh the scroll frame in case something changed.
    if ( TheCollectorFrame:IsVisible() ) then
        TheCollectorScrollFrameUpdate();
    end
end


--[[
  This updates the missing items table with information about missing companions.

  RETURNS:
    arg1 - The total number of companions this player could potentially have (based on filters).
    arg2 - The number of companions this player knows (not counting special companions).
    arg3 - The number of special companions this player knows.
--]]
function TheCollectorCompanionUpdate()
    -- Add all the companions the players knows to a table.
    local totalKnownCompanions = 0;
    local totalSpecialCompanions = 0;
    local knownCompanionsTable = { };
    local extraCompanionsTable = { };
    for i=1, GetNumCompanions("CRITTER") do
        local creatureID, creatureName, spellID, icon, active = GetCompanionInfo("CRITTER", i);
--DEFAULT_CHAT_FRAME:AddMessage("name:"..creatureName.." spellID:"..spellID.." creatureID:"..creatureID);
        -- If the player knows a companion we don't have in our data file,
        -- and we haven't warned them about it before,
        -- and it isn't in the special table, ask them to tell us.
        if ( PotentialCompanionsTable[spellID] == nil and MissingSpellsWarnedTable[spellID] == nil and
             TheCollectorSpecialCompanionTable[spellID] == nil and
             -- The following line is a kludge until I can determine if Blizz is not returning a creatureName
             -- when a critter/mount isn't in the cache yet.
             creatureName ) then
            DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_UNKNOWN_ITEM_1..spellID.." "..COLLECTOR_UNKNOWN_ITEM_2..creatureName.." "..COLLECTOR_UNKNOWN_ITEM_3);
            MissingSpellsWarnedTable[spellID] = 1;
        end

        local name, _, icon, _, _, _, _, _, _ = GetSpellInfo(spellID);

        -- Keep track of companions that aren't special (i.e. ones that could be missing).
        if ( not TheCollectorSpecialCompanionTable[spellID] ) then
            totalKnownCompanions = totalKnownCompanions + 1;
            knownCompanionsTable[spellID] = 1;
        else
            -- These are companions that are special/extra. They don't count as missing.
            totalSpecialCompanions = totalSpecialCompanions + 1;
            local t = { };
            t.itemID = TheCollectorSpecialCompanionTable[spellID];
            t.name = name;
            t.icon = icon;
            t.info = TheCollectorSpecialCompanionTable[spellID];
            t.isExtra = true;
            table.insert(extraCompanionsTable, totalSpecialCompanions, t);
        end

        -- If the player gained an item that was on the ignore list, remove it.
        if ( TheCollectorSavedVars.IgnoredCompanionsTable[name] ) then
            TheCollectorSavedVars.IgnoredCompanionsTable[name] = nil;
        end
    end


    -- Compare all the companions to the companions the player knows. Put missing companions in a table.
    local totalDBCompanions = 0;
    local t = { };
    local name, icon;
    local ignoredCompanionsTable = { };
    local totalIgnoredCompanions = 0;
    for k,v in pairs(PotentialCompanionsTable) do
        totalDBCompanions = totalDBCompanions + 1;

        if ( knownCompanionsTable[k] == nil ) then
            name, _, icon, _, _, _, _, _, _ = GetSpellInfo(k);

            t = { };
            t.itemID = v;
            t.name = name;
            t.icon = icon;
            t.info = v;

            -- See if the user marked this companion to ignore.
            if ( TheCollectorSavedVars.IgnoredCompanionsTable[name] ) then
                totalIgnoredCompanions = totalIgnoredCompanions + 1;
                t.isIgnored = true;
                table.insert(ignoredCompanionsTable, t);
            else
                -- If this item wasn't in the ignored list, add it to the missing items table.
                table.insert(MissingItemsTable, t);
            end
        end
    end


    -- If the user knows all the companions we consider collectible, tell them.
    if ( #MissingItemsTable == 0 ) then
        t = { };
        t.name = COLLECTOR_ALL_PETS_KNOWN;
        t.icon = "Interface\\Icons\\INV_Misc_TheGoldenCheep";
        t.isExtra = true;
        table.insert(MissingItemsTable, 1, t);
    else
        table.sort(MissingItemsTable, TheCollectorSortTableByName);

        -- Add the header into the first spot in the list.
        t = { };
        t.name = COLLECTOR_MISSING_PETS.." ("..#MissingItemsTable..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, 1, t);
    end

    -- If the player knows any special/extra companions, put them at the end of the list.
    if ( totalSpecialCompanions > 0 ) then
        table.sort(extraCompanionsTable, TheCollectorSortTableByName);

        t = { };
        t.name = COLLECTOR_EXTRA_PETS.." ("..totalSpecialCompanions..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, t);

        for k,v in pairs(extraCompanionsTable) do
            table.insert(MissingItemsTable, v);
        end
    end

    -- If the player marked any missing items to ignore, put them at the end of the list.
    if ( totalIgnoredCompanions > 0 ) then
        table.sort(ignoredCompanionsTable, TheCollectorSortTableByName);

        t = { };
        t.name = COLLECTOR_IGNORED_PETS.." ("..totalIgnoredCompanions..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, t);

        for k,v in pairs(ignoredCompanionsTable) do
            table.insert(MissingItemsTable, v);
        end
    end

    return (totalDBCompanions-totalIgnoredCompanions), totalKnownCompanions, totalSpecialCompanions;
end


--[[
  This updates the missing items table with information about missing mounts.

  RETURNS:
    arg1 - The total number of mounts this player could potentially have (based on filters).
    arg2 - The number of mounts this player knows (not counting special mounts).
    arg3 - The number of special mounts this player knows.
--]]
function TheCollectorMountUpdate()
    -- Add all the mounts the players knows to a table.
    local totalKnownMounts = 0;
    local totalSpecialMounts = 0;
    local knownMountsTable = { };
    local extraMountsTable = { };
    for i=1, GetNumCompanions("MOUNT") do
        local creatureID, creatureName, spellID, icon, active = GetCompanionInfo("MOUNT", i);
--DEFAULT_CHAT_FRAME:AddMessage("name:"..creatureName.." spellID:"..spellID.." creatureID:"..creatureID);
        -- If the player knows a mount we don't have in our data file,
        -- and we haven't warned them about it before,
        -- and it isn't in the special table, ask them to tell us.
        if ( PotentialMountsTable[spellID] == nil and MissingSpellsWarnedTable[spellID] == nil and
             TheCollectorSpecialMountTable[spellID] == nil and
             -- The following line is a kludge until I can determine if Blizz is not returning a creatureName
             -- when a critter/mount isn't in the cache yet.
             creatureName ) then
            DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_UNKNOWN_ITEM_1..spellID.." "..COLLECTOR_UNKNOWN_ITEM_2..creatureName.." "..COLLECTOR_UNKNOWN_ITEM_3);
            MissingSpellsWarnedTable[spellID] = 1;
        end

        local name, _, icon, _, _, _, _, _, _ = GetSpellInfo(spellID);

        -- Keep track of mounts that aren't special (i.e. ones that could be missing).
        if ( not TheCollectorSpecialMountTable[spellID] ) then
            totalKnownMounts = totalKnownMounts + 1;
            knownMountsTable[spellID] = 1;
        else
            -- These are mounts that are special. They don't count against the player as missing.
            totalSpecialMounts = totalSpecialMounts + 1;
            local t = { };
            t.itemID = TheCollectorSpecialMountTable[spellID];
            t.name = name;
            t.icon = icon;
            t.info = TheCollectorSpecialMountTable[spellID];
            t.isExtra = true;
            table.insert(extraMountsTable, totalSpecialMounts, t);
        end

        -- If the player gained an item that was on the ignore list, remove it.
        if ( TheCollectorSavedVars.IgnoredMountsTable[name] ) then
            TheCollectorSavedVars.IgnoredMountsTable[name] = nil;
        end
    end


    -- Compare all the mounts to the mounts the player knows. Put missing mounts in a table.
    local totalDBMounts = 0;
    local name, icon;
    local t = { };
    local ignoredMountsTable = { };
    local totalIgnoredMounts = 0;
    for k,v in pairs(PotentialMountsTable) do
        totalDBMounts = totalDBMounts + 1;

        if ( knownMountsTable[k] == nil ) then
            name, _, icon, _, _, _, _, _, _ = GetSpellInfo(k);

            t = { };
            t.itemID = v;
            t.name = name;
            t.icon = icon;
            t.info = v;

            -- See if the user marked this mount to ignore.
            if ( TheCollectorSavedVars.IgnoredMountsTable[name] ) then
                    totalIgnoredMounts = totalIgnoredMounts + 1;
                    t.isIgnored = true;
                    table.insert(ignoredMountsTable, t);
            else
                -- If this missing item wasn't in the ignored list, add it to the missing items table.
                table.insert(MissingItemsTable, t);
            end
        end
    end


    -- If the user knows all the mounts we consider collectible, tell them.
    if ( #MissingItemsTable == 0 ) then
        t = { };
        t.name = COLLECTOR_ALL_MOUNTS_KNOWN;
        t.icon = "Interface\\Icons\\INV_Misc_Crop_01";
        t.isExtra = true;
        table.insert(MissingItemsTable, 1, t);
    else
        table.sort(MissingItemsTable, TheCollectorSortTableByName);

        -- Add the header into the first spot in the list.
        t = { };
        t.name = COLLECTOR_MISSING_MOUNTS.." ("..#MissingItemsTable..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, 1, t);
    end

    -- If the player knows any special/extra mounts, put them at the end of the list.
    if ( totalSpecialMounts > 0 ) then
        table.sort(extraMountsTable, TheCollectorSortTableByName);

        t = { };
        t.name = COLLECTOR_EXTRA_MOUNTS.." ("..totalSpecialMounts..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, t);

        for k,v in pairs(extraMountsTable) do
            table.insert(MissingItemsTable, v);
        end
    end

    -- If the player marked any missing items to ignore, put them at the end of the list.
    if ( totalIgnoredMounts > 0 ) then
        table.sort(ignoredMountsTable, TheCollectorSortTableByName);

        t = { };
        t.name = COLLECTOR_IGNORED_MOUNTS.." ("..totalIgnoredMounts..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, t);

        for k,v in pairs(ignoredMountsTable) do
            table.insert(MissingItemsTable, v);
        end
    end

    return (totalDBMounts-totalIgnoredMounts), totalKnownMounts, totalSpecialMounts;
end


--[[
  This updates the missing items table with information about missing titles.

  RETURNS:
    arg1 - The total number of titles this player could potentially have (based on filters).
    arg2 - The number of titles this player knows (not counting special titles).
    arg3 - The number of special titles this player knows.
--]]
function TheCollectorTitleUpdate()

    if ( TheCollectorSavedVars.IgnoredTitlesTable == nil ) then
        TheCollectorSavedVars.IgnoredTitlesTable = { };
    end

    -- Add all the titles the players knows to a table.
    local totalKnownTitles = 0;
    local totalSpecialTitles = 0;
    local knownTitlesTable = { };
    local extraTitlesTable = { };
    for id=1, GetNumTitles() do
--DEFAULT_CHAT_FRAME:AddMessage("title name: "..GetTitleName(id).." id:"..id);
        if ( IsTitleKnown(id) == 1 ) then
            local name = GetTitleName(id);

            -- If the player knows a title we don't have in our data file,
            -- and we haven't warned them about it before,
            -- and it isn't in the special table, ask them to tell us.
            if ( PotentialTitlesTable[id] == nil and MissingSpellsWarnedTable[id] == nil and
                 TheCollectorSpecialTitleTable[id] == nil ) then
            DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_UNKNOWN_ITEM_1..id.." "..COLLECTOR_UNKNOWN_ITEM_3);
                MissingSpellsWarnedTable[id] = 1;
            end

            -- Keep track of titles that aren't special (i.e. ones that could be missing).
            if ( not TheCollectorSpecialTitleTable[id] ) then
                totalKnownTitles = totalKnownTitles + 1;
                knownTitlesTable[id] = 1;
            else
                -- These are titles that are special. They don't count against the player as missing.
                totalSpecialTitles = totalSpecialTitles + 1;
                local t = { };
                t.itemID = TheCollectorSpecialTitleTable[id];
                t.name = name;
                t.icon = "Interface\\Icons\\INV_Letter_17";
                t.info = TheCollectorSpecialTitleTable[id];
                t.isExtra = true;
                table.insert(extraTitlesTable, totalSpecialTitles, t);
            end

            -- If the player gained an item that was on the ignore list, remove it.
            if ( TheCollectorSavedVars.IgnoredTitlesTable[name] ) then
                TheCollectorSavedVars.IgnoredTitlesTable[name] = nil;
            end
        end
    end


    -- Compare all the titles to the titles the player knows. Put missing titles in a table.
    local totalDBTitles = 0;
    local name;
    local t = { };
    local ignoredTitlesTable = { };
    local totalIgnoredTitles = 0;
    for k,v in pairs(PotentialTitlesTable) do
        totalDBTitles = totalDBTitles + 1;

        if ( knownTitlesTable[k] == nil ) then
            name = GetTitleName(k);

            t = { };
            t.itemID = v;
            t.name = name;
            t.icon = "Interface\\Icons\\INV_BannerPVP_03";
            t.info = v;

            -- See if the user marked this title to ignore.
            if ( TheCollectorSavedVars.IgnoredTitlesTable[name] ) then
                    totalIgnoredTitles = totalIgnoredTitles + 1;
                    t.isIgnored = true;
                    table.insert(ignoredTitlesTable, t);
            else
                -- If this missing item wasn't in the ignored list, add it to the missing items table.
                table.insert(MissingItemsTable, t);
            end
        end
    end


    -- If the user knows all the titles we consider collectible, tell them.
    if ( #MissingItemsTable == 0 ) then
        t = { };
        t.name = COLLECTOR_ALL_TITLES_KNOWN;
        t.icon = "Interface\\Icons\\INV_Misc_Crop_01";
        t.isExtra = true;
        table.insert(MissingItemsTable, 1, t);
    else
        table.sort(MissingItemsTable, TheCollectorSortTableByName);

        -- Add the header into the first spot in the list.
        t = { };
        t.name = COLLECTOR_MISSING_TITLES.." ("..#MissingItemsTable..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, 1, t);
    end

    -- If the player knows any special/extra titles, put them at the end of the list.
    if ( totalSpecialTitles > 0 ) then
        table.sort(extraTitlesTable, TheCollectorSortTableByName);

        t = { };
        t.name = COLLECTOR_EXTRA_TITLES.." ("..totalSpecialTitles..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, t);

        for k,v in pairs(extraTitlesTable) do
            table.insert(MissingItemsTable, v);
        end
    end

    -- If the player marked any missing items to ignore, put them at the end of the list.
    if ( totalIgnoredTitles > 0 ) then
        table.sort(ignoredTitlesTable, TheCollectorSortTableByName);

        t = { };
        t.name = COLLECTOR_IGNORED_TITLES.." ("..totalIgnoredTitles..")";
        t.isHeader = true;
        t.isExpanded = true;
        table.insert(MissingItemsTable, t);

        for k,v in pairs(ignoredTitlesTable) do
            table.insert(MissingItemsTable, v);
        end
    end

    return (totalDBTitles-totalIgnoredTitles), totalKnownTitles, totalSpecialTitles;
end


--[[
  This constructs the table of potential companions the player could have.
--]]
function TheCollectorInitCompanionTable()
    -- Add all the common companions into the table.
    local t = TheCollectorCommonCompanionTable;
    for k,v in pairs(t) do
        table.insert(PotentialCompanionsTable, k, v);
    end

    -- Add any faction-specific companions into the table of all companions.
    t = { };
    if ( PlayerFaction == "Alliance" ) then
          t = TheCollectorAllianceCompanionTable;
    else
          t = TheCollectorHordeCompanionTable;
    end
    PotentialCompanionsFilters = PotentialCompanionsFilters..LocalizedPlayerFaction;

    for k,v in pairs(t) do
        table.insert(PotentialCompanionsTable, k, v);
    end

    -- Add any engineering-specific companions into the table of all companions.
    t = { };
    if ( PlayerIsEngineer ) then
        t = TheCollectorEngineerCompanionTable;
        PotentialCompanionsFilters = PotentialCompanionsFilters.."\n"..GetSpellInfo(20219);
    end

    for k,v in pairs(t) do
        table.insert(PotentialCompanionsTable, k, v);
    end
end


--[[
  This constructs the table of potential mounts the player could have.
--]]
function TheCollectorInitMountTable()
    -- Add all the common mounts into the table.
    local t = TheCollectorCommonMountTable;
    for k,v in pairs(t) do
        table.insert(PotentialMountsTable, k, v);
    end


    -- Add any faction-specific mounts into the table of all mounts.
    t = { };
    if ( PlayerFaction == "Alliance" ) then
          t = TheCollectorAllianceMountTable;
    else
          t = TheCollectorHordeMountTable;
    end
    PotentialMountsFilters = PotentialMountsFilters..LocalizedPlayerFaction;

    -- Add the extra faction mounts into the table of all mounts.
    for k,v in pairs(t) do
        table.insert(PotentialMountsTable, k, v);
    end


    -- Alliance and Horde Paladins don't share the same spell.
    t = { };
    if ( PlayerClass == "PALADIN" ) then
        if ( PlayerFaction == "Alliance" ) then
            t = TheCollectorAlliancePaladinMountTable;
        else
            t = TheCollectorHordePaladinMountTable;
        end
        PotentialMountsFilters = PotentialMountsFilters.."\n"..LocalizedPlayerClass;
    end

    -- Alliance and Horde Warlocks do appear to share the same spell.
    if ( PlayerClass == "WARLOCK" ) then
        t = TheCollectorWarlockMountTable;
        PotentialMountsFilters = PotentialMountsFilters.."\n"..LocalizedPlayerClass;
    end

    -- Death Knights have their own mounts.
    if ( PlayerClass == "DEATHKNIGHT" ) then
        t = TheCollectorDeathKnightMountTable;
        PotentialMountsFilters = PotentialMountsFilters.."\n"..LocalizedPlayerClass;
    end

    -- Add the extra class mounts into the table of all mounts.
    for k,v in pairs(t) do
        table.insert(PotentialMountsTable, k, v);
    end


    -- Engineers have extra mounts.
    t = { };
    if ( PlayerIsEngineer ) then
        t = TheCollectorEngineerMountTable;
        PotentialMountsFilters = PotentialMountsFilters.."\n"..GetSpellInfo(4036);
    end

    -- Add the extra profession mounts into the table of all mounts.
    for k,v in pairs(t) do
        table.insert(PotentialMountsTable, k, v);
    end


    -- Tailors have extra mounts.
    t = { };
    if ( PlayerIsTailor ) then
        t = TheCollectorTailorMountTable;
        PotentialMountsFilters = PotentialMountsFilters.."\n"..GetSpellInfo(3908);
    end

    -- Add the extra profession mounts into the table of all mounts.
    for k,v in pairs(t) do
        table.insert(PotentialMountsTable, k, v);
    end

end


--[[
  This constructs the table of potential titles the player could have.
--]]
function TheCollectorInitTitleTable()
    -- Add all the common titles into the table.
    local t = TheCollectorCommonTitleTable;
    for k,v in pairs(t) do
        table.insert(PotentialTitlesTable, k, v);
    end


    -- Add any faction-specific titles into the table of all titles.
    t = { };
    if ( PlayerFaction == "Alliance" ) then
          t = TheCollectorAllianceTitleTable;
    else
          t = TheCollectorHordeTitleTable;
    end
    PotentialTitlesFilters = PotentialTitlesFilters..LocalizedPlayerFaction;

    -- Add the extra faction titles into the table of all titles.
    for k,v in pairs(t) do
        table.insert(PotentialTitlesTable, k, v);
    end

    t = { };
    if ( PlayerIsMale == true ) then
        t = TheCollectorMaleTitleTable;
    else
        t = TheCollectorFemaleTitleTable;
    end

    -- Add the gender titles into the table of all titles.
    for k,v in pairs(t) do
        table.insert(PotentialTitlesTable, k, v);
    end

end


--[[
--]]
function TheCollectorScrollFrameUpdate()

    -- Copy the table of items to display to a temporary table so we can remove items if needed.
    local displayTable = { };
    for k,v in ipairs(MissingItemsTable) do
        table.insert(displayTable, k, v);
    end

    -- Go through the temporary table, removing any items that were under a collapsed header.
    local index = 1;
    while index <= #displayTable do
        if ( displayTable[index].isHeader and (not displayTable[index].isExpanded) ) then
            -- Go through all the items in the table below this header, removing any non-headers.
            -- Stop going if we find a header or we reach the end of the table.
            local i = index + 1;
            while ( i <= #displayTable and (not (displayTable[i].isHeader)) ) do
                table.remove(displayTable, i);
            end
        end

        index = index + 1;
    end


    local totalItemsToShow = #displayTable;
    local index, button, buttonText, buttonIcon, buttonModel, header, headerText;

    for line=1, COLLECTOR_NUM_ITEMS_TO_DISPLAY do
        index = line + FauxScrollFrame_GetOffset(TheCollectorFrameScrollFrame);
        button = getglobal("TheCollectorFrameScrollFrameButton"..line);
        buttonText = getglobal("TheCollectorFrameScrollFrameButton"..line.."Text");
        buttonIcon = getglobal("TheCollectorFrameScrollFrameButton"..line.."Icon");
        buttonItemID = getglobal("TheCollectorFrameScrollFrameButton"..line.."ItemID");
        header = getglobal("TheCollectorFrameScrollFrameHeader"..line);
        headerText = getglobal("TheCollectorFrameScrollFrameHeader"..line.."Text");

        if index <= totalItemsToShow then
             if ( displayTable[index].isHeader ) then
                button:Hide();
                headerText:SetText(displayTable[index].name);
                header:Show();

                if ( displayTable[index].isExpanded ) then
                    header:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
                else
                    header:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
                end
            else
                header:Hide();
                buttonText:SetText(displayTable[index].name);
                buttonItemID:SetText(displayTable[index].itemID);
                buttonIcon:SetNormalTexture(displayTable[index].icon);
                button:Show();

                if ( displayTable[index].name == ClickedScrollItem ) then
                    button:LockHighlight();
                else
                    button:UnlockHighlight();
                end
            end
        else
            button:Hide();
            header:Hide();
        end
    end

    FauxScrollFrame_Update(TheCollectorFrameScrollFrame, totalItemsToShow, COLLECTOR_NUM_ITEMS_TO_DISPLAY, COLLECTOR_LIST_ITEM_HEIGHT);
end


--[[
  If one of the items is left-clicked, lock highlighting on it.
--]]
function TheCollectorScrollItemClicked(self)
    local itemName = getglobal(self:GetName().."Text"):GetText();

    -- If the user clicked the same button again, unlock the highlighting on it.
    if ( itemName == ClickedScrollItem ) then
        ClickedScrollItem = "";
        if ( TheCollectorModelFrame:IsVisible() ) then
            TheCollectorModel:Hide();
        end
    else
        ClickedScrollItem = itemName;
        if ( TheCollectorModelFrame:IsVisible() ) then
            local itemID = getglobal(self:GetName().."ItemID"):GetText();
--DEFAULT_CHAT_FRAME:AddMessage("item clicked id:"..tostring(itemID));
            Model_OnLoad(TheCollectorModel);
            TheCollectorModel:SetCreature(itemID);
            TheCollectorModel:Show();
        end
    end

    TheCollectorScrollFrameUpdate();
end


--[[
  If one of the items is right-clicked, open the contextual menu.
--]]
function TheCollectorScollItemRightClicked(self)
    local itemName = getglobal(self:GetName().."Text"):GetText();
    for k,v in pairs(MissingItemsTable) do
        if ( v.name == itemName ) then
            -- Show the drop down menu if this isn't one of the extra entries.
            if ( not v.isExtra ) then
                -- Ignored entries get a different drop down menu than just missing entries.
                if ( v.isIgnored ) then
                    ToggleDropDownMenu(1, nil, getglobal(self:GetName().."DropDownActivateMenu"), self:GetName(), 25, 0);
                else
                    ToggleDropDownMenu(1, nil, getglobal(self:GetName().."DropDownInactivateMenu"), self:GetName(), 25, 0);
                end
            end
            break;
        end
    end
end


--[[
  If the user selected to ignore a missing entry, add it to the ignored table.
--]]
function TheCollectorDropDownInactivateMenuOnClick(self)
    local ignoredTable = { };
    if ( TheCollectorFrame.selectedTab == COLLECTOR_CRITTER ) then
        ignoredTable = TheCollectorSavedVars.IgnoredCompanionsTable;
    elseif ( TheCollectorFrame.selectedTab == COLLECTOR_MOUNT ) then
        ignoredTable = TheCollectorSavedVars.IgnoredMountsTable;
    elseif ( TheCollectorFrame.selectedTab == COLLECTOR_TITLE ) then
        ignoredTable = TheCollectorSavedVars.IgnoredTitlesTable;
    end

    ignoredTable[self.value] = 1;

    TheCollectorUpdate(TheCollectorFrame.selectedTab);
end


--[[
  If the user selected to stop ignoring a missing entry, remove it from the ignored table.
--]]
function TheCollectorDropDownActivateMenuOnClick(self)
    local ignoredTable = { };
    if ( TheCollectorFrame.selectedTab == COLLECTOR_CRITTER ) then
        ignoredTable = TheCollectorSavedVars.IgnoredCompanionsTable;
    elseif ( TheCollectorFrame.selectedTab == COLLECTOR_MOUNT ) then
        ignoredTable = TheCollectorSavedVars.IgnoredMountsTable;
    elseif ( TheCollectorFrame.selectedTab == COLLECTOR_TITLE ) then
        ignoredTable = TheCollectorSavedVars.IgnoredTitlesTable;
    end

    ignoredTable[self.value] = nil;

    TheCollectorUpdate(TheCollectorFrame.selectedTab);
end


--[[
  Set up the drop down menu for when the user wants to ignore something.
--]]
function TheCollectorDropDownInactivateMenuOnLoad(self)
    local info = { };
    info.text  = COLLECTOR_MARK_INACTIVE;
    info.value = getglobal(self:GetParent():GetName().."Text"):GetText();
    info.owner = self:GetParent():GetName();
    info.func  = TheCollectorDropDownInactivateMenuOnClick;
    info.tooltipTitle = COLLECTOR_INACTIVE;
    info.tooltipText = COLLECTOR_INACTIVATE_MENU_TOOLTIP;
       
    -- Add the above information to the drop down menu as a button.
    UIDropDownMenu_AddButton(info);
end


--[[
  Set up the drop down menu for when the user wants to stop ignoring something.
--]]
function TheCollectorDropDownActivateMenuOnLoad(self)
    local info = { };
    info.text  = COLLECTOR_MARK_ACTIVE;
    info.value = getglobal(self:GetParent():GetName().."Text"):GetText();
    info.owner = self:GetParent():GetName();
    info.func  = TheCollectorDropDownActivateMenuOnClick;
    info.tooltipTitle = COLLECTOR_ACTIVE;
    info.tooltipText = COLLECTOR_ACTIVATE_MENU_TOOLTIP;
       
    -- Add the above information to the drop down menu as a button.
    UIDropDownMenu_AddButton(info);
end


--[[
  If a header was clicked, toggle the expanded flag.
--]]
function TheCollectorScrollHeaderClicked(headerName)
    -- Search through the missing items table for a header with this name.
    for k,v in ipairs(MissingItemsTable) do
        if ( v.isHeader and v.name == headerName ) then
            v.isExpanded = not (v.isExpanded);
            TheCollectorScrollFrameUpdate();
            break;
        end
    end
end


--[[
  Set up the tooltip for the header depending on its name.
--]]
function TheCollectorScrollHeaderOnEnter(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");

    local i, _ = string.find(self:GetText(), "Extra");
    if ( i ) then
        GameTooltip_AddNewbieTip(self, "Extras", 1.0, 1.0, 1.0, COLLECTOR_EXTRAS_TOOLTIP, 1);
    end

    i, _ = string.find(self:GetText(), "Missing");
    if ( i ) then
        GameTooltip_AddNewbieTip(self, "Missing", 1.0, 1.0, 1.0, COLLECTOR_MISSING_TOOLTIP, 1);
    end

    i, _ = string.find(self:GetText(), "Inactive");
    if ( i ) then
        GameTooltip_AddNewbieTip(self, "Inactive", 1.0, 1.0, 1.0, COLLECTOR_INACTIVE_TOOLTIP, 1);
    end

    GameTooltip:Show();
end


--[[
  OnEnter handler for the items in the scroll frame. Display the tooltip info for that item.
--]]
function TheCollectorScrollButtonOnEnter(self)
    local itemName = getglobal(self:GetName().."Text"):GetText();

    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");

    GameTooltip:SetText(itemName, 1, 1, 1);

    -- Find the entry in the table that has the same name as what the user has their mouse over.
    local t = { };
    for k,v in pairs(MissingItemsTable) do
        if ( v.name == itemName ) then
            -- If this entry has some tooltip info, copy it into a temp table.
            if ( type(v.info) == "table" ) then
                for i,j in pairs(v.info) do
                    table.insert(t, i, j);
                end
            end
            break;
        end
    end

    if ( #t ~= 0 ) then
        local tempstring = 0;
        if ( t[1] == 1 ) then
            tempstring = COLLECTOR_BOP;
        elseif ( t[1] == 2 ) then
            tempstring = COLLECTOR_BOE;
        elseif ( t[1] == 3 ) then
            tempstring = COLLECTOR_BOA;
        elseif ( t[1] == 4 ) then
            tempstring = " ";
        else
            tempstring = COLLECTOR_UNKNOWN.." "..t[1]
        end
        GameTooltip:AddLine(tempstring);

        if ( t[2] == 1 ) then
            GameTooltip:AddLine(COLLECTOR_OBTAINED_FROM.." "..COLLECTOR_VENDOR);
            if ( t[3] ~= nil ) then
                for k,v in pairs(t[3]) do
                    tempstring = v[1].." ("..v[2]..")\n"..v[3].."\nCost: "..v[4];
                    if ( v[5] ~= nil ) then
                        tempstring = tempstring..COLLECTOR_REQUIRES.." "..v[5];
                    end
                    if ( k < #t[3] ) then
                        tempstring = tempstring.."\n";
                    end
                    GameTooltip:AddLine(tempstring, 1, 1, 1);
                end
            else
                GameTooltip:AddLine(COLLECTOR_UNKNOWN.." "..COLLECTOR_VENDOR, 1, 1, 1);
            end

        elseif ( t[2] == 2 ) then
            GameTooltip:AddLine(COLLECTOR_OBTAINED_FROM.." "..COLLECTOR_QUEST);
            if ( t[3] ~= nil ) then
                GameTooltip:AddLine(t[3], 1, 1, 1);
            else
                GameTooltip:AddLine(COLLECTOR_UNKNOWN.." "..COLLECTOR_QUEST, 1, 1, 1);
            end

        elseif ( t[2] == 3 ) then
            GameTooltip:AddLine(COLLECTOR_OBTAINED_FROM.." "..COLLECTOR_DROP);
            if ( t[3] ~= nil ) then
                for k,v in pairs(t[3]) do
                    tempstring = v[1].."\n"..v[2].."\n"..v[3].."%";
                    if ( k < #t[3] ) then
                        tempstring = tempstring.."\n";
                    end
                    GameTooltip:AddLine(tempstring, 1, 1, 1);
                end
            else
                GameTooltip:AddLine(COLLECTOR_UNKNOWN.." "..COLLECTOR_DROP, 1, 1, 1);
            end

        elseif ( t[2] == 4 ) then
            GameTooltip:AddLine(COLLECTOR_OBTAINED_FROM.." "..COLLECTOR_CRAFTED);
            if ( t[3] ~= nil and t[4] ~= nil ) then
                GameTooltip:AddLine(t[3].." ("..t[4]..")", 1, 1, 1);
            else
                GameTooltip:AddLine(COLLECTOR_UNKNOWN.." "..COLLECTOR_CRAFTED, 1, 1, 1);
            end

        elseif ( t[2] == 5 ) then
            GameTooltip:AddLine(COLLECTOR_OBTAINED_FROM.." "..COLLECTOR_ACHIEVEMENT);
            if ( t[3] ~= nil ) then
                GameTooltip:AddLine(t[3], 1, 1, 1);
            else
                GameTooltip:AddLine(COLLECTOR_UNKNOWN.." "..COLLECTOR_ACHIEVEMENT, 1, 1, 1);
            end

        elseif ( t[2] == 7 ) then
            if ( t[3] ~= nil ) then
                GameTooltip:AddLine(t[3]);
            else
                GameTooltip:AddLine(COLLECTOR_UNKNOWN.." "..COLLECTOR_TEXT, 1, 1, 1);
            end

        else
            GameTooltip:AddLine(COLLECTOR_UNKNOWN.." "..COLLECTOR_OBTAINED_FROM, 1, 1, 1);
        end

    else
        GameTooltip:AddLine(COLLECTOR_TOOLTIP_PROBLEM);
    end

    GameTooltip:Show();
end


--[[
--]]
function TheCollectorTitleButtonOnClick()
    if ( TheCollectorFrame:IsVisible() ) then
        TheCollectorFrame:Hide();
    else
        TheCollectorUpdate(COLLECTOR_TITLE);
        PanelTemplates_SetTab(TheCollectorFrame, COLLECTOR_TITLE);
        TheCollectorFrame:Show();
    end
end


--[[
--]]
function TheCollectorOnEvent(self, event)
    if ( event == "COMPANION_LEARNED" or event == "KNOWN_TITLES_UPDATE" ) then
        TheCollectorUpdate(TheCollectorFrame.selectedTab);
    elseif ( event == "PLAYER_ENTERING_WORLD" ) then
        TheCollectorFrame:UnregisterEvent("PLAYER_ENTERING_WORLD");
        TheCollectorFrame:RegisterEvent("COMPANION_LEARNED");
        TheCollectorFrame:RegisterEvent("KNOWN_TITLES_UPDATE");
        TheCollectorInitialize(self);
   end
end


--[[
--]]
function TheCollectorSortTableByName(a, b)
    return (a.name < b.name);
end
