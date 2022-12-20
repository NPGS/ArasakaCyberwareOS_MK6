-- ver. 1.12.4

-- Cyberdeck Militech Viper Mk.6 (BONUS)
if TweakDB:GetRecord("Items.MilitechViperLegendaryMKVI") == nil then
    TweakDB:CloneRecord("Items.MilitechViperLegendaryMKVI", "Items.NetwatchNetdriverLegendaryMKV")   -- item
        TweakDB:CloneRecord("Items.MilitechViperLegendaryMKVI_inline1", "Items.NetwatchNetdriverLegendaryMKV_inline1")   -- logic package
            cloneConstantStat("Items.MilitechViperLegendaryMKVI_inline2", "Items.NetwatchNetdriverLegendaryMKV_inline2", 16)   -- ram memory size
            cloneConstantStat("Items.MilitechViperLegendaryMKVI_inline3", "Items.NetwatchNetdriverLegendaryMKV_inline3", 12)   -- buffer size
        cloneConstantStat("Price.Cyberdeck_MilitechMKVI", "Price.Cyberdeck", 20)    -- price
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.cyberwareType", CName('Cyberdeck'))
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.blueprint", "Items.CyberdeckBlueprint8Slots")
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Cyberdeck_MilitechMKVI"})
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.displayName", LocKey("MilitechCyberdeckMK6-Name"))
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.friendlyName", "Militech Viper MK VI")
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.iconPath", "cw_system_militechcyberdeck")
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.localizedDescription", LocKey("MilitechCyberdeckMK6-Desc"))
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.OnEquip", {"Items.BaseDeck_inline0","Items.BaseDeck_inline3","Items.MilitechViperLegendaryMKVI_inline1","Items.UltimateHacksSpreadAbility","Items.DamageHacksAreaAbility","Items.SpreadingRangeAbility05_M","Items.MemoryRegenAbility03","Items.UploadReductionAbility01","Items.CooldownReductionAbility04_M","Items.NPCUploadTimeAbility03"})
    TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Cyberdeck_MilitechMKVI"})
        TweakDB:SetFlat("Items.MilitechViperLegendaryMKVI_inline1.stats", {"Items.MilitechViperLegendaryMKVI_inline2", "Items.MilitechViperLegendaryMKVI_inline3"})
    -- SERVICE
    createVendorItem("Vendors.wat_lch_ripperdoc_01_viper_mk6","Vendors.DowntownCredAvailability","Items.MilitechViperLegendaryMKVI","Vendors.wat_lch_ripperdoc_01.itemStock")   -- VENDOR
    arrayInsert("Debug.CW_Cyberdecks.items", "Items.MilitechViperLegendaryMKVI")    -- DEBUG
end
