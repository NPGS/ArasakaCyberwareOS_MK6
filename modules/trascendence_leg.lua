-- ver. 1.8

-- Sandevistan - Arasaka Trascendence (Legendary)
if TweakDB:GetRecord("Items.SpecialSandevistanFragment2") == nil then
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment2", "Items.SandevistanFragment1")
        TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline0", "Items.SandevistanFragment1_inline0")
        TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline1", "Items.SandevistanFragment1_inline1")
        TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline2", "Items.SandevistanC4MK5_inline2")
    TweakDB:CloneRecord("Vendors.cct_dtn_ripdoc_01_trascendence", "Vendors.cct_dtn_ripdoc_01_inline7")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_trascendence.item", "Items.SpecialSandevistanFragment2")
    addToList("Vendors.cct_dtn_ripdoc_01.itemStock", "Vendors.cct_dtn_ripdoc_01_trascendence")
    addToList("Debug.CyberwareFragments.items", "Items.SpecialSandevistanFragment2")
end
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.CraftingData", "Items.ArasakaSandevistanFragment1_inline6")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.displayName", LocKey("Trascendence-Name"))
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.localizedDescription", LocKey("Trascendence-Desc"))
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.iconPath", "cwf_sandevistan2")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.OnAttach", {"Items.SpecialSandevistanFragment2_inline0"})
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.statModifiers", {"Items.SpecialSandevistanFragment2_inline2"})
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline0.UIData", "Items.SpecialSandevistanFragment2_inline1")
        TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.floatValues", {0.9})
        TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.localizedDescription", StrLocKey("Trascendence-UIDesc"))
    TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline2.value", -0.009)
