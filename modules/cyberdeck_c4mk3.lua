-- ver. 1.12.4

-- Cyberdeck Militech Paraline Mk.3 (GUEST)
if TweakDB:GetRecord("Items.MilitechParalineEpicMKIII") == nil then
    TweakDB:CloneRecord("Items.MilitechParalineEpicMKIII", "Items.TetratronicEpicMKIII")   -- item
        TweakDB:CloneRecord("Items.MilitechParalineEpicMKIII_inline0", "Items.TetratronicEpicMKIII_inline0")   -- logic package
            Ti200.cloneConstantStat("Items.MilitechParalineEpicMKIII_inline1", "Items.TetratronicEpicMKIII_inline1", 8)   -- ram memory size
            Ti200.cloneConstantStat("Items.MilitechParalineEpicMKIII_inline2", "Items.TetratronicEpicMKIII_inline2", 7)   -- buffer size
    TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.cyberwareType", CName('Cyberdeck'))
    TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.displayName", LocKey("MilitechCyberdeckMK3-Name"))
    TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.friendlyName", "Militech Paraline MK III")
    TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.iconPath", "cw_system_militechcyberdeck")
    TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.localizedDescription", LocKey(51730))
    TweakDB:SetFlat("Items.MilitechParalineEpicMKIII.OnEquip", {"Items.BaseDeck_inline0","Items.BaseDeck_inline3","Items.MilitechParalineEpicMKIII_inline0","Items.MemoryRegenAbility02","Items.CooldownReductionAbility02"})
        TweakDB:SetFlat("Items.MilitechParalineEpicMKIII_inline0.stats", {"Items.MilitechParalineEpicMKIII_inline1", "Items.MilitechParalineEpicMKIII_inline2"})
    -- SERVICE
    Ti200.createVendorItem("Vendors.wat_lch_ripperdoc_01_militech_mk3", "Vendors.LateStartGameCredAvailability", "Items.MilitechParalineEpicMKIII", "Vendors.wat_lch_ripperdoc_01.itemStock") -- VENDOR
    Ti200.arrayInsert("Debug.CW_Cyberdecks.items", "Items.MilitechParalineEpicMKIII") -- DEBUG
end
