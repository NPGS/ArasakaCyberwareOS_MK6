-- ver. 1.12.4   Arasaka Nightmare Mk.4/5 + NetWatch & Qiant Rage Mk.5 (Hybrid Cyberdeck/Sandevistan OS)

-- Arasaka Nightmare Mk.4
if TweakDB:GetRecord("Items.ArasakaNightmareMK4_M") == nil then
    TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M", "Items.SandevistanC1MK1")    -- Item
        TweakDB:CreateRecord("Items.ArasakaNightmareMK4_M_inline0", "gamedataGameplayLogicPackage_Record")   -- Logic (Netrunner)
            cloneConstantStat("Items.ArasakaNightmareMK4_M_inline1", "Items.MilitechParaline_inline1", 8)   -- RAM
            cloneConstantStat("Items.ArasakaNightmareMK4_M_inline2", "Items.MilitechParaline_inline2", 7)  -- Buffer
            cloneConstantStat("Items.ArasakaNightmareMK4_M_inline3", "Items.SandevistanC1MK1_inline1", 4)  -- Duration
            cloneConstantStat("Items.ArasakaNightmareMK4_M_inline4", "Items.SandevistanC1MK1_inline2", 0.25)  -- Time Scale
            cloneConstantStat("Items.ArasakaNightmareMK4_M_inline5", "Items.SandevistanC1MK1_inline3", 8)  -- Cooldown
        TweakDB:CloneRecord("Items.ArasakaNightmareMK4_M_inline6", "Items.SandevistanC1MK1_inline0")  -- Prereq
        cloneConstantStat("Price.Cyberdeck_NM4", "Price.Cyberdeck", 8)   -- Price
    arrayInsert("Items.ArasakaNightmareMK4_M.tags", CName('Cyberdeck')) -- Tags
    -- SERVICE
    createVendorItem("Vendors.cct_dtn_ripdoc_01_nightmare4","Vendors.EndGameCredAvailability","Items.ArasakaNightmareMK4_M","Vendors.cct_dtn_ripdoc_01.itemStock")   -- Vendor
    arrayInsert("Debug.CW_Cyberdecks.items","Items.ArasakaNightmareMK4_M") -- Debug
end

-- Arasaka Nightmare Mk.5
if TweakDB:GetRecord("Items.ArasakaNightmareMK5_M") == nil then
    TweakDB:CloneRecord("Items.ArasakaNightmareMK5_M", "Items.SandevistanC1MK1")    -- Item
        TweakDB:CreateRecord("Items.ArasakaNightmareMK5_M_inline0", "gamedataGameplayLogicPackage_Record")   -- Logic (Netrunner)
            cloneConstantStat("Items.ArasakaNightmareMK5_M_inline1", "Items.MilitechParaline_inline1", 10)   -- RAM
            cloneConstantStat("Items.ArasakaNightmareMK5_M_inline2", "Items.MilitechParaline_inline2", 8)  -- Buffer
            cloneConstantStat("Items.ArasakaNightmareMK5_M_inline3", "Items.SandevistanC1MK1_inline1", 4)  -- Duration
            cloneConstantStat("Items.ArasakaNightmareMK5_M_inline4", "Items.SandevistanC1MK1_inline2", 0.25)  -- Time Scale
            cloneConstantStat("Items.ArasakaNightmareMK5_M_inline5", "Items.SandevistanC1MK1_inline3", 8)  -- Cooldown
        cloneConstantStat("Price.Cyberdeck_NM5", "Price.Cyberdeck", 15)   -- Price
    arrayInsert("Items.ArasakaNightmareMK5_M.tags", CName('Cyberdeck')) -- Tags
    -- SERVICE
    createVendorItem("Vendors.wbr_jpn_ripperdoc_02_nightmare5","Vendors.DowntownCredAvailability","Items.ArasakaNightmareMK5_M","Vendors.wbr_jpn_ripperdoc_02.itemStock")    -- Vendor
    arrayInsert("Debug.CW_Cyberdecks.items","Items.ArasakaNightmareMK5_M") -- Debug
end

