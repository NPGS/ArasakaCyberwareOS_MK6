-- ver. 1.12.3

-- Berserk Arasaka Mk.6
if TweakDB:GetRecord("Items.ArasakaBerserkMK6") == nil then
    -- BASE
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6", "Items.BerserkC4MK5") -- clone obj
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline0", "Items.BerserkC4MK5_inline0") -- require strength
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline1", "Items.BerserkC4MK5_inline1") -- recoil
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline2", "Items.BerserkC4MK5_inline2") -- sway
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline3", "Items.BerserkC4MK5_inline3") -- melee damage
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline4", "Items.BerserkC4MK5_inline4") -- armor
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline5", "Items.BerserkC4MK5_inline5") -- duration
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline6", "Items.BerserkC4MK5_inline6") -- cooldown
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline30", "Items.BerserkC4MK5_inline7") -- resistances
    TweakDB:CloneRecord("Price.Berserk_MK6", "Price.Berserk")   -- price
    -- LOGIC GROUP 1 HEALING
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline8", "Items.BerserkC4MK5_inline8") -- logic package
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline9", "Items.BerserkC4MK5_inline9") -- apply effector effector
            TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline11", "Items.BerserkC4MK5_inline11") -- effector
                TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline12", "Items.BerserkC4MK5_inline12") -- stat pool update
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline13", "Items.BerserkC4MK5_inline13") -- uidata
    -- LOGIC GROUP 2 HEALTH
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline14", "Items.BerserkC4MK5_inline14") -- logic package
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline15", "Items.BerserkC4MK5_inline15") -- stat group effector
            TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline17", "Items.BerserkC4MK5_inline17") -- stat modifier group
                TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline18", "Items.BerserkC4MK5_inline18") -- constant stat modifier
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline19", "Items.BerserkC4MK5_inline19") -- uidata
    -- LOGIC GROUP 3 STAMINA
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline20", "Items.BerserkC4MK5_inline20") -- logic package
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline21", "Items.BerserkC4MK5_inline21") -- stat group effector
            TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline23", "Items.BerserkC4MK5_inline23") -- stat modifier group
                TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline24", "Items.BerserkC4MK5_inline24") -- constant stat modifier
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline25", "Items.BerserkC4MK5_inline25") -- uidata
    -- LOGIC GROUP 4 RANGED DAMAGE
    TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline35", "Items.BerserkC2MK4_inline7") -- logic package
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline36", "Items.BerserkC2MK4_inline8") -- apply effector effector
            TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline37", "Items.BerserkC2MK4_inline10") -- effector
        TweakDB:CloneRecord("Items.ArasakaBerserkMK6_inline38", "Items.BerserkC2MK4_inline11") -- uidata
    -- ICON
    TweakDB:CreateRecord("UIIcon.Items.ArasakaBerserkMK6_icon", "gamedataUIIcon_Record")
    TweakDB:SetFlat("UIIcon.Items.ArasakaBerserkMK6_icon.atlasPartName", CName('arasaka_berserk_icon_01'))
    TweakDB:SetFlat("UIIcon.Items.ArasakaBerserkMK6_icon.atlasResourcePath", CName('mod\\gameplay\\gui\\common\\icons\\arasaka_cyberware_icons.inkatlas'))
    -- VENDOR
    TweakDB:CloneRecord("Vendors.wbr_hil_ripdoc_01_zerk_mk6", "Vendors.wbr_hil_ripdoc_01_inline0")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_zerk_mk6.availabilityPrereq", "Vendors.DowntownCredAvailability")
    TweakDB:SetFlat("Vendors.wbr_hil_ripdoc_01_zerk_mk6.item", "Items.ArasakaBerserkMK6")
    arrayInsert("Vendors.wbr_hil_ripdoc_01.itemStock", "Vendors.wbr_hil_ripdoc_01_zerk_mk6")
    -- DEBUG
    arrayInsert("Debug.CW_Berserks.items", "Items.ArasakaBerserkMK6")
