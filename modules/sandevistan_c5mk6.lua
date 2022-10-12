-- ver. 1.9.2

-- Sandevistan "Hashishin" Arasaka Mk.6 Prototype
if TweakDB:GetRecord("Items.ArasakaSandevistanMK6") == nil then

    -- BASE
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6", "Items.SandevistanC4MK5")
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline1", "Items.SandevistanC4MK5_inline1")
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline2", "Items.SandevistanC4MK5_inline2")
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline3", "Items.SandevistanC4MK5_inline3")
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_prereq", "Items.SandevistanC4MK5_inline0")

    -- LOGIC PACKAGE 1 (DMG INCREASE)
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline4", "Items.SandevistanC3MK4_inline4") -- logic package
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline5", "Items.SandevistanC3MK4_inline5") -- effector effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline7", "Items.SandevistanC3MK4_inline7") -- effector
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline8", "Items.SandevistanC3MK4_inline8") -- uidata

    -- LOGIC PACKAGE 2 (CRIT CHANCE / DMG)
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline10", "Items.SandevistanC4MK5_inline10")   -- logic package
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline11", "Items.SandevistanC4MK5_inline11")    -- stat group effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline13", "Items.SandevistanC4MK5_inline13")   -- stat modifier group
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline14", "Items.SandevistanC4MK5_inline14")   -- constant stat modifier
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline15", "Items.SandevistanC4MK5_inline15")   -- constant stat modifier
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline16", "Items.SandevistanC4MK5_inline16")    -- uidata

    -- LOGIC PACKAGE 3 (HEALING)
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline17", "Items.SandevistanC4MK5_inline5") -- logic package
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline18", "Items.SandevistanC4MK5_inline6") -- apply effector effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline19", "Items.HealOnKillLegendary_inline2") -- effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline20", "Items.BerserkC4MK5_inline10")   -- prereq
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline21", "Items.HealOnKillLegendary_inline3") -- stat pool update
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline22", "Items.HealOnKillLegendary_inline6") -- uidata

    -- BLUEPRINT PROTOTYPE (1 SLOT)
    TweakDB:CloneRecord("Items.SandevistanBlueprint_Prototype", "Items.SandevistanBlueprint")
        TweakDB:CloneRecord("Items.SandevistanBlueprint_Prototype_inline0", "Items.SandevistanBlueprint_inline0")
        TweakDB:SetFlat("Items.SandevistanBlueprint_Prototype.rootElement", "Items.SandevistanBlueprint_Prototype_inline0")
        TweakDB:SetFlat("Items.SandevistanBlueprint_Prototype_inline0.childElements", {"Items.SandevistanBlueprint_inline1"})

    -- PRICE
    TweakDB:CloneRecord("Price.Sandevistan_MK6_A", "Price.Sandevistan")

    -- VENDOR
    TweakDB:CloneRecord("Vendors.wbr_hil_ripdoc_01_sandy_hashishin_mk6", "Vendors.wbr_hil_ripdoc_01_inline0")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_sandy_hashishin_mk6.availabilityPrereq", "Vendors.CharterHillCredAvailability")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_sandy_hashishin_mk6.item", "Items.ArasakaSandevistanMK6")
    arrayInsert("Vendors.wbr_hil_ripdoc_01.itemStock", "Vendors.wbr_hil_ripdoc_01_sandy_hashishin_mk6")

    -- DEBUG
    arrayInsert("Debug.CW_Sandevistans.items", "Items.ArasakaSandevistanMK6")
end

-- OBJ
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.cyberwareType", CName('Sandevistan'))
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.blueprint", "Items.SandevistanBlueprint_Prototype")
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_A"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.displayName", LocKey("ArasakaSandevistanMK6-Name"))
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.equipPrereqs", {"Items.ArasakaSandevistanMK6_prereq"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.OnEquip", {"Items.SandevistanBase_inline2","Items.ArasakaSandevistanMK6_inline4","Items.ArasakaSandevistanMK6_inline10","Items.ArasakaSandevistanMK6_inline17"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.iconPath", "cwf_arasakasandevistan")
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.localizedDescription", LocKey("ArasakaSandevistanMK6-Desc"))
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_A"})
TweakDB:SetFlat("Items.ArasakaSandevistanMK6.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.ArasakaSandevistanMK6_inline1","Items.ArasakaSandevistanMK6_inline2","Items.ArasakaSandevistanMK6_inline3","Items.SandevistanC4MK5_inline4"})

-- STATS
TweakDB:SetFlat("Price.Sandevistan_MK6_A.value", 35)
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline1.value", 16)    -- duration
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline2.value", 0.04)  -- time dilation
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline3.value", 8)     -- cooldown
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_prereq.valueToCheck", 20)     -- equip requirement

-- LOGIC PACKAGE 1 (DMG INCREASE)
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline4.effectors", {"Items.ArasakaSandevistanMK6_inline5"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline5.effectorToApply", "Items.ArasakaSandevistanMK6_inline7")
        TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline7.operationType", 'Multiply')
        TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline7.value", 1.3, 'Float')
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline4.UIData", "Items.ArasakaSandevistanMK6_inline8")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline8.intValues", {30})

-- LOGIC PACKAGE 2 (CRIT CHANCE / DMG)
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline10.effectors", {"Items.ArasakaSandevistanMK6_inline11"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline11.statGroup", "Items.ArasakaSandevistanMK6_inline13")
        TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline13.statModifiers", {"Items.ArasakaSandevistanMK6_inline14","Items.ArasakaSandevistanMK6_inline15"})
            TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline14.value", 30)
            TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline15.value", 60)
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline16.intValues", {30, 60})
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline10.UIData", "Items.ArasakaSandevistanMK6_inline16")

-- LOGIC GROUP 3 (HEALING)
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline17.effectors", {"Items.ArasakaSandevistanMK6_inline18"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline18.effectorToApply", "Items.ArasakaSandevistanMK6_inline19")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline18.prereqRecord", "Items.ArasakaSandevistanMK6_inline20")
        TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline19.statPoolUpdates", {"Items.ArasakaSandevistanMK6_inline21"})
        TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline19.usePercent", true)
        TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline20.statusEffect", "BaseStatusEffect.SandevistanPlayerBuff")
TweakDB:SetFlat("Items.ArasakaSandevistanMK6_inline17.UIData", "Items.ArasakaSandevistanMK6_inline22")
