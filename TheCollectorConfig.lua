--[[

TheCollectorConfig.lua

The configuration functions for The Collector.

--]]


local CollectorDefaultSettings = {
  ["CharWindowButtonEnabled"]=1,
  ["PetsWindowButtonEnabled"]=1,
  ["CharWindowButtonPositionLeft"]=0,
  ["CharWindowButtonPositionRight"]=1,
};

local TheCollectorConfigPanelName = "TheCollectorConfigPanel";

--[[
--]]
function TheCollectorConfigOkay()
    local settings = TheCollectorSavedVars.Settings;

    local panelName = TheCollectorConfigPanelName;

    settings["PetsWindowButtonEnabled"] = (getglobal(panelName.."PetsWindowCheckButton"):GetChecked() or 0);
    settings["CharWindowButtonEnabled"] = (getglobal(panelName.."CharWindowCheckButton"):GetChecked() or 0);
    settings["CharWindowButtonPositionLeft"] = (getglobal(panelName.."CharWindowCheckButtonLeft"):GetChecked() or 0);
    settings["CharWindowButtonPositionRight"] = (getglobal(panelName.."CharWindowCheckButtonRight"):GetChecked() or 0);
end


--[[
--]]
function TheCollectorConfigCancel()
    TheCollectorConfigEnableSettings(TheCollectorSavedVars.Settings);
end


--[[
--]]
function TheCollectorConfigOnLoad(panel)
    panel.name = "The Collector";
    panel.okay = TheCollectorConfigOkay;
    panel.cancel = TheCollectorConfigCancel;
    InterfaceOptions_AddCategory(panel);
end


--[[
--]]
function TheCollectorInitSettings()
    if ( TheCollectorSavedVars.Settings == nil ) then
        DEFAULT_CHAT_FRAME:AddMessage(COLLECTOR_DEFAULTS_WARNING);
        TheCollectorSavedVars.Settings = { };

        if ( TheCollectorSavedVars.Settings["PetsWindowButtonEnabled"] == nil ) then
            TheCollectorSavedVars.Settings["PetsWindowButtonEnabled"] = CollectorDefaultSettings["PetsWindowButtonEnabled"];
        end

        if ( TheCollectorSavedVars.Settings["CharWindowButtonEnabled"] == nil ) then
            TheCollectorSavedVars.Settings["CharWindowButtonEnabled"] = CollectorDefaultSettings["CharWindowButtonEnabled"];
        end

        if ( TheCollectorSavedVars.Settings["CharWindowButtonPositionLeft"] == nil ) then
            TheCollectorSavedVars.Settings["CharWindowButtonPositionLeft"] = CollectorDefaultSettings["CharWindowButtonPositionLeft"];
        end

        if ( TheCollectorSavedVars.Settings["CharWindowButtonPositionRight"] == nil ) then
            TheCollectorSavedVars.Settings["CharWindowButtonPositionRight"] = CollectorDefaultSettings["CharWindowButtonPositionRight"];
        end
    end

    TheCollectorConfigEnableSettings(TheCollectorSavedVars.Settings);
end


--[[
--]]
function TheCollectorConfigEnableSettings(settings)
--[[
DEFAULT_CHAT_FRAME:AddMessage("config pet button enabled: "..tostring(settings["PetsWindowButtonEnabled"]));
DEFAULT_CHAT_FRAME:AddMessage("config char button enabled: "..tostring(settings["CharWindowButtonEnabled"]));
DEFAULT_CHAT_FRAME:AddMessage("config char button position left: "..tostring(settings["CharWindowButtonPositionLeft"]));
DEFAULT_CHAT_FRAME:AddMessage("config char button position right: "..tostring(settings["CharWindowButtonPositionRight"]));
--]]

    local panelName = TheCollectorConfigPanelName;

    getglobal(panelName.."PetsWindowCheckButton"):SetChecked(settings["PetsWindowButtonEnabled"]);
    BlizzardOptionsPanel_CheckButton_OnClick(getglobal(panelName.."PetsWindowCheckButton"));

    if ( settings["PetsWindowButtonEnabled"] == 1 ) then
        getglobal("TheCollectorPetToggleButton"):Show();
    else
        getglobal("TheCollectorPetToggleButton"):Hide();
    end

    getglobal(panelName.."CharWindowCheckButton"):SetChecked(settings["CharWindowButtonEnabled"]);
    BlizzardOptionsPanel_CheckButton_OnClick(getglobal(panelName.."CharWindowCheckButton"));
    getglobal(panelName.."CharWindowCheckButtonLeft"):SetChecked(settings["CharWindowButtonPositionLeft"]);
    BlizzardOptionsPanel_CheckButton_OnClick(getglobal(panelName.."CharWindowCheckButtonLeft"));
    getglobal(panelName.."CharWindowCheckButtonRight"):SetChecked(settings["CharWindowButtonPositionRight"]);
    BlizzardOptionsPanel_CheckButton_OnClick(getglobal(panelName.."CharWindowCheckButtonRight"));

    if ( settings["CharWindowButtonEnabled"] == 1 ) then
        if ( settings["CharWindowButtonPositionLeft"] == 1 ) then
            getglobal("TheCollectorTitleToggleButtonLeft"):Show();
            getglobal("TheCollectorTitleToggleButtonRight"):Hide();
        else
            getglobal("TheCollectorTitleToggleButtonLeft"):Hide();
            getglobal("TheCollectorTitleToggleButtonRight"):Show();
        end
    else
        getglobal("TheCollectorTitleToggleButtonLeft"):Hide();
        getglobal("TheCollectorTitleToggleButtonRight"):Hide();
    end
end
