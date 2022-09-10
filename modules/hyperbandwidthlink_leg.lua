-- ver. 1.7

-- Sandevistan - Arasaka Hyper Bandwidth Link (Legendary)
if TweakDB:GetRecord("Items.SpecialSandevistanFragment1") == nil then
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment1", "Items.SandevistanFragment1")
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment1_inline2", "Items.SandevistanFragment1_inline2")
    TweakDB:CloneRecord("Items.SpecialSandevistanFragment1_inline3", "Items.SandevistanFragment4_inline2")
    TweakDB:CloneRecord("Vendors.cct_dtn_ripdoc_01_hbl", "Vendors.cct_dtn_ripdoc_01_inline7")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_hbl.item", "Items.SpecialSandevistanFragment1")
    addToList("Vendors.cct_dtn_ripdoc_01.itemStock", "Vendors.cct_dtn_ripdoc_01_hbl")
    addToList("Items.SpecialSandevistanFragment1.OnAttach", "Items.SandevistanFragment4_inline0")  
end
TweakDB:SetFlat("Items.SpecialSandevistanFragment1.displayName", LocKey("HyperBandwidthLink-Name"))
TweakDB:SetFlat("Items.SpecialSandevistanFragment1.localizedDescription", LocKey("HyperBandwidthLink-Desc"))
TweakDB:SetFlat("Items.SpecialSandevistanFragment1.iconPath", "cwf_sandevistan3")
TweakDB:SetFlat("Items.SpecialSandevistanFragment1.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.SpecialSandevistanFragment1.statModifiers", {"Items.SpecialSandevistanFragment1_inline2","Items.SpecialSandevistanFragment1_inline3"})
TweakDB:SetFlat("Items.SpecialSandevistanFragment1_inline2.value", 2)
TweakDB:SetFlat("Items.SpecialSandevistanFragment1_inline3.value", 2)
