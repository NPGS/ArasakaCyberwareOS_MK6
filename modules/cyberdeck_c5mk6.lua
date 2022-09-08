-- ver. 1.7

-- Cyberdeck Arasaka Phantom Mk.6
if TweakDB:GetRecord("Items.ArasakaPhantomLegendaryMKVI") == nil then

    -- BASE
    TweakDB:CloneRecord("Items.ArasakaPhantomLegendaryMKVI", "Items.ArasakaLegendaryMKIV")   -- cyberdeck record
        TweakDB:CloneRecord("Items.ArasakaPhantomLegendaryMKVI_inline0", "Items.ArasakaLegendaryMKIV_inline0")   -- logic package
            TweakDB:CloneRecord("Items.ArasakaPhantomLegendaryMKVI_inline1", "Items.ArasakaLegendaryMKIV_inline1")   -- ram memory size
            TweakDB:CloneRecord("Items.ArasakaPhantomLegendaryMKVI_inline2", "Items.ArasakaLegendaryMKIV_inline2")   -- buffer size

    -- PRICE
    TweakDB:CloneRecord("Price.Cyberdeck_ArasakaMKVI", "Price.Cyberdeck")

    -- VENDOR
    TweakDB:CloneRecord("Vendors.pac_wwd_ripperdoc_01_phantom_mk6", "Vendors.pac_wwd_ripperdoc_01_inline0")
    TweakDB:SetFlat("Vendors.pac_wwd_ripperdoc_01_phantom_mk6.item", "Items.ArasakaPhantomLegendaryMKVI")
    addToList("Vendors.pac_wwd_ripperdoc_01.itemStock", "Vendors.pac_wwd_ripperdoc_01_phantom_mk6")

end

-- PRICE
TweakDB:SetFlat("Price.Cyberdeck_ArasakaMKVI.value", 22.5)

-- OBJ
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.cyberwareType", cyberdeckCW)
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.blueprint", "Items.CyberdeckBlueprint8Slots")
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Cyberdeck_ArasakaMKVI"})
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.displayName", LocKey(87885))
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.friendlyName", "Arasaka Phantom MK VI")
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.localizedDescription", LocKey(87895))
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.OnEquip", {"Items.BaseDeck_inline0","Items.BaseDeck_inline3","Items.ArasakaPhantomLegendaryMKVI_inline0","Items.PingRefreshingAbility01","Items.StealthHacksCostAbility03","Items.MemoryRegenAbility04_M","Items.QuickHackDamageAbility03","Items.CooldownReductionAbility03","Items.QuickHackDurationAbility04_M","Items.UploadReductionAbility04_M"})
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Cyberdeck_ArasakaMKVI"})
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.statModifiers", {"Items.NetwatchNetdriverLegendaryMKV_inline0"})  -- Iconic

-- STATS
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI_inline0.stats", {"Items.ArasakaPhantomLegendaryMKVI_inline1", "Items.ArasakaPhantomLegendaryMKVI_inline2"})
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI_inline1.value", 16)
TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI_inline2.value", 12)
