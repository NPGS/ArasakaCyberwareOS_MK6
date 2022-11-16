-- ver. 1.12.1   Fuyutsuki Electronics Mk.2/3-S (Hybrid Cyberdeck/Sandevistan OS)

-- Fuyutsuki Electronics Mk.2-S
if TweakDB:GetRecord("Items.FuyutsukiCyberdeckMK2_SM") == nil then
    TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK2_SM", "Items.SandevistanC1MK1")    -- Item
        TweakDB:CreateRecord("Items.FuyutsukiCyberdeckMK2_SM_inline0", "gamedataGameplayLogicPackage_Record")   -- Logic (Netrunner)
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK2_SM_inline1", "Items.MilitechParaline_inline1")   -- RAM
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK2_SM_inline2", "Items.MilitechParaline_inline2")  -- Buffer
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK2_SM_inline3", "Items.SandevistanC1MK1_inline1")  -- Duration
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK2_SM_inline4", "Items.SandevistanC1MK1_inline2")  -- Time Scale
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK2_SM_inline5", "Items.SandevistanC1MK1_inline3")  -- Cooldown
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK2_SM_inline6", "Items.SandevistanC1MK1_inline0")  -- Prereq
    TweakDB:CloneRecord("Price.Cyberdeck_MK2S", "Price.Cyberdeck")   -- Price
    TweakDB:CloneRecord("Vendors.wat_lch_ripperdoc_01_fuyDeckMK2S", "Vendors.wat_lch_ripperdoc_01_inline14")  -- Vendor Item
    arrayInsert("Items.FuyutsukiCyberdeckMK2_SM.tags", CName('Cyberdeck')) -- Tags
    arrayInsert("Vendors.wat_lch_ripperdoc_01.itemStock", "Vendors.wat_lch_ripperdoc_01_fuyDeckMK2S")   -- Vendor list
    arrayInsert("Debug.CW_Cyberdecks.items", "Items.FuyutsukiCyberdeckMK2_SM") -- Debug
end

-- Fuyutsuki Electronics Mk.3-S
if TweakDB:GetRecord("Items.FuyutsukiCyberdeckMK3_SM") == nil then
    TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK3_SM", "Items.SandevistanC1MK1")    -- Item
        TweakDB:CreateRecord("Items.FuyutsukiCyberdeckMK3_SM_inline0", "gamedataGameplayLogicPackage_Record")   -- Logic (Netrunner)
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK3_SM_inline1", "Items.MilitechParaline_inline1")   -- RAM
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK3_SM_inline2", "Items.MilitechParaline_inline2")  -- Buffer
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK3_SM_inline3", "Items.SandevistanC1MK1_inline1")  -- Duration
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK3_SM_inline4", "Items.SandevistanC1MK1_inline2")  -- Time Scale
            TweakDB:CloneRecord("Items.FuyutsukiCyberdeckMK3_SM_inline5", "Items.SandevistanC1MK1_inline3")  -- Cooldown
    TweakDB:CloneRecord("Price.Cyberdeck_MK3S", "Price.Cyberdeck")   -- Price
    TweakDB:CloneRecord("Vendors.wat_nid_ripperdoc_01_fuyDeckMK3S", "Vendors.wat_nid_ripperdoc_01_inline1")  -- Vendor Item
    arrayInsert("Items.FuyutsukiCyberdeckMK3_SM.tags", CName('Cyberdeck')) -- Tags
    arrayInsert("Vendors.wat_nid_ripperdoc_01.itemStock", "Vendors.wat_nid_ripperdoc_01_fuyDeckMK3S")    -- Vendor list
    arrayInsert("Debug.CW_Cyberdecks.items", "Items.FuyutsukiCyberdeckMK3_SM") -- Debug
end

local objActionsMk2 = {
    "CyberwareAction.UseSandevistan",
    "DeviceAction.MalfunctionClassHack",
    "DeviceAction.ToggleStateClassHack",
    "DeviceAction.TakeControlCameraClassHack",
    "QuickHack.RemoteBreach",
    "DeviceAction.RemoteBreach",
    "DeviceAction.DataExtractionClassHack",
    "DeviceAction.OverloadClassHack",
    "DeviceAction.OverrideAttitudeClassHack",
    "DeviceAction.SetDeviceTagKillMode"
}

local objActionsMk3 = {
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
    "DeviceAction.TurretOverrideAttitudeClassHack"
}

local objEquipMk2 = {
    "Items.SandevistanBase_inline2",
    "Items.BaseDeck_inline0",
    "Items.BaseDeck_inline3",
    "Items.FuyutsukiCyberdeckMK2_SM_inline0",
    "Items.MemoryRegenAbility02"
}

local objEquipMk3 = {
    "Items.SandevistanBase_inline2",
    "Items.BaseDeck_inline0",
    "Items.BaseDeck_inline3",
    "Items.FuyutsukiCyberdeckMK3_SM_inline0",
    "Items.UltimateHacksSpreadAbility",
    "Items.MemoryRegenAbility03"
}

