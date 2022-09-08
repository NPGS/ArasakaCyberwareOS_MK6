-- ver. 1.7

-- Cyberdeck Militech Paraline Mk.3 (GUEST)
if TweakDB:GetRecord("Items.MilitechParalineEpicMKIII") == nil then

    -- BASE
    TweakDB:CloneRecord("Items.MilitechParalineEpicMKIII", "Items.TetratronicEpicMKIII")   -- cyberdeck record
        TweakDB:CloneRecord("Items.MilitechParalineEpicMKIII_inline0", "Items.TetratronicEpicMKIII_inline0")   -- logic package
            TweakDB:CloneRecord("Items.MilitechParalineEpicMKIII_inline1", "Items.TetratronicEpicMKIII_inline1")   -- ram memory size
            TweakDB:CloneRecord("Items.MilitechParalineEpicMKIII_inline2", "Items.TetratronicEpicMKIII_inline2")   -- buffer size

    -- VENDOR
    TweakDB:CloneRecord("Vendors.wat_lch_ripperdoc_01_militechmk3", "Vendors.wat_lch_ripperdoc_01_inline15")
    TweakDB:SetFlat("Vendors.wat_lch_ripperdoc_01_militechmk3.item", "Items.MilitechParalineEpicMKIII")
    addToList("Vendors.wat_lch_ripperdoc_01.itemStock", "Vendors.wat_lch_ripperdoc_01_militechmk3")

end

-- OBJ
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.cyberwareType", cyberdeckCW)
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.blueprint", "Items.CyberdeckBlueprint6Slots")
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.displayName", LocKey(88531))
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.friendlyName", "Militech Paraline MK III")
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.iconPath", "cw_system_militechcyberdeck")
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.localizedDescription", LocKey(51730))
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.OnEquip", {"Items.BaseDeck_inline0","Items.BaseDeck_inline3","Items.MilitechParalineEpicMKIII_inline0","Items.MemoryRegenAbility02","Items.QuickHackDurationAbility01","Items.CooldownReductionAbility02"})
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.statModifiers", {"Items.NetwatchNetdriverLegendaryMKV_inline0"})   -- Iconic

-- STATS
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII_inline0.stats", {"Items.MilitechParalineEpicMKIII_inline1", "Items.MilitechParalineEpicMKIII_inline2"})
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII_inline1.value", 8)
TweakDB:SetFlat("Items.MilitechParalineEpicMKIII_inline2.value", 7)
