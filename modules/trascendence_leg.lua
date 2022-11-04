-- ver. 1.12.0

-- Sandevistan - Arasaka Trascendence (Legendary)
if TweakDB:GetRecord("Items.SpecialSandevistanFragment2") == nil then
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment2", "Items.SandevistanFragment1")  -- Item
        TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline0", "Items.SandevistanFragment1_inline0")  -- Logic
            TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline1", "Items.SandevistanFragment1_inline1")  -- UIData
            TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline2", "Items.SandevistanC4MK5_inline2")  -- Time Dilation
            TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline3", "Items.SandevistanFragment4_inline2")  -- Inverse Cooldown
    TweakDB:CloneRecord("Vendors.cct_dtn_ripdoc_01_trascendence", "Vendors.cct_dtn_ripdoc_01_inline7")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_trascendence.item", "Items.SpecialSandevistanFragment2")
    arrayInsert("Vendors.cct_dtn_ripdoc_01.itemStock", "Vendors.cct_dtn_ripdoc_01_trascendence")
    arrayInsert("Debug.CyberwareFragments.items", "Items.SpecialSandevistanFragment2")
end
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.CraftingData", "Items.ArasakaSandevistanFragment1_inline6")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.displayName", LocKey("Trascendence-Name"))
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.localizedDescription", LocKey("Trascendence-Desc"))
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.iconPath", "cwf_sandevistan2")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.OnAttach", {"Items.SpecialSandevistanFragment2_inline0"})
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.statModifiers", {"Items.SpecialSandevistanFragment2_inline2","Items.SpecialSandevistanFragment2_inline3"})
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline0.UIData", "Items.SpecialSandevistanFragment2_inline1")
        TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.floatValues", {25.0, 4.0})
        TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.localizedDescription", GetLocalizedTextByKey("Trascendence-UIDesc-Alt"))
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline2.modifierType", 'Multiplier')
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline2.value", 0.75)    -- Time Dilation multiplier %
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline3.modifierType", 'Additive')
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline3.value", -4.0)    -- Inverse Cooldown
