-- ver. 1.5

-- Sandevistan "Ninja" Fuyutsuki Mk.3
if TweakDB:GetRecord("Items.SandevistanC6MK3") == nil then
    -- BASE
    TweakDB:CloneRecord("Items.SandevistanC6MK3", "Items.SandevistanC2MK3")
    TweakDB:CloneRecord("Items.SandevistanC6MK3_inline1", "Items.SandevistanC2MK3_inline1")
    TweakDB:CloneRecord("Items.SandevistanC6MK3_inline2", "Items.SandevistanC2MK3_inline2")
    TweakDB:CloneRecord("Items.SandevistanC6MK3_inline3", "Items.SandevistanC2MK3_inline3")
        -- CRIT CHANCE
        TweakDB:CloneRecord("Items.SandevistanC6MK3_inline4", "Items.SandevistanC1MK3_inline4")         -- LOGIC PACKAGE
            TweakDB:CloneRecord("Items.SandevistanC6MK3_inline5", "Items.SandevistanC1MK3_inline5")     -- EFFECTOR EFFECTOR
                TweakDB:CloneRecord("Items.SandevistanC6MK3_inline7", "Items.SandevistanC1MK3_inline7") -- STAT MODIFIER GROUP
                    TweakDB:CloneRecord("Items.SandevistanC6MK3_inline8", "Items.SandevistanC1MK3_inline8") -- STAT MODIFIER
            TweakDB:CloneRecord("Items.SandevistanC6MK3_inline9", "Items.SandevistanC1MK3_inline9")     -- UIDATA
    -- VENDOR
    TweakDB:CloneRecord("Vendors.wat_kab_ripperdoc_03_inline30", "Vendors.wat_kab_ripperdoc_03_inline1")
    TweakDB:SetFlat("Vendors.wat_kab_ripperdoc_03_inline30.item", "Items.SandevistanC6MK3")
    addToList("Vendors.wat_kab_ripperdoc_03.itemStock", "Vendors.wat_kab_ripperdoc_03_inline30")
end

-- OBJ
TweakDB:SetFlat("Items.SandevistanC6MK3.cyberwareType", sandevistanCW)
TweakDB:SetFlat("Items.SandevistanC6MK3.displayName", LocKey(88540))
TweakDB:SetFlat("Items.SandevistanC6MK3.localizedDescription", LocKey(88550))
TweakDB:SetFlat("Items.SandevistanC6MK3.iconPath", "cwf_sandevistan8")
TweakDB:SetFlat("Items.SandevistanC6MK3.OnEquip", {"Items.SandevistanBase_inline2","Items.SandevistanC6MK3_inline4"})
TweakDB:SetFlat("Items.SandevistanC6MK3.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.SandevistanC6MK3.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.SandevistanC6MK3_inline1","Items.SandevistanC6MK3_inline2","Items.SandevistanC6MK3_inline3","Items.FuyutsuiTinkererLegendaryMKIII_inline0"})
    
-- STATS
TweakDB:SetFlat("Items.SandevistanC6MK3_inline1.value", 18)     -- duration
TweakDB:SetFlat("Items.SandevistanC6MK3_inline2.value", 0.3)    -- time dilation
TweakDB:SetFlat("Items.SandevistanC6MK3_inline3.value", 20)     -- cooldown
TweakDB:SetFlat("Items.SandevistanC6MK3_inline8.value", 30)     -- crit chance
TweakDB:SetFlat("Items.SandevistanC6MK3_inline9.intValues", {30})     -- crit chance UI
    
-- CRIT CHANCE
TweakDB:SetFlat("Items.SandevistanC6MK3_inline4.effectors", {"Items.SandevistanC6MK3_inline5"})
    TweakDB:SetFlat("Items.SandevistanC6MK3_inline5.statGroup", "Items.SandevistanC6MK3_inline7")
        TweakDB:SetFlat("Items.SandevistanC6MK3_inline7.statModifiers", {"Items.SandevistanC6MK3_inline8"})
TweakDB:SetFlat("Items.SandevistanC6MK3_inline4.UIData", "Items.SandevistanC6MK3_inline9")
