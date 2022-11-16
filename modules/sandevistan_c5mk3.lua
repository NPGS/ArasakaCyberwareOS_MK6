-- ver. 1.12.1

-- Arasaka Sandevistan Mk.3
if TweakDB:GetRecord("Items.ArasakaSandevistanMK3") == nil then
    -- BASE
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK3", "Items.SandevistanC2MK3")
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline1", "Items.SandevistanC2MK3_inline1") -- duration
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline2", "Items.SandevistanC2MK3_inline2") -- time
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline3", "Items.SandevistanC2MK3_inline3") -- cooldown
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_prereq", "Items.SandevistanC2MK3_inline0") -- prereq
    -- LOGIC PACKAGE 3 (HEALING)
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline4", "Items.SandevistanC4MK5_inline5") -- logic package
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline5", "Items.SandevistanC4MK5_inline6") -- apply effector effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline6", "Items.HealOnKillEpic_inline2") -- effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline7", "Items.BerserkC4MK5_inline10")   -- prereq
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline8", "Items.HealOnKillEpic_inline3") -- stat pool update
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK3_inline9", "Items.HealOnKillEpic_inline6") -- uidata
    -- VENDOR
    TweakDB:CloneRecord("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk3", "Vendors.cct_dtn_ripdoc_01_inline16")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk3.availabilityPrereq", "Vendors.LateStartGameCredAvailability")
    TweakDB:SetFlat("Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk3.item", "Items.ArasakaSandevistanMK3")
    arrayInsert("Vendors.cct_dtn_ripdoc_01.itemStock", "Vendors.cct_dtn_ripdoc_01_sandy_arasaka_mk3")
    -- DEBUG
    arrayInsert("Debug.CW_Sandevistans.items", "Items.ArasakaSandevistanMK3")
end
-- OBJ
TweakDB:SetFlat("Items.ArasakaSandevistanMK3.cyberwareType", CName('Sandevistan'))
TweakDB:SetFlat("Items.ArasakaSandevistanMK3.displayName", LocKey("ArasakaSandevistanMK3-Name"))
TweakDB:SetFlat("Items.ArasakaSandevistanMK3.equipPrereqs", {"Items.ArasakaSandevistanMK3_prereq"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK3.localizedDescription", LocKey("ArasakaSandevistanMK3-Desc"))
TweakDB:SetFlat("Items.ArasakaSandevistanMK3.iconPath", "cwf_arasakasandevistan")
TweakDB:SetFlat("Items.ArasakaSandevistanMK3.OnEquip", {"Items.SandevistanBase_inline2","Items.ArasakaSandevistanMK3_inline4"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK3.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.ArasakaSandevistanMK3_inline1","Items.ArasakaSandevistanMK3_inline2","Items.ArasakaSandevistanMK3_inline3"})
-- STATS
TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline1.value", 12)    -- Duration
TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline2.value", 0.4)   -- Time Dilation
TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline3.value", 12)    -- Cooldown
TweakDB:SetFlat("Items.ArasakaSandevistanMK3_prereq.valueToCheck", 12)  -- Prereq
-- LOGIC GROUP 3 (HEALING)
TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline4.effectors", {"Items.ArasakaSandevistanMK3_inline5"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline5.effectorToApply", "Items.ArasakaSandevistanMK3_inline6")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline5.prereqRecord", "Items.ArasakaSandevistanMK3_inline7")
        TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline6.statPoolUpdates", {"Items.ArasakaSandevistanMK3_inline8"})
        TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline6.usePercent", true)
        TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline7.statusEffect", "BaseStatusEffect.SandevistanPlayerBuff")
TweakDB:SetFlat("Items.ArasakaSandevistanMK3_inline4.UIData", "Items.ArasakaSandevistanMK3_inline9")