local objStatsMk2 = {
    "Items.SandevistanBase_inline0",
    "Items.SandevistanBase_inline1",
    "Items.FuyutsukiCyberdeckMK2_SM_inline3",
    "Items.FuyutsukiCyberdeckMK2_SM_inline4",
    "Items.FuyutsukiCyberdeckMK2_SM_inline5"
}
    
local objStatsMk3 = {
    "Items.SandevistanBase_inline0",
    "Items.SandevistanBase_inline1",
    "Items.FuyutsukiCyberdeckMK3_SM_inline3",
    "Items.FuyutsukiCyberdeckMK3_SM_inline4",
    "Items.FuyutsukiCyberdeckMK3_SM_inline5"
}

local nm2Price = {
    "Price.BasePrice",
    "Price.BuyMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_MK2S"
}

local nm2SellPrice = {
    "Price.BasePrice",
    "Price.CyberwareSellMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.CraftingTraitMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_MK2S"
}

local nm3Price = {
    "Price.BasePrice",
    "Price.BuyMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_MK3S"
}

local nm3SellPrice = {
    "Price.BasePrice",
    "Price.CyberwareSellMultiplier",
    "Price.Cyberware",
    "Price.CyberwareQualityMultiplier",
    "Price.CraftingTraitMultiplier",
    "Price.IconicMultiplier",
    "Price.Cyberdeck_MK3S"
}

-- Fuyutsuki Electronics Mk.2-S
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.blueprint", "Items.CyberdeckBlueprint4Slots")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.buyPrice", nm2Price)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.displayName", LocKey("FuyutsukiCyberdeckMK2S-Name"))
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.equipPrereqs", {"Items.FuyutsukiCyberdeckMK2_SM_inline6"})
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.friendlyName", "Fuyutsuki Mk.II-S")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.iconPath", "cw_system_fuyutsuicyberdeck")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.localizedDescription", LocKey("FuyutsukiCyberdeckMKS-Desc-Universal"))
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.objectActions", objActionsMk2)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.OnEquip", objEquipMk2)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.quality", "Quality.Rare")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.sellPrice", nm2SellPrice)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM.statModifiers", objStatsMk2)
    TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM_inline0.stats", {"Items.FuyutsukiCyberdeckMK2_SM_inline1","Items.FuyutsukiCyberdeckMK2_SM_inline2"})
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM_inline1.value", 5)   -- RAM
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM_inline2.value", 5)   -- Buffer
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM_inline3.value", 4)   -- Duration
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM_inline4.value", 0.5)    -- Time Scale
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM_inline5.value", 8)   -- Cooldown
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK2_SM_inline6.valueToCheck", 6)   -- Prereq
TweakDB:SetFlat("Price.Cyberdeck_MK2S.value", 6.5)
TweakDB:SetFlat("Vendors.wat_lch_ripperdoc_01_fuyDeckMK2S.availabilityPrereq", "Vendors.EarlyStartGameCredAvailability")
TweakDB:SetFlat("Vendors.wat_lch_ripperdoc_01_fuyDeckMK2S.item", "Items.FuyutsukiCyberdeckMK2_SM")

-- Fuyutsuki Electronics Mk.3-S
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.blueprint", "Items.CyberdeckBlueprint5Slots")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.buyPrice", nm3Price)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.cyberwareType", CName('Cyberdeck'))
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.displayName", LocKey("FuyutsukiCyberdeckMK3S-Name"))
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.equipPrereqs", {"Items.FuyutsukiCyberdeckMK2_SM_inline6"})
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.friendlyName", "Fuyutsuki Mk.III-S")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.iconPath", "cw_system_fuyutsuicyberdeck")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.localizedDescription", LocKey("FuyutsukiCyberdeckMKS-Desc-Universal"))
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.objectActions", objActionsMk3)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.OnEquip", objEquipMk3)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.quality", "Quality.Epic")
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.sellPrice", nm3SellPrice)
TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM.statModifiers", objStatsMk3)
    TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM_inline0.stats", {"Items.FuyutsukiCyberdeckMK3_SM_inline1","Items.FuyutsukiCyberdeckMK3_SM_inline2"})
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM_inline1.value", 6)   -- RAM
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM_inline2.value", 6)   -- Buffer
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM_inline3.value", 4)   -- Duration
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM_inline4.value", 0.5)    -- Time Scale
        TweakDB:SetFlat("Items.FuyutsukiCyberdeckMK3_SM_inline5.value", 8)   -- Cooldown
TweakDB:SetFlat("Price.Cyberdeck_MK3S.value", 7.5)
TweakDB:SetFlat("Vendors.wat_nid_ripperdoc_01_fuyDeckMK3S.availabilityPrereq", "Vendors.EarlyMidGameCredAvailability")
TweakDB:SetFlat("Vendors.wat_nid_ripperdoc_01_fuyDeckMK3S.item", "Items.FuyutsukiCyberdeckMK3_SM")
