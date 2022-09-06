-- ver. 1.6

-- Cyberdeck Militech Viper Mk.6 (GUEST)
if TweakDB:GetRecord("Items.MilitechViperLegendaryMKVI") == nil then

    -- BASE
    TweakDB:CloneRecord("Items.MilitechViperLegendaryMKVI", "Items.NetwatchNetdriverLegendaryMKV")   -- cyberdeck record
        TweakDB:CloneRecord("Items.MilitechViperLegendaryMKVI_inline1", "Items.NetwatchNetdriverLegendaryMKV_inline1")   -- logic package
            TweakDB:CloneRecord("Items.MilitechViperLegendaryMKVI_inline2", "Items.NetwatchNetdriverLegendaryMKV_inline2")   -- ram memory size
            TweakDB:CloneRecord("Items.MilitechViperLegendaryMKVI_inline3", "Items.NetwatchNetdriverLegendaryMKV_inline3")   -- buffer size

    -- PRICE
    TweakDB:CloneRecord("Price.Cyberdeck_MilitechMKVI", "Price.Cyberdeck")

    -- VENDOR
    TweakDB:CloneRecord("Vendors.wat_lch_ripperdoc_01_inline50", "Vendors.wat_lch_ripperdoc_01_inline15")
    TweakDB:SetFlat("Vendors.wat_lch_ripperdoc_01_inline50.item", "Items.MilitechViperLegendaryMKVI")
    addToList("Vendors.wat_lch_ripperdoc_01.itemStock", "Vendors.wat_lch_ripperdoc_01_inline50")

end

-- PRICE
TweakDB:SetFlat("Price.Cyberdeck_MilitechMKVI.value", 20)

-- OBJ
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.cyberwareType", cyberdeckCW)
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.blueprint", "Items.CyberdeckBlueprint8Slots")
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Cyberdeck_MilitechMKVI"})
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.displayName", LocKey(87886))
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.friendlyName", "Militech Viper MK VI")
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.iconPath", "cw_system_militechcyberdeck")
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.localizedDescription", LocKey(87896))
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.OnEquip", {"Items.BaseDeck_inline0","Items.BaseDeck_inline3","Items.MilitechViperLegendaryMKVI_inline1","Items.UltimateHacksSpreadAbility","Items.DamageHacksAreaAbility","Items.SpreadingRangeAbility05","Items.MemoryRegenAbility03","Items.UploadReductionAbility01","Items.CooldownReductionAbility04","Items.NPCUploadTimeAbility03"})
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Cyberdeck_MilitechMKVI"})

-- STATS
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI_inline1.stats", {"Items.MilitechViperLegendaryMKVI_inline2", "Items.MilitechViperLegendaryMKVI_inline3"})
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI_inline2.value", 16)
TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI_inline3.value", 12)
