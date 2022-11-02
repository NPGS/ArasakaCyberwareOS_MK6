-- ver. 1.11.0   Arasaka Nightmare Mk.4/5 (Hybrid Cyberdeck/Sandevistan Cyberware)

-- Arasaka Nightmare Mk.4
if TweakDB:GetRecord("Items.ArasakaNightmareMK4_M") == nil then
    TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M", "Items.SandevistanC1MK1")    -- Item
        TweakDB:CreateRecord("Items.ArasakaNightmareMK4_M_inline0", "gamedataGameplayLogicPackage_Record")   -- Logic (Netrunner)
            TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M_inline1", "Items.MilitechParaline_inline1")   -- RAM
            TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M_inline2", "Items.MilitechParaline_inline2")  -- Buffer
            TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M_inline3", "Items.SandevistanC1MK1_inline1")  -- Duration
            TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M_inline4", "Items.SandevistanC1MK1_inline2")  -- Time Scale
            TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M_inline5", "Items.SandevistanC1MK1_inline3")  -- Cooldown
end

-- Arasaka Nightmare Mk.5
if TweakDB:GetRecord("Items.ArasakaNightmareMK5_M") == nil then
    TweakDB:CloneRecord("Items.ArasakaNightmareMK5_M", "Items.SandevistanC1MK1")    -- Item
        TweakDB:CreateRecord("Items.ArasakaNightmareMK5_M_inline0", "gamedataGameplayLogicPackage_Record")   -- Logic (Netrunner)
            TweakDB:CloneRecord("Items.ArasakaNightmareMK5_M_inline1", "Items.MilitechParaline_inline1")   -- RAM
            TweakDB:CloneRecord("Items.ArasakaNightmareMK5_M_inline2", "Items.MilitechParaline_inline2")  -- Buffer
            TweakDB:CloneRecord("Items.ArasakaNightmareMK5_M_inline3", "Items.SandevistanC1MK1_inline1")  -- Duration
            TweakDB:CloneRecord("Items.ArasakaNightmareMK5_M_inline4", "Items.SandevistanC1MK1_inline2")  -- Time Scale
            TweakDB:CloneRecord("Items.ArasakaNightmareMK5_M_inline5", "Items.SandevistanC1MK1_inline3")  -- Cooldown
end

local objActions = {
    "CyberwareAction.UseSandevistan",
    "DeviceAction.MalfunctionClassHack",
    "DeviceAction.ToggleStateClassHack",
    "DeviceAction.TakeControlCameraClassHack",
    "QuickHack.RemoteBreach",
    "DeviceAction.RemoteBreach",
    "DeviceAction.DataExtractionClassHack",
    "DeviceAction.OverloadClassHack",
    "DeviceAction.OverrideAttitudeClassHack",
    "DeviceAction.SetDeviceTagKillMode",
    "DeviceAction.TurretOverrideAttitudeClassHack",
    "DeviceAction.TakeControlClassHack"
}

local objEquipMk4 = {
    "Items.SandevistanBase_inline2",
    "Items.BaseDeck_inline0",
    "Items.BaseDeck_inline3",
    "Items.ArasakaNightmareMK4_M_inline0",
    "Items.DamageHacksAreaAbility",
    "Items.CooldownReductionAbility02",
    "Items.NPCUploadTimeAbility01"
}

local objEquipMk5 = {
    "Items.SandevistanBase_inline2",
    "Items.BaseDeck_inline0",
    "Items.BaseDeck_inline3",
    "Items.ArasakaNightmareMK5_M_inline0",
    "Items.DamageHacksAreaAbility",
    "Items.CooldownReductionAbility03",
    "Items.NPCUploadTimeAbility02"
}

local objStatsMk4 = {
    "Items.SandevistanBase_inline0",
    "Items.SandevistanBase_inline1",
    "Items.ArasakaNightmareMK4_M_inline3",
    "Items.ArasakaNightmareMK4_M_inline4",
    "Items.ArasakaNightmareMK4_M_inline5"
}
    
local objStatsMk5 = {
    "Items.SandevistanBase_inline0",
    "Items.SandevistanBase_inline1",
    "Items.ArasakaNightmareMK5_M_inline3",
    "Items.ArasakaNightmareMK5_M_inline4",
    "Items.ArasakaNightmareMK5_M_inline5"
}

