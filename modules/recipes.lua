-- ver 1.8

-- Hyper Bandwidth Link Recipe
if TweakDB:GetRecord("Items.Recipe_SpecialSandevistanFragment1") == nil then
    TweakDB:CloneRecord("Items.Recipe_SpecialSandevistanFragment1", "Items.Recipe_BerserkFragment2")
        TweakDB:CloneRecord("Items.Recipe_SpecialSandevistanFragment1_inline0", "Items.Recipe_BerserkFragment2_inline0")
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1.craftingResult", "Items.Recipe_SpecialSandevistanFragment1_inline0")
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1.displayName", LocKey("HyperBandwidthLink-Name"))
    TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1.iconPath", "cwf_sandevistan3")
        TweakDB:SetFlat("Items.Recipe_SpecialSandevistanFragment1_inline0.item", "Items.SpecialSandevistanFragment1")
    -- create vendor item for list
    -- addToList() -- => debug list
end

-- Trascendence Recipe (CONCEPT... TO DO)
--[[
if TweakDB:GetRecord("Items.Recipe_SpecialSandevistanFragment2") == nil then
    TweakDB:CloneRecord("Items.Recipe_SpecialSandevistanFragment2", "Items.Recipe_BerserkFragment2")
end
]]