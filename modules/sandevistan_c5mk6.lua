-- ver. 1.6

-- Sandevistan "Hashishin" Arasaka Mk.6 Prototype
if TweakDB:GetRecord("Items.SandevistanC5MK6") == nil then

    -- BASE
    TweakDB:CloneRecord("Items.SandevistanC5MK6", "Items.SandevistanC4MK5")
    TweakDB:CloneRecord("Items.SandevistanC5MK6_inline1", "Items.SandevistanC4MK5_inline1")
    TweakDB:CloneRecord("Items.SandevistanC5MK6_inline2", "Items.SandevistanC4MK5_inline2")
    TweakDB:CloneRecord("Items.SandevistanC5MK6_inline3", "Items.SandevistanC4MK5_inline3")

    -- LOGIC PACKAGE 1 (DMG INCREASE)
    TweakDB:CloneRecord("Items.SandevistanC5MK6_inline4", "Items.SandevistanC3MK4_inline4") -- logic package
        TweakDB:CloneRecord("Items.SandevistanC5MK6_inline5", "Items.SandevistanC3MK4_inline5") -- effector effector
            TweakDB:CloneRecord("Items.SandevistanC5MK6_inline7", "Items.SandevistanC3MK4_inline7") -- effector
        TweakDB:CloneRecord("Items.SandevistanC5MK6_inline8", "Items.SandevistanC3MK4_inline8") -- uidata

    -- LOGIC PACKAGE 2 (CRIT CHANCE / DMG)
    TweakDB:CloneRecord("Items.SandevistanC5MK6_inline10", "Items.SandevistanC4MK5_inline10")   -- logic package
        TweakDB:CloneRecord("Items.SandevistanC5MK6_inline11", "Items.SandevistanC4MK5_inline11")    -- stat group effector
            TweakDB:CloneRecord("Items.SandevistanC5MK6_inline13", "Items.SandevistanC4MK5_inline13")   -- stat modifier group
                TweakDB:CloneRecord("Items.SandevistanC5MK6_inline14", "Items.SandevistanC4MK5_inline14")   -- constant stat modifier
                TweakDB:CloneRecord("Items.SandevistanC5MK6_inline15", "Items.SandevistanC4MK5_inline15")   -- constant stat modifier
        TweakDB:CloneRecord("Items.SandevistanC5MK6_inline16", "Items.SandevistanC4MK5_inline16")    -- uidata

    -- LOGIC PACKAGE 3 (HEALING)
    TweakDB:CloneRecord("Items.SandevistanC5MK6_inline17", "Items.SandevistanC4MK5_inline5") -- logic package
        TweakDB:CloneRecord("Items.SandevistanC5MK6_inline18", "Items.SandevistanC4MK5_inline6") -- apply effector effector
            TweakDB:CloneRecord("Items.SandevistanC5MK6_inline19", "Items.HealOnKillLegendary_inline2") -- effector
            TweakDB:CloneRecord("Items.SandevistanC5MK6_inline20", "Items.BerserkC4MK5_inline10")   -- prereq
                TweakDB:CloneRecord("Items.SandevistanC5MK6_inline21", "Items.HealOnKillLegendary_inline3") -- stat pool update
        TweakDB:CloneRecord("Items.SandevistanC5MK6_inline22", "Items.HealOnKillLegendary_inline6") -- uidata

    -- PRICE
    TweakDB:CloneRecord("Price.Sandevistan_MK6", "Price.Sandevistan")

    -- VENDOR
    TweakDB:CloneRecord("Vendors.wbr_hil_ripdoc_01_inline27", "Vendors.wbr_hil_ripdoc_01_inline0")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_inline27.availabilityPrereq", "Vendors.CharterHillCredAvailability")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_inline27.item", "Items.SandevistanC5MK6")
    addToList("Vendors.wbr_hil_ripdoc_01.itemStock", "Vendors.wbr_hil_ripdoc_01_inline27")

end

