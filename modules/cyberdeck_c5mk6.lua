-- ver. 1.12.4

-- Cyberdeck Arasaka Phantom Mk.6
if TweakDB:GetRecord("Items.ArasakaPhantomLegendaryMKVI") == nil then
    TweakDB:CloneRecord("Items.ArasakaPhantomLegendaryMKVI", "Items.ArasakaLegendaryMKIV")   -- item
        TweakDB:CloneRecord("Items.ArasakaPhantomLegendaryMKVI_inline0", "Items.ArasakaLegendaryMKIV_inline0")   -- logic package
            cloneConstantStat("Items.ArasakaPhantomLegendaryMKVI_inline1", "Items.ArasakaLegendaryMKIV_inline1", 16)   -- ram memory size
            cloneConstantStat("Items.ArasakaPhantomLegendaryMKVI_inline2", "Items.ArasakaLegendaryMKIV_inline2", 12)   -- buffer size
        cloneConstantStat("Price.Cyberdeck_ArasakaMKVI", "Price.Cyberdeck", 22.5)   -- price
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.cyberwareType", CName('Cyberdeck'))
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.blueprint", "Items.CyberdeckBlueprint8Slots")
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Cyberdeck_ArasakaMKVI"})
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.displayName", LocKey("ArasakaCyberdeckMK6-Name"))
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.friendlyName", "Arasaka Phantom MK VI")
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.localizedDescription", LocKey("ArasakaCyberdeckMK6-Desc"))
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.OnEquip", {"Items.BaseDeck_inline0","Items.BaseDeck_inline3","Items.ArasakaPhantomLegendaryMKVI_inline0","Items.PingRefreshingAbility01","Items.StealthHacksCostAbility03","Items.MemoryRegenAbility04_M","Items.QuickHackDamageAbility03","Items.CooldownReductionAbility03","Items.QuickHackDurationAbility04_M","Items.UploadReductionAbility04_M"})
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Cyberdeck_ArasakaMKVI"})
    TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI.statModifiers", {"Quality.IconicItem"})  -- Iconic
        TweakDB:SetFlat("Items.ArasakaPhantomLegendaryMKVI_inline0.stats", {"Items.ArasakaPhantomLegendaryMKVI_inline1", "Items.ArasakaPhantomLegendaryMKVI_inline2"})
    -- SERVICE
    createVendorItem("Vendors.pac_wwd_ripperdoc_01_phantom_mk6","Vendors.DowntownCredAvailability","Items.ArasakaPhantomLegendaryMKVI","Vendors.pac_wwd_ripperdoc_01.itemStock")    -- VENDOR
    arrayInsert("Debug.CW_Cyberdecks.items", "Items.ArasakaPhantomLegendaryMKVI")
end