local mk5Slots = {
    "Items.CyberdeckBlueprint8Slots_inline1",
    "Items.CyberdeckBlueprint8Slots_inline2",
    "Items.CyberdeckBlueprint8Slots_inline3",
    "Items.CyberdeckBlueprint8Slots_inline4",
    "Items.CyberdeckBlueprint8Slots_inline5",
    "Items.CyberdeckBlueprint8Slots_inline6",
    "Items.CyberdeckBlueprint8Slots_inline7",
    "Items.SandevistanBlueprint_inline1"
}

-- Custom 8Slots Blueprint for Mk.5
if TweakDB:GetRecord("Items.NightmareCyberdeckBlueprint8Slots") == nil then
    TweakDB:CreateRecord("Items.NightmareCyberdeckBlueprint8Slots", "gamedataItemBlueprint_Record")
    TweakDB:CloneRecord("Items.NightmareCyberdeckBlueprint8Slots_inline0", "Items.CyberdeckBlueprint8Slots_inline0")
    TweakDB:SetFlat("Items.NightmareCyberdeckBlueprint8Slots.rootElement", "Items.NightmareCyberdeckBlueprint8Slots_inline0")
    TweakDB:SetFlat("Items.NightmareCyberdeckBlueprint8Slots_inline0.childElements", mk5Slots)
end

-- SetFlats for Mk.4
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.blueprint", "Items.CyberdeckBlueprint6Slots")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.displayName", LocKey("ArasakaNightmareCyberdeckMK4-Name"))
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.friendlyName", "Arasaka Nightmare Mk.4")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.iconPath", "cw_system_arasakacyberdeck")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.localizedDescription", LocKey("ArasakaNightmareCyberdeck-Desc-Universal"))
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.objectActions", objActions)
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.OnEquip", objEquipMk4)
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.statModifiers", objStatsMk4)
arrayInsert("Items.ArasakaNightmareMK4_M.tags", CName('Cyberdeck'))
    TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline0.stats", {"Items.ArasakaNightmareMK4_M_inline1","Items.ArasakaNightmareMK4_M_inline2"})
        TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline1.value", 8)   -- RAM
        TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline2.value", 7)   -- Buffer
        TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline3.value", 4)   -- Duration
        TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline4.value", 0.25)    -- Time Scale
        TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline5.value", 8)   -- Cooldown
arrayInsert("Debug.CW_Cyberdecks.items", "Items.ArasakaNightmareMK4_M")

-- SetFlats for Mk.5
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.blueprint", "Items.NightmareCyberdeckBlueprint8Slots")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.displayName", LocKey("ArasakaNightmareCyberdeckMK5-Name"))
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.friendlyName", "Arasaka Nightmare Mk.5")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.iconPath", "cw_system_arasakacyberdeck")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.localizedDescription", LocKey("ArasakaNightmareCyberdeck-Desc-Universal"))
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.objectActions", objActions)
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.OnEquip", objEquipMk5)
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.statModifiers", objStatsMk5)
arrayInsert("Items.ArasakaNightmareMK5_M.tags", CName('Cyberdeck'))
    TweakDB:SetFlat("Items.ArasakaNightmareMK5_M_inline0.stats", {"Items.ArasakaNightmareMK5_M_inline1","Items.ArasakaNightmareMK5_M_inline2"})
        TweakDB:SetFlat("Items.ArasakaNightmareMK5_M_inline1.value", 10)   -- RAM
        TweakDB:SetFlat("Items.ArasakaNightmareMK5_M_inline2.value", 8)   -- Buffer
        TweakDB:SetFlat("Items.ArasakaNightmareMK5_M_inline3.value", 4)   -- Duration
        TweakDB:SetFlat("Items.ArasakaNightmareMK5_M_inline4.value", 0.25)    -- Time Scale
        TweakDB:SetFlat("Items.ArasakaNightmareMK5_M_inline5.value", 8)   -- Cooldown
arrayInsert("Debug.CW_Cyberdecks.items", "Items.ArasakaNightmareMK5_M")