-- OBJ
TweakDB:SetFlat("Items.SandevistanC5MK6.cyberwareType", sandevistanCW)
TweakDB:SetFlat("Items.SandevistanC5MK6.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6"})
TweakDB:SetFlat("Items.SandevistanC5MK6.displayName", LocKey(87880))
TweakDB:SetFlat("Items.SandevistanC5MK6.OnEquip", {"Items.SandevistanBase_inline2","Items.SandevistanC5MK6_inline4","Items.SandevistanC5MK6_inline10","Items.SandevistanC5MK6_inline17"})
TweakDB:SetFlat("Items.SandevistanC5MK6.iconPath", "cwf_arasakasandevistan")
TweakDB:SetFlat("Items.SandevistanC5MK6.localizedDescription", LocKey(87890))
TweakDB:SetFlat("Items.SandevistanC5MK6.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6"})
TweakDB:SetFlat("Items.SandevistanC5MK6.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.SandevistanC5MK6_inline1","Items.SandevistanC5MK6_inline2","Items.SandevistanC5MK6_inline3","Items.SandevistanC4MK5_inline4"})

-- STATS
TweakDB:SetFlat("Price.Sandevistan_MK6.value", 35)
TweakDB:SetFlat("Items.SandevistanC5MK6_inline1.value", 16)
TweakDB:SetFlat("Items.SandevistanC5MK6_inline2.value", 0.04)
TweakDB:SetFlat("Items.SandevistanC5MK6_inline3.value", 16)

-- LOGIC PACKAGE 1 (DMG INCREASE)
TweakDB:SetFlat("Items.SandevistanC5MK6_inline4.effectors", {"Items.SandevistanC5MK6_inline5"})
    TweakDB:SetFlat("Items.SandevistanC5MK6_inline5.effectorToApply", "Items.SandevistanC5MK6_inline7")
        TweakDB:SetFlat("Items.SandevistanC5MK6_inline7.operationType", mltp)
        TweakDB:SetFlat("Items.SandevistanC5MK6_inline7.value", 1.3, 'Float')
TweakDB:SetFlat("Items.SandevistanC5MK6_inline4.UIData", "Items.SandevistanC5MK6_inline8")
    TweakDB:SetFlat("Items.SandevistanC5MK6_inline8.intValues", {30})

-- LOGIC PACKAGE 2 (CRIT CHANCE / DMG)
TweakDB:SetFlat("Items.SandevistanC5MK6_inline10.effectors", {"Items.SandevistanC5MK6_inline11"})
    TweakDB:SetFlat("Items.SandevistanC5MK6_inline11.statGroup", "Items.SandevistanC5MK6_inline13")
        TweakDB:SetFlat("Items.SandevistanC5MK6_inline13.statModifiers", {"Items.SandevistanC5MK6_inline14","Items.SandevistanC5MK6_inline15"})
            TweakDB:SetFlat("Items.SandevistanC5MK6_inline14.value", 30)
            TweakDB:SetFlat("Items.SandevistanC5MK6_inline15.value", 60)
    TweakDB:SetFlat("Items.SandevistanC5MK6_inline16.intValues", {30, 60})
TweakDB:SetFlat("Items.SandevistanC5MK6_inline10.UIData", "Items.SandevistanC5MK6_inline16")

-- LOGIC GROUP 3 (HEALING)
TweakDB:SetFlat("Items.SandevistanC5MK6_inline17.effectors", {"Items.SandevistanC5MK6_inline18"})
    TweakDB:SetFlat("Items.SandevistanC5MK6_inline18.effectorToApply", "Items.SandevistanC5MK6_inline19")
    TweakDB:SetFlat("Items.SandevistanC5MK6_inline18.prereqRecord", "Items.SandevistanC5MK6_inline20")
        TweakDB:SetFlat("Items.SandevistanC5MK6_inline19.statPoolUpdates", {"Items.SandevistanC5MK6_inline21"})
        TweakDB:SetFlat("Items.SandevistanC5MK6_inline19.usePercent", true)
        TweakDB:SetFlat("Items.SandevistanC5MK6_inline20.statusEffect", "BaseStatusEffect.SandevistanPlayerBuff")
TweakDB:SetFlat("Items.SandevistanC5MK6_inline17.UIData", "Items.SandevistanC5MK6_inline22")
