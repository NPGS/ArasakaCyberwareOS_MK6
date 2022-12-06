-- ver. 1.12.3

-- Arasaka Sandevistan Mk.4
if TweakDB:GetRecord("Items.ArasakaSandevistanMK4") == nil then
    -- BASE
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK4", "Items.SandevistanC3MK4")
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline1", "Items.SandevistanC2MK3_inline1") -- duration
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline2", "Items.SandevistanC2MK3_inline2") -- time
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline3", "Items.SandevistanC2MK3_inline3") -- cooldown
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_prereq", "Items.SandevistanC2MK3_inline0") -- prereq
    -- LOGIC PACKAGE 1 (HEALING)
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline4", "Items.SandevistanC4MK5_inline5") -- logic package
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline5", "Items.SandevistanC4MK5_inline6") -- apply effector effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline6", "Items.HealOnKillLegendary_inline2") -- effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline7", "Items.BerserkC4MK5_inline10")   -- prereq
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline8", "Items.HealOnKillLegendary_inline3") -- stat pool update
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline9", "Items.HealOnKillLegendary_inline6") -- uidata
    -- LOGIC PACKAGE 2 (DMG INCREASE)
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline10", "Items.SandevistanC3MK4_inline4") -- logic package
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline11", "Items.SandevistanC3MK4_inline5") -- effector effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline12", "Items.SandevistanC3MK4_inline7") -- effector
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK4_inline13", "Items.SandevistanC3MK4_inline8") -- uidata
    -- VENDOR
    TweakDB:CloneRecord("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk4", "Vendors.cct_dtn_ripdoc_01_inline16")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk4.availabilityPrereq", "Vendors.LateMidGameCredAvailability")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk4.item", "Items.ArasakaSandevistanMK4")
    arrayInsert("Vendors.cct_dtn_ripdoc_01.itemStock", "Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk4")
    -- DEBUG
    arrayInsert("Debug.CW_Sandevistans.items", "Items.ArasakaSandevistanMK4")
end
-- OBJ
TweakDB:SetFlat("Items.ArasakaSandevistanMK4.cyberwareType", CName('Sandevistan'))
TweakDB:SetFlat("Items.ArasakaSandevistanMK4.displayName", LocKey("ArasakaSandevistanMK4-Name"))
TweakDB:SetFlat("Items.ArasakaSandevistanMK4.equipPrereqs", {"Items.ArasakaSandevistanMK4_prereq"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK4.localizedDescription", LocKey("ArasakaSandevistanMK3-Desc"))
TweakDB:SetFlat("Items.ArasakaSandevistanMK4.iconPath", "cwf_arasakasandevistan")
TweakDB:SetFlat("Items.ArasakaSandevistanMK4.OnEquip", {"Items.SandevistanBase_inline2","Items.ArasakaSandevistanMK4_inline10","Items.ArasakaSandevistanMK4_inline4"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK4.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.ArasakaSandevistanMK4_inline1","Items.ArasakaSandevistanMK4_inline2","Items.ArasakaSandevistanMK4_inline3"})
-- STATS
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline1.value", 12)    -- duration
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline2.value", 0.25)  -- time
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline3.value", 15)    -- cooldown
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_prereq.valueToCheck", 15)  -- equip requirement
-- LOGIC GROUP 1 (HEALING)
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline4.effectors", {"Items.ArasakaSandevistanMK4_inline5"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline5.effectorToApply", "Items.ArasakaSandevistanMK4_inline6")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline5.prereqRecord", "Items.ArasakaSandevistanMK4_inline7")
        TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline6.statPoolUpdates", {"Items.ArasakaSandevistanMK4_inline8"})
            TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline8.statPoolValue", 8)
        TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline6.usePercent", true)
        TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline7.statusEffect", "BaseStatusEffect.SandevistanPlayerBuff")
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline4.UIData", "Items.ArasakaSandevistanMK4_inline9")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline9.intValues", {8})
-- LOGIC PACKAGE 2 (DMG INCREASE)
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline10.effectors", {"Items.ArasakaSandevistanMK4_inline11"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline11.effectorToApply", "Items.ArasakaSandevistanMK4_inline12")
        TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline12.operationType", 'Multiply')
        TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline12.value", 1.15, 'Float')
TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline10.UIData", "Items.ArasakaSandevistanMK4_inline13")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK4_inline13.intValues", {15})