-- NetWatch & Qiant Rage Mk.5
if TweakDB:GetRecord("Items.NetwatchQiantRageMK5_M") == nil then
    TweakDB:CloneRecord("Items.NetwatchQiantRageMK5_M", "Items.SandevistanC1MK1")    -- Item
        TweakDB:CreateRecord("Items.NetwatchQiantRageMK5_M_inline0", "gamedataGameplayLogicPackage_Record")   -- Logic (Netrunner)
            cloneConstantStat("Items.NetwatchQiantRageMK5_M_inline1", "Items.MilitechParaline_inline1", 10)   -- RAM
            cloneConstantStat("Items.NetwatchQiantRageMK5_M_inline2", "Items.MilitechParaline_inline2", 8)  -- Buffer
            cloneConstantStat("Items.NetwatchQiantRageMK5_M_inline3", "Items.SandevistanC1MK1_inline1", 4)  -- Duration
            cloneConstantStat("Items.NetwatchQiantRageMK5_M_inline4", "Items.SandevistanC1MK1_inline2", 0.1)  -- Time Scale
            cloneConstantStat("Items.NetwatchQiantRageMK5_M_inline5", "Items.SandevistanC1MK1_inline3", 8)  -- Cooldown
        TweakDB:CloneRecord("Items.NetwatchQiantRageMK5_M_inline6", "Items.SandevistanC1MK1_inline0")  -- Prereq
    arrayInsert("Items.NetwatchQiantRageMK5_M.tags", CName('Cyberdeck')) -- Tags
    -- SERVICE
    createVendorItem("Vendors.std_arr_ripperdoc_01_rage_mk5","Vendors.DowntownCredAvailability","Items.NetwatchQiantRageMK5_M","Vendors.std_arr_ripperdoc_01.itemStock")-- Vendor
    arrayInsert("Debug.CW_Cyberdecks.items", "Items.NetwatchQiantRageMK5_M") -- Debug
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
    "Items.QuickHackDamageAbility02",
    "Items.CooldownReductionAbility03",
    "Items.QuickHackDurationAbility03",
    "Items.NPCUploadTimeAbility02"
}

local objEquipRageMk5 = {
    "Items.SandevistanBase_inline2",
    "Items.BaseDeck_inline0",
    "Items.BaseDeck_inline3",
    "Items.NetwatchQiantRageMK5_M_inline0",
    "Items.UltimateHacksSpreadAbility",
    "Items.DamageHacksAreaAbility",
    "Items.MemoryRegenAbility03",
    "Items.SpreadingRangeAbility03",
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
    "Items.TetratronicRipplerLegendaryMKIV_inline0",
    "Items.ArasakaNightmareMK5_M_inline3",
    "Items.ArasakaNightmareMK5_M_inline4",
    "Items.ArasakaNightmareMK5_M_inline5"
}

local objStatsRageMk5 = {
    "Items.SandevistanBase_inline0",
    "Items.SandevistanBase_inline1",
    "Items.NetwatchNetdriverLegendaryMKV_inline0",
    "Items.NetwatchQiantRageMK5_M_inline3",
    "Items.NetwatchQiantRageMK5_M_inline4",
    "Items.NetwatchQiantRageMK5_M_inline5"
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

local nm4Price = {
    "Price.BasePrice",
    "Price.BuyMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_NM4"
}

local nm4SellPrice = {
    "Price.BasePrice",
    "Price.CyberwareSellMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.CraftingTraitMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_NM4"
}

local nm5Price = {
    "Price.BasePrice",
    "Price.BuyMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_NM5"
}

local nm5SellPrice = {
    "Price.BasePrice",
    "Price.CyberwareSellMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.CraftingTraitMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_NM5"
}

-- Custom 8Slots Blueprint for hybrid cyberdecks Mk.5
if TweakDB:GetRecord("Items.NightmareCyberdeckBlueprint8Slots") == nil then
    TweakDB:CreateRecord("Items.NightmareCyberdeckBlueprint8Slots", "gamedataItemBlueprint_Record")
    TweakDB:CloneRecord("Items.NightmareCyberdeckBlueprint8Slots_inline0", "Items.CyberdeckBlueprint8Slots_inline0")
    TweakDB:SetFlat("Items.NightmareCyberdeckBlueprint8Slots.rootElement", "Items.NightmareCyberdeckBlueprint8Slots_inline0")
    TweakDB:SetFlat("Items.NightmareCyberdeckBlueprint8Slots_inline0.childElements", mk5Slots)
end

-- Arasaka Nightmare Mk.4
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.blueprint", "Items.CyberdeckBlueprint6Slots")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.buyPrice", nm4Price)
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.displayName", LocKey("ArasakaNightmareCyberdeckMK4-Name"))
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.equipPrereqs", {"Items.ArasakaNightmareMK4_M_inline6"})
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.friendlyName", "Arasaka Nightmare Mk.4")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.iconPath", "cw_system_arasakacyberdeck")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.localizedDescription", LocKey("ArasakaNightmareCyberdeck-Desc-Universal"))
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.objectActions", objActions)
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.OnEquip", objEquipMk4)
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.sellPrice", nm4SellPrice)
TweakDB:SetFlat("Items.ArasakaNightmareMK4_M.statModifiers", objStatsMk4)
    TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline0.stats", {"Items.ArasakaNightmareMK4_M_inline1","Items.ArasakaNightmareMK4_M_inline2"})
    TweakDB:SetFlat("Items.ArasakaNightmareMK4_M_inline6.valueToCheck", 10)   -- Prereq

