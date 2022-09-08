-- ver. 1.7

-- Sandevistan "Leopard" Militech Mk.6
if TweakDB:GetRecord("Items.SandevistanC4MK6") == nil then

    -- BASE
    TweakDB:CloneRecord("Items.SandevistanC4MK6", "Items.SandevistanC4MK5")
    TweakDB:CloneRecord("Items.SandevistanC4MK6_inline1", "Items.SandevistanC4MK5_inline1")
    TweakDB:CloneRecord("Items.SandevistanC4MK6_inline2", "Items.SandevistanC4MK5_inline2")
    TweakDB:CloneRecord("Items.SandevistanC4MK6_inline3", "Items.SandevistanC4MK5_inline3")

    -- LOGIC PACKAGE 1 (DMG INCREASE)
    TweakDB:CloneRecord("Items.SandevistanC4MK6_inline4", "Items.SandevistanC3MK4_inline4") -- logic package
        TweakDB:CloneRecord("Items.SandevistanC4MK6_inline5", "Items.SandevistanC3MK4_inline5") -- effector effector
            TweakDB:CloneRecord("Items.SandevistanC4MK6_inline7", "Items.SandevistanC3MK4_inline7") -- effector
        TweakDB:CloneRecord("Items.SandevistanC4MK6_inline8", "Items.SandevistanC3MK4_inline8") -- uidata

    -- LOGIC PACKAGE 2 (CRIT CHANCE)
    TweakDB:CloneRecord("Items.SandevistanC4MK6_inline10", "Items.SandevistanC1MK3_inline4")         -- LOGIC PACKAGE
        TweakDB:CloneRecord("Items.SandevistanC4MK6_inline11", "Items.SandevistanC1MK3_inline5")     -- EFFECTOR EFFECTOR
            TweakDB:CloneRecord("Items.SandevistanC4MK6_inline13", "Items.SandevistanC1MK3_inline7") -- STAT MODIFIER GROUP
                TweakDB:CloneRecord("Items.SandevistanC4MK6_inline14", "Items.SandevistanC1MK3_inline8") -- STAT MODIFIER
        TweakDB:CloneRecord("Items.SandevistanC4MK6_inline15", "Items.SandevistanC1MK3_inline9")     -- UIDATA

    -- LOGIC GROUP 3 (RANGED DAMAGE)
    TweakDB:CloneRecord("Items.SandevistanC4MK6_inline17", "Items.BerserkC2MK4_inline7") -- logic package
        TweakDB:CloneRecord("Items.SandevistanC4MK6_inline18", "Items.BerserkC2MK4_inline8") -- apply effector effector
            TweakDB:CloneRecord("Items.SandevistanC4MK6_inline19", "Items.BerserkC2MK4_inline10") -- effector
        TweakDB:CloneRecord("Items.SandevistanC4MK6_inline20", "Items.BerserkC2MK4_inline11") -- uidata

    -- PRICE
    TweakDB:CloneRecord("Price.Sandevistan_MK6_2", "Price.Sandevistan")

    -- VENDOR
    TweakDB:CloneRecord("Vendors.wbr_hil_ripdoc_01_sandy_leopard_mk6", "Vendors.wbr_hil_ripdoc_01_inline0")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_sandy_leopard_mk6.availabilityPrereq", "Vendors.CharterHillCredAvailability")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_sandy_leopard_mk6.item", "Items.SandevistanC4MK6")
    addToList("Vendors.wbr_hil_ripdoc_01.itemStock", "Vendors.wbr_hil_ripdoc_01_sandy_leopard_mk6")

end

-- OBJ
TweakDB:SetFlat("Items.SandevistanC4MK6.cyberwareType", sandevistanCW)
TweakDB:SetFlat("Items.SandevistanC4MK6.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_2"})
TweakDB:SetFlat("Items.SandevistanC4MK6.displayName", LocKey(88541))
TweakDB:SetFlat("Items.SandevistanC4MK6.OnEquip", {"Items.SandevistanBase_inline2","Items.SandevistanC4MK6_inline4","Items.SandevistanC4MK6_inline17","Items.SandevistanC4MK6_inline10"})
TweakDB:SetFlat("Items.SandevistanC4MK6.localizedDescription", LocKey(88551))
TweakDB:SetFlat("Items.SandevistanC4MK6.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_2"})
TweakDB:SetFlat("Items.SandevistanC4MK6.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.SandevistanC4MK6_inline1","Items.SandevistanC4MK6_inline2","Items.SandevistanC4MK6_inline3","Items.SandevistanC4MK5_inline4"})

-- STATS
TweakDB:SetFlat("Price.Sandevistan_MK6_2.value", 20)    -- price
TweakDB:SetFlat("Items.SandevistanC4MK6_inline1.value", 12)     -- duration
TweakDB:SetFlat("Items.SandevistanC4MK6_inline2.value", 0.2)    -- time scale
TweakDB:SetFlat("Items.SandevistanC4MK6_inline3.value", 15)     -- cooldown

-- LOGIC PACKAGE 1 (DMG INCREASE)
TweakDB:SetFlat("Items.SandevistanC4MK6_inline4.effectors", {"Items.SandevistanC4MK6_inline5"})
    TweakDB:SetFlat("Items.SandevistanC4MK6_inline5.effectorToApply", "Items.SandevistanC4MK6_inline7")
        TweakDB:SetFlat("Items.SandevistanC4MK6_inline7.operationType", mltp)
        TweakDB:SetFlat("Items.SandevistanC4MK6_inline7.value", 1.25, 'Float')
TweakDB:SetFlat("Items.SandevistanC4MK6_inline4.UIData", "Items.SandevistanC4MK6_inline8")
    TweakDB:SetFlat("Items.SandevistanC4MK6_inline8.intValues", {25})

-- LOGIC PACKAGE 2 (CRIT CHANCE)
TweakDB:SetFlat("Items.SandevistanC4MK6_inline10.effectors", {"Items.SandevistanC4MK6_inline11"})
    TweakDB:SetFlat("Items.SandevistanC4MK6_inline11.statGroup", "Items.SandevistanC4MK6_inline13")
        TweakDB:SetFlat("Items.SandevistanC4MK6_inline13.statModifiers", {"Items.SandevistanC4MK6_inline14"})
            TweakDB:SetFlat("Items.SandevistanC4MK6_inline14.value", 25)
TweakDB:SetFlat("Items.SandevistanC4MK6_inline10.UIData", "Items.SandevistanC4MK6_inline15")
    TweakDB:SetFlat("Items.SandevistanC4MK6_inline15.intValues", {25})

-- LOGIC GROUP 3 (RANGED DAMAGE)
TweakDB:SetFlat("Items.SandevistanC4MK6_inline17.effectors", {"Items.SandevistanC4MK6_inline18"})
    TweakDB:SetFlat("Items.SandevistanC4MK6_inline18.effectorToApply", "Items.SandevistanC4MK6_inline19")
    TweakDB:SetFlat("Items.SandevistanC4MK6_inline18.prereqRecord", "Items.SandevistanC3MK4_inline6")
        TweakDB:SetFlat("Items.SandevistanC4MK6_inline19.operationType", mltp)
        TweakDB:SetFlat("Items.SandevistanC4MK6_inline19.value", 1.25, 'Float')
TweakDB:SetFlat("Items.SandevistanC4MK6_inline17.UIData", "Items.SandevistanC4MK6_inline20")
    TweakDB:SetFlat("Items.SandevistanC4MK6_inline20.intValues", {25})