end
-- ASSIGN STATS
TweakDB:SetFlat("Items.ArasakaBerserkMK6.blueprint", "Items.BerserkBlueprintMK6")   -- custom blueprint
TweakDB:SetFlat("Items.ArasakaBerserkMK6.cyberwareType", CName('Berserk'))
TweakDB:SetFlat("Price.Berserk_MK6.value", 30)
TweakDB:SetFlat("Items.ArasakaBerserkMK6.buyPrice", {"Price.BasePrice","Price.BuyMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.IconicMultiplier","Price.Berserk_MK6"})
TweakDB:SetFlat("Items.ArasakaBerserkMK6.displayName", LocKey("ArasakaBerserkMK6-Name"))
TweakDB:SetFlat("Items.ArasakaBerserkMK6.localizedDescription", LocKey("ArasakaBerserkMK6-Desc"))
TweakDB:SetFlat("Items.ArasakaBerserkMK6.equipPrereqs", {"Items.ArasakaBerserkMK6_inline0"})
TweakDB:SetFlat("Items.ArasakaBerserkMK6.icon", "UIIcon.Items.ArasakaBerserkMK6_icon")
TweakDB:SetFlat("Items.ArasakaBerserkMK6.iconPath", "Items.ArasakaBerserkMK6_icon")
TweakDB:SetFlat("Items.ArasakaBerserkMK6.OnEquip", {"Items.BerserkBase_inline0","Items.BerserkBase_inline1","Items.ArasakaBerserkMK6_inline8","Items.ArasakaBerserkMK6_inline35","Items.ArasakaBerserkMK6_inline14","Items.ArasakaBerserkMK6_inline20","Items.BerserkCarryCapacity_E_inline0","Items.BerserkExtremeDmgReduction_inline0"})
TweakDB:SetFlat("Items.ArasakaBerserkMK6.sellPrice", {"Price.BasePrice","Price.CyberwareSellMultiplier","Price.Cyberware","Price.CyberwareQualityMultiplier","Price.CraftingTraitMultiplier","Price.IconicMultiplier","Price.Berserk_MK6"})
TweakDB:SetFlat("Items.ArasakaBerserkMK6.statModifiers", {"Items.BerserkBase_inline3","Items.ArasakaBerserkMK6_inline1","Items.ArasakaBerserkMK6_inline2","Items.ArasakaBerserkMK6_inline3","Items.ArasakaBerserkMK6_inline4","Items.ArasakaBerserkMK6_inline5","Items.ArasakaBerserkMK6_inline6","Items.BerserkC4MK5_inline7","Items.ArasakaBerserkMK6_inline30","Items.BerserkBase_cooldown_fix"})
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline0.valueToCheck", 20)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline1.value", 40)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline2.value", 40)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline3.value", 40)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline4.value", 40)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline5.value", 30)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline6.value", 30)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline30.modifierType", "Additive")
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline30.statType", "BaseStats.BerserkResistancesBonus")
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline30.value", 40)
-- LOGIC GROUP 1 => HEAL
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline8.effectors", {"Items.ArasakaBerserkMK6_inline9"})
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline9.effectorToApply", "Items.ArasakaBerserkMK6_inline11")
        TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline11.statPoolUpdates", {"Items.ArasakaBerserkMK6_inline12"})
        TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline11.usePercent", true)
            TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline12.statPoolValue", 10)
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline8.UIData", "Items.ArasakaBerserkMK6_inline13")
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline13.floatValues", {10.0})
-- LOGIC GROUP 2 => HEALTH
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline14.effectors", {"Items.ArasakaBerserkMK6_inline15"})
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline14.UIData", "Items.ArasakaBerserkMK6_inline19")
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline15.statGroup", "Items.ArasakaBerserkMK6_inline17")
        TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline17.statModifiers", {"Items.ArasakaBerserkMK6_inline18"})
            TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline18.modifierType", "Multiplier")
            TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline18.value", 1.5)
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline19.intValues", {50})
-- LOGIC GROUP 3 => STAMINA
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline20.effectors", {"Items.ArasakaBerserkMK6_inline21"})
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline20.UIData", "Items.ArasakaBerserkMK6_inline25")
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline21.statGroup", "Items.ArasakaBerserkMK6_inline23")
        TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline23.statModifiers", {"Items.ArasakaBerserkMK6_inline24"})
            TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline24.modifierType", "AdditiveMultiplier")
            TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline24.value", 0.5)
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline25.intValues", {50})
-- LOGIC GROUP 4 => RANGED DAMAGE
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline35.effectors", {"Items.ArasakaBerserkMK6_inline36"})
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline36.effectorToApply", "Items.ArasakaBerserkMK6_inline37")
        TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline37.operationType", 'Multiply')
        TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline37.value", 1.4, 'Float')
TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline35.UIData", "Items.ArasakaBerserkMK6_inline38")
    TweakDB:SetFlat("Items.ArasakaBerserkMK6_inline38.intValues", {40})