-- Arasaka Nightmare Mk.5
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.blueprint", "Items.NightmareCyberdeckBlueprint8Slots")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.buyPrice", nm5Price)
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.displayName", LocKey("ArasakaNightmareCyberdeckMK5-Name"))
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.equipPrereqs", {"Items.ArasakaNightmareMK4_M_inline6"})
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.friendlyName", "Arasaka Nightmare Mk.5")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.iconPath", "cw_system_arasakacyberdeck")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.localizedDescription", LocKey("ArasakaNightmareCyberdeck-Desc-Universal"))
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.objectActions", objActions)
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.OnEquip", objEquipMk5)
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.sellPrice", nm5SellPrice)
TweakDB:SetFlat("Items.ArasakaNightmareMK5_M.statModifiers", objStatsMk5)
    TweakDB:SetFlat("Items.ArasakaNightmareMK5_M_inline0.stats", {"Items.ArasakaNightmareMK5_M_inline1","Items.ArasakaNightmareMK5_M_inline2"})

-- NetWatch & Qiant Rage Mk.5
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.blueprint", "Items.NightmareCyberdeckBlueprint8Slots")
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.buyPrice", nm5Price)
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.displayName", LocKey("NetwatchQiantCyberdeckMK5-Name"))
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.equipPrereqs", {"Items.NetwatchQiantRageMK5_M_inline6"})
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.friendlyName", "NetWatch & Qiant Rage Mk.5")
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.iconPath", "cw_system_netwatchnetdrivercyberdeck")
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.localizedDescription", LocKey("NetwatchQiantCyberdeckMK5-Desc"))
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.objectActions", objActions)
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.OnEquip", objEquipRageMk5)
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.sellPrice", nm5SellPrice)
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M.statModifiers", objStatsRageMk5)
    TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M_inline0.stats", {"Items.NetwatchQiantRageMK5_M_inline1","Items.NetwatchQiantRageMK5_M_inline2"})
    TweakDB:SetFlat("Items.NetwatchQiantRageMK5_M_inline6.valueToCheck", 12)   -- Prereq

-- NetWatch & Qiant Rage Mk.5 TEST
if TweakDB:GetRecord("Items.NetwatchQiantRageMK5_Test") == nil then
    TweakDB:CloneRecord("Items.NetwatchQiantRageMK5_Test", "Items.NetwatchQiantRageMK5_M")    -- Item
    arrayInsert("Debug.CW_Cyberdecks.items", "Items.NetwatchQiantRageMK5_Test") -- Debug
end

local objEquipRageMk5Proto = {
    "Items.SandevistanBase_inline2",
    "Items.BaseDeck_inline0",
    "Items.BaseDeck_inline3",
    "Items.NetwatchQiantRageMK5_M_inline0",
    "Items.UltimateHacksSpreadAbility",
    "Items.DamageHacksAreaAbility",
    "Items.CooldownReductionAbility03",
    "Items.SpreadingRangeAbility03",
    "Items.UploadReductionAbility03"
}

-- NetWatch & Qiant Rage Mk.5 TEST
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_Test.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_Test.friendlyName", "NetWatch & Qiant Rage Mk.5 Prototype")
TweakDB:SetFlat("Items.NetwatchQiantRageMK5_Test.OnEquip", objEquipRageMk5Proto)
