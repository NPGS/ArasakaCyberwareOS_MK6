-- ver. 1.2

-- Sandevistan - Arasaka Trascendence (Legendary)
if TweakDB:GetRecord("Items.SpecialSandevistanFragment2") == nil then
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment2", "Items.SandevistanFragment1")
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline0", "Items.SandevistanFragment1_inline0")
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline1", "Items.SandevistanFragment1_inline1")
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment2_inline2", "Items.SandevistanC4MK5_inline2")
    TweakDB:CloneRecord("Vendors.cct_dtn_ripdoc_01_inline33", "Vendors.cct_dtn_ripdoc_01_inline7")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_inline33.item", "Items.SpecialSandevistanFragment2")
    addToList("Vendors.cct_dtn_ripdoc_01.itemStock", "Vendors.cct_dtn_ripdoc_01_inline33")
end
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.displayName", LocKey(87883))
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.localizedDescription", LocKey(87893))
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.iconPath", "cwf_sandevistan2")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.OnAttach", {"Items.SpecialSandevistanFragment2_inline0"})
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2.statModifiers", {"Items.SpecialSandevistanFragment2_inline2"})
TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline0.UIData", "Items.SpecialSandevistanFragment2_inline1")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.floatValues", {0.8})
TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline1.localizedDescription", "LocKey#88530")
TweakDB:SetFlat("Items.SpecialSandevistanFragment2_inline2.value", -0.008)
