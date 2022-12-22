-- ver. 1.12.4

-- Sandevistan "Hashishin" Arasaka Mk.6 Prototype
if TweakDB:GetRecord("Items.ArasakaSandevistanMK6") == nil then
    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6", "Items.SandevistanC4MK5")    -- item
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_prereq", "Items.SandevistanC4MK5_inline0") -- prereq
            Ti200.cloneConstantStat("Items.ArasakaSandevistanMK6_inline1", "Items.SandevistanC4MK5_inline1", 14)  -- duration
            Ti200.cloneConstantStat("Items.ArasakaSandevistanMK6_inline2", "Items.SandevistanC4MK5_inline2", 0.04)    -- time dilation
            Ti200.cloneConstantStat("Items.ArasakaSandevistanMK6_inline3", "Items.SandevistanC4MK5_inline3", 18)  -- cooldown
        Ti200.cloneConstantStat("Price.Sandevistan_MK6_A", "Price.Sandevistan", 35)   -- price
        -- LOGIC PACKAGE 1 (DMG INCREASE)
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline4", "Items.SandevistanC3MK4_inline4") -- logic package
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline5", "Items.SandevistanC3MK4_inline5") -- effector effector
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline7", "Items.SandevistanC3MK4_inline7") -- effector
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline8", "Items.SandevistanC3MK4_inline8") -- uidata
        -- LOGIC PACKAGE 2 (CRIT CHANCE / DMG)
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline10", "Items.SandevistanC4MK5_inline10")   -- logic package
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline11", "Items.SandevistanC4MK5_inline11")    -- stat group effector
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline13", "Items.SandevistanC4MK5_inline13")   -- stat modifier group
                    Ti200.cloneConstantStat("Items.ArasakaSandevistanMK6_inline14", "Items.SandevistanC4MK5_inline14", 30)   -- constant stat modifier
                    Ti200.cloneConstantStat("Items.ArasakaSandevistanMK6_inline15", "Items.SandevistanC4MK5_inline15", 60)   -- constant stat modifier
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline16", "Items.SandevistanC4MK5_inline16")    -- uidata
        -- LOGIC PACKAGE 3 (HEALING)
        TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline17", "Items.SandevistanC4MK5_inline5") -- logic package
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline18", "Items.SandevistanC4MK5_inline6") -- apply effector effector
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline19", "Items.HealOnKillLegendary_inline2") -- effector
                TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline20", "Items.BerserkC4MK5_inline10")   -- prereq
                    TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline21", "Items.HealOnKillLegendary_inline3") -- stat pool update
            TweakDB:CloneRecord("Items.ArasakaSandevistanMK6_inline22", "Items.HealOnKillLegendary_inline6") -- uidata
    -- ASSIGN
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.cyberwareType", CName('Sandevistan'))
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.blueprint", "Items.SandevistanBlueprintMK6")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_A"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.displayName", LocKey("ArasakaSandevistanMK6-Name"))
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.equipPrereqs", {"Items.ArasakaSandevistanMK6_prereq"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.OnEquip", {"Items.SandevistanBase_inline2","Items.ArasakaSandevistanMK6_inline4","Items.ArasakaSandevistanMK6_inline10","Items.ArasakaSandevistanMK6_inline17"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.iconPath", "cwf_arasakasandevistan")
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.localizedDescription", LocKey("ArasakaSandevistanMK6-Desc"))
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_A"})
    TweakDB:SetFlat("Items.ArasakaSandevistanMK6.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.ArasakaSandevistanMK6_inline1","Items.ArasakaSandevistanMK6_inline2","Items.ArasakaSandevistanMK6_inline3","Items.SandevistanC4MK5_inline4"})
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
    -- SERVICE
    Ti200.createVendorItem("Vendors.wbr_hil_ripdoc_01_sandy_hashishin_mk6","Vendors.DowntownCredAvailability","Items.ArasakaSandevistanMK6","Vendors.wbr_hil_ripdoc_01.itemStock")    -- VENDOR
    Ti200.arrayInsert("Debug.CW_Sandevistans.items", "Items.ArasakaSandevistanMK6")   -- DEBUG
end
