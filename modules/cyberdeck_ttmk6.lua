-- ver. 1.10.0

-- Cyberdeck Tetratronic Rippler MK.6
if TweakDB:GetRecord("Items.TetratronicLegeMK6") == nil then
    TweakDB:CloneRecord("Items.TetratronicLegeMK6", "Items.TetratronicRipplerLegendaryMKIV")    -- ITEM
        TweakDB:CloneRecord("Items.TetratronicLegeMK6_inline0", "Items.TetratronicRipplerLegendaryMKIV_inline1")    -- LOGIC
            TweakDB:CloneRecord("Items.TetratronicLegeMK6_inline1", "Items.TetratronicRipplerLegendaryMKIV_inline2")    -- STAT
            TweakDB:CloneRecord("Items.TetratronicLegeMK6_inline2", "Items.TetratronicRipplerLegendaryMKIV_inline3")    -- STAT
    TweakDB:SetFlat("Items.TetratronicLegeMK6.blueprint", "Items.CyberdeckBlueprint8Slots")
    TweakDB:SetFlat("Items.TetratronicLegeMK6.cyberwareType", CName('Cyberdeck'))
    TweakDB:SetFlat("Items.TetratronicLegeMK6.displayName", LocKey('TetratronicCyberdeckMK6-Name'))
    TweakDB:SetFlat("Items.TetratronicLegeMK6.friendlyName", "Tetratronic Rippler MK VI")
    TweakDB:SetFlat("Items.TetratronicLegeMK6.OnEquip", {"Items.BaseDeck_inline0","Items.BaseDeck_inline3","Items.TetratronicLegeMK6_inline0","Items.UltimateHacksSpreadAbility","Items.UltimateCostAbility04_M","Items.StealthHacksCostAbility04_M","Items.MemoryRegenAbility02","Items.QuickHackDamageAbility04_M","Items.CooldownReductionAbility05_M","Items.UploadReductionAbility04_M"})
        TweakDB:SetFlat("Items.TetratronicLegeMK6_inline0.stats", {"Items.TetratronicLegeMK6_inline1","Items.TetratronicLegeMK6_inline2"})
            TweakDB:SetFlat("Items.TetratronicLegeMK6_inline1.value", 16)
            TweakDB:SetFlat("Items.TetratronicLegeMK6_inline2.value", 12)
    TweakDB:CloneRecord("Vendors.TetratronicRipplerMK6", "Vendors.bls_ina_se1_ripperdoc_01_inline0")
    TweakDB:SetFlat("Vendors.TetratronicRipplerMK6.item", "Items.TetratronicLegeMK6")
    arrayInsert("Vendors.bls_ina_se1_ripperdoc_01.itemStock", "Vendors.TetratronicRipplerMK6")
    arrayInsert("Debug.CW_Cyberdecks.items", "Items.TetratronicLegeMK6")
end
