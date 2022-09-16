-- ver 1.8

-- Arasaka Hyper Bandwidth Link Recipe
if TweakDB:GetRecord("Items.Recipe_SpecialSandevistanFragment1") == nil then
    TweakDB:CloneRecord("Items.Recipe_SpecialSandevistanFragment1", "Items.Recipe_BerserkFragment2")
        TweakDB:CloneRecord("Items.Recipe_SpecialSandevistanFragment1_inline0", "Items.Recipe_BerserkFragment2_inline0")
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1.craftingResult", "Items.Recipe_SpecialSandevistanFragment1_inline0")
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1.displayName", LocKey("HyperBandwidthLink-Name"))
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1.iconPath", "cwf_sandevistan3")
        TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1_inline0.item", "Items.SpecialSandevistanFragment1")
    TweakDB:CloneRecord("Vendors.std_arr_ripperdoc_01_hbl_recipe", "Vendors.std_arr_ripperdoc_01_inline0")
    TweakDB:SetFlat("Vendors.std_arr_ripperdoc_01_hbl_recipe.item", "Items.Recipe_SpecialSandevistanFragment1")
    addToList("Vendors.std_arr_ripperdoc_01.itemStock", "Vendors.std_arr_ripperdoc_01_hbl_recipe")
    addToList("Debug.RecipeCyberwareFragments.items", "Items.Recipe_SpecialSandevistanFragment1")
end

-- Arasaka Trascendence Recipe
if TweakDB:GetRecord("Items.Recipe_SpecialSandevistanFragment2") == nil then
    TweakDB:CloneRecord("Items.Recipe_SpecialSandevistanFragment2", "Items.Recipe_BerserkFragment2")
        TweakDB:CloneRecord("Items.Recipe_SpecialSandevistanFragment2_inline0", "Items.Recipe_BerserkFragment2_inline0")
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment2.craftingResult", "Items.Recipe_SpecialSandevistanFragment2_inline0")
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment2.displayName", LocKey("Trascendence-Name"))
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment2.iconPath", "cwf_sandevistan2")
        TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment2_inline0.item", "Items.SpecialSandevistanFragment2")
    TweakDB:CloneRecord("Vendors.wbr_jpn_ripperdoc_02_trasc_recipe", "Vendors.wbr_jpn_ripperdoc_02_inline0")
    TweakDB:SetFlat("Vendors.wbr_jpn_ripperdoc_02_trasc_recipe.item", "Items.Recipe_SpecialSandevistanFragment2")
    addToList("Vendors.wbr_jpn_ripperdoc_02.itemStock", "Vendors.wbr_jpn_ripperdoc_02_trasc_recipe")
    addToList("Debug.RecipeCyberwareFragments.items", "Items.Recipe_SpecialSandevistanFragment2")
end
