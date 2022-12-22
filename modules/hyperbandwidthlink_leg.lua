-- ver. 1.12.4

-- Sandevistan - Arasaka Hyper Bandwidth Link (Legendary)
if TweakDB:GetRecord("Items.SpecialSandevistanFragment1") == nil then
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment1", "Items.SandevistanFragment1")  -- ITEM
        Ti200.cloneConstantStat("Items.SpecialSandevistanFragment1_inline2", "Items.SandevistanFragment1_inline2", 2) -- STAT
        Ti200.cloneConstantStat("Items.SpecialSandevistanFragment1_inline3", "Items.SandevistanFragment4_inline2", 2) -- STAT
    Ti200.arrayInsert("Items.SpecialSandevistanFragment1.OnAttach", "Items.SandevistanFragment4_inline0")
    TweakDB:SetFlat("Items.SpecialSandevistanFragment1.CraftingData", "Items.ArasakaSandevistanFragment1_inline6")
    TweakDB:SetFlat("Items.SpecialSandevistanFragment1.displayName", LocKey("HyperBandwidthLink-Name"))
    TweakDB:SetFlat("Items.SpecialSandevistanFragment1.localizedDescription", LocKey("HyperBandwidthLink-Desc"))
    TweakDB:SetFlat("Items.SpecialSandevistanFragment1.iconPath", "cwf_sandevistan3")
    TweakDB:SetFlat("Items.SpecialSandevistanFragment1.quality", "Quality.Legendary")
    TweakDB:SetFlat("Items.SpecialSandevistanFragment1.statModifiers", {"Items.SpecialSandevistanFragment1_inline2","Items.SpecialSandevistanFragment1_inline3"})
    -- SERVICE
    Ti200.createVendorItem("Vendors.cct_dtn_ripdoc_01_hbl","Vendors.StreetCredAvailability","Items.SpecialSandevistanFragment1","Vendors.cct_dtn_ripdoc_01.itemStock")    -- VENDOR
    Ti200.arrayInsert("Debug.CyberwareFragments.items", "Items.SpecialSandevistanFragment1")  -- DEBUG
end
