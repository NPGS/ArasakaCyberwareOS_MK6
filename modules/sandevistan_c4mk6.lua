-- ver. 1.12.4

-- Militech "Leopard" Sandevistan Mk.6
if TweakDB:GetRecord("Items.MilitechSandevistanMK6") == nil then
    TweakDB:CloneRecord("Items.MilitechSandevistanMK6", "Items.SandevistanC4MK5")   -- item
        TweakDB:CloneRecord("Items.MilitechSandevistanMK6_prereq", "Items.SandevistanC4MK5_inline0")    -- prereq
            cloneConstantStat("Items.MilitechSandevistanMK6_inline1", "Items.SandevistanC4MK5_inline1", 14)   -- duration
            cloneConstantStat("Items.MilitechSandevistanMK6_inline2", "Items.SandevistanC4MK5_inline2", 0.2)   -- time dilation
            cloneConstantStat("Items.MilitechSandevistanMK6_inline3", "Items.SandevistanC4MK5_inline3", 18)   -- cooldown
        cloneConstantStat("Price.Sandevistan_MK6_2", "Price.Sandevistan", 20)   -- price
        -- LOGIC PACKAGE 1 (DMG INCREASE)
        TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline4", "Items.SandevistanC3MK4_inline4") -- logic package
            TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline5", "Items.SandevistanC3MK4_inline5") -- effector effector
                TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline7", "Items.SandevistanC3MK4_inline7") -- effector
            TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline8", "Items.SandevistanC3MK4_inline8") -- uidata
        -- LOGIC PACKAGE 2 (CRIT CHANCE / DMG)
        TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline10", "Items.SandevistanC4MK5_inline10")         -- LOGIC PACKAGE
            TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline11", "Items.SandevistanC4MK5_inline11")     -- STAT GROUP EFFECTOR
                TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline13", "Items.SandevistanC4MK5_inline13") -- STAT MODIFIER GROUP
                    cloneConstantStat("Items.MilitechSandevistanMK6_inline14", "Items.SandevistanC4MK5_inline14", 30) -- STAT MODIFIER
                    cloneConstantStat("Items.MilitechSandevistanMK6_inline15", "Items.SandevistanC4MK5_inline15", 30) -- STAT MODIFIER
            TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline16", "Items.SandevistanC4MK5_inline16")     -- UIDATA
        -- LOGIC GROUP 3 (RANGED DAMAGE)
        TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline17", "Items.BerserkC2MK4_inline7") -- logic package
            TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline18", "Items.BerserkC2MK4_inline8") -- apply effector effector
                TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline19", "Items.BerserkC2MK4_inline10") -- effector
            TweakDB:CloneRecord("Items.MilitechSandevistanMK6_inline20", "Items.BerserkC2MK4_inline11") -- uidata
    -- ASSIGN
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.cyberwareType", CName('Sandevistan'))
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.blueprint", "Items.SandevistanBlueprintMK6")
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_2"})
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.displayName", LocKey("MilitechSandevistanMK6-Name"))
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.equipPrereqs", {"Items.MilitechSandevistanMK6_prereq"})
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.OnEquip", {"Items.SandevistanBase_inline2","Items.MilitechSandevistanMK6_inline4","Items.MilitechSandevistanMK6_inline17","Items.MilitechSandevistanMK6_inline10"})
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.localizedDescription", LocKey("MilitechSandevistanMK6-Desc"))
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Sandevistan_MK6_2"})
    TweakDB:SetFlat("Items.MilitechSandevistanMK6.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.MilitechSandevistanMK6_inline1","Items.MilitechSandevistanMK6_inline2","Items.MilitechSandevistanMK6_inline3","Items.SandevistanC4MK5_inline4"})
        TweakDB:SetFlat("Items.MilitechSandevistanMK6_prereq.valueToCheck", 20)     -- equip requirement
        -- LOGIC PACKAGE 1 (DMG INCREASE)
        TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline4.effectors", {"Items.MilitechSandevistanMK6_inline5"})
            TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline5.effectorToApply", "Items.MilitechSandevistanMK6_inline7")
                TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline7.operationType", 'Multiply')
                TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline7.value", 1.3, 'Float')
        TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline4.UIData", "Items.MilitechSandevistanMK6_inline8")
            TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline8.intValues", {30})
        -- LOGIC PACKAGE 2 (CRIT CHANCE / DMG)
        TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline10.effectors", {"Items.MilitechSandevistanMK6_inline11"})
            TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline11.statGroup", "Items.MilitechSandevistanMK6_inline13")
                TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline13.statModifiers", {"Items.MilitechSandevistanMK6_inline14","Items.MilitechSandevistanMK6_inline15"})
        TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline10.UIData", "Items.MilitechSandevistanMK6_inline16")
            TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline16.intValues", {30, 30})
        -- LOGIC GROUP 3 (RANGED DAMAGE)
        TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline17.effectors", {"Items.MilitechSandevistanMK6_inline18"})
            TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline18.effectorToApply", "Items.MilitechSandevistanMK6_inline19")
            TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline18.prereqRecord", "Items.SandevistanC3MK4_inline6")
                TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline19.operationType", 'Multiply')
                TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline19.value", 1.3, 'Float')
        TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline17.UIData", "Items.MilitechSandevistanMK6_inline20")
            TweakDB:SetFlat("Items.MilitechSandevistanMK6_inline20.intValues", {30})
    -- SERVICE
    createVendorItem("Vendors.pac_wwd_ripperdoc_01_sandy_leopard_mk6","Vendors.DowntownCredAvailability","Items.MilitechSandevistanMK6","Vendors.pac_wwd_ripperdoc_01.itemStock")   -- VENDOR
    arrayInsert("Debug.CW_Sandevistans.items", "Items.MilitechSandevistanMK6")  -- DEBUG
end
