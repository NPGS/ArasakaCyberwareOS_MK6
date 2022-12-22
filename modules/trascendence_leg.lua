-- ver. 1.12.4

-- Sandevistan - Arasaka Trascendence (Legendary)
if TweakDB:GetRecord("Items.SpecialSandevistanFragment2") == nil then
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment2", "Items.SandevistanFragment1")  -- Item
        TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline0", "Items.SandevistanFragment1_inline0")  -- Logic
            TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline1", "Items.SandevistanFragment1_inline1")  -- UIData
            Ti200.createConstantStat("Items.SpecialSandevistanFragment2_inline2", 'Multiplier', "BaseStats.TimeDilationSandevistanTimeScale", 0.75)   -- Time Dilation
            Ti200.createConstantStat("Items.SpecialSandevistanFragment2_inline3", 'Multiplier', "BaseStats.TimeDilationSandevistanDuration", 0.75)  -- Reduced Duration
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2.CraftingData", "Items.ArasakaSandevistanFragment1_inline6")
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2.displayName", LocKey("Trascendence-Name"))
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2.localizedDescription", LocKey("Trascendence-Desc"))
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2.iconPath", "cwf_sandevistan2")
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2.OnAttach", {"Items.SpecialSandevistanFragment2_inline0"})
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2.quality", "Quality.Legendary")
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2.statModifiers", {"Items.SpecialSandevistanFragment2_inline2","Items.SpecialSandevistanFragment2_inline3"})
        TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline0.UIData", "Items.SpecialSandevistanFragment2_inline1")
            TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.floatValues", {25.0, 25.0})
    -- SERVICE
    Ti200.createVendorItem("Vendors.cct_dtn_ripdoc_01_trascendence","Vendors.StreetCredAvailability","Items.SpecialSandevistanFragment2","Vendors.cct_dtn_ripdoc_01.itemStock")   -- VENDOR
    Ti200.arrayInsert("Debug.CyberwareFragments.items", "Items.SpecialSandevistanFragment2")  -- DEBUG
end
TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.localizedDescription", GetLocalizedTextByKey("Trascendence-UIDesc-Alt-2"))
