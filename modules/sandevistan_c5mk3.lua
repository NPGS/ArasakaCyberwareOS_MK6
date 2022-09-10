-- ver. 1.7

-- Sandevistan Arasaka Mk.3
if TweakDB:GetRecord("Items.SandevistanC5MK3") == nil then

    -- BASE
    TweakDB:CloneRecord("Items.SandevistanC5MK3", "Items.SandevistanC2MK3")
    TweakDB:CloneRecord("Items.SandevistanC5MK3_inline1", "Items.SandevistanC2MK3_inline1") -- duration
    TweakDB:CloneRecord("Items.SandevistanC5MK3_inline2", "Items.SandevistanC2MK3_inline2") -- time
    TweakDB:CloneRecord("Items.SandevistanC5MK3_inline3", "Items.SandevistanC2MK3_inline3") -- cooldown

    -- LOGIC PACKAGE 3 (HEALING)
    TweakDB:CloneRecord("Items.SandevistanC5MK3_inline4", "Items.SandevistanC4MK5_inline5") -- logic package
        TweakDB:CloneRecord("Items.SandevistanC5MK3_inline5", "Items.SandevistanC4MK5_inline6") -- apply effector effector
            TweakDB:CloneRecord("Items.SandevistanC5MK3_inline6", "Items.HealOnKillEpic_inline2") -- effector
            TweakDB:CloneRecord("Items.SandevistanC5MK3_inline7", "Items.BerserkC4MK5_inline10")   -- prereq
                TweakDB:CloneRecord("Items.SandevistanC5MK3_inline8", "Items.HealOnKillEpic_inline3") -- stat pool update
        TweakDB:CloneRecord("Items.SandevistanC5MK3_inline9", "Items.HealOnKillEpic_inline6") -- uidata

    -- VENDOR
    TweakDB:CloneRecord("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk3", "Vendors.cct_dtn_ripdoc_01_inline16")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk3.item", "Items.SandevistanC5MK3")
    addToList("Vendors.cct_dtn_ripdoc_01.itemStock", "Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk3")

end

-- OBJ
TweakDB:SetFlat("Items.SandevistanC5MK3.cyberwareType", sandevistanCW)
TweakDB:SetFlat("Items.SandevistanC5MK3.displayName", LocKey("ArasakaSandevistanMK3-Name"))
TweakDB:SetFlat("Items.SandevistanC5MK3.localizedDescription", LocKey("ArasakaSandevistanMK3-Desc"))
TweakDB:SetFlat("Items.SandevistanC5MK3.iconPath", "cwf_arasakasandevistan")
TweakDB:SetFlat("Items.SandevistanC5MK3.OnEquip", {"Items.SandevistanBase_inline2","Items.SandevistanC5MK3_inline4"})
TweakDB:SetFlat("Items.SandevistanC5MK3.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.SandevistanC5MK3_inline1","Items.SandevistanC5MK3_inline2","Items.SandevistanC5MK3_inline3"})
    
-- STATS
TweakDB:SetFlat("Items.SandevistanC5MK3_inline1.value", 16)
TweakDB:SetFlat("Items.SandevistanC5MK3_inline2.value", 0.4)
TweakDB:SetFlat("Items.SandevistanC5MK3_inline3.value", 16)
    
-- LOGIC GROUP 3 (HEALING)
TweakDB:SetFlat("Items.SandevistanC5MK3_inline4.effectors", {"Items.SandevistanC5MK3_inline5"})
    TweakDB:SetFlat("Items.SandevistanC5MK3_inline5.effectorToApply", "Items.SandevistanC5MK3_inline6")
    TweakDB:SetFlat("Items.SandevistanC5MK3_inline5.prereqRecord", "Items.SandevistanC5MK3_inline7")
        TweakDB:SetFlat("Items.SandevistanC5MK3_inline6.statPoolUpdates", {"Items.SandevistanC5MK3_inline8"})
        TweakDB:SetFlat("Items.SandevistanC5MK3_inline6.usePercent", true)
        TweakDB:SetFlat("Items.SandevistanC5MK3_inline7.statusEffect", "BaseStatusEffect.SandevistanPlayerBuff")
TweakDB:SetFlat("Items.SandevistanC5MK3_inline4.UIData", "Items.SandevistanC5MK3_inline9")
