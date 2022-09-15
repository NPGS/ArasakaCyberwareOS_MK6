-- ver. 1.7

-- Sandevistan "Ninja" Fuyutsuki Mk.3
if TweakDB:GetRecord("Items.FuyutsukiSandevistanMK3") == nil then
    -- BASE
    TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3", "Items.SandevistanC2MK3")
    TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline1", "Items.SandevistanC2MK3_inline1")
    TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline2", "Items.SandevistanC2MK3_inline2")
    TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline3", "Items.SandevistanC2MK3_inline3")
        -- CRIT CHANCE
        TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline4", "Items.SandevistanC1MK3_inline4")         -- LOGIC PACKAGE
            TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline5", "Items.SandevistanC1MK3_inline5")     -- EFFECTOR EFFECTOR
                TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline7", "Items.SandevistanC1MK3_inline7") -- STAT MODIFIER GROUP
                    TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline8", "Items.SandevistanC1MK3_inline8") -- STAT MODIFIER
            TweakDB:CloneRecord("Items.FuyutsukiSandevistanMK3_inline9", "Items.SandevistanC1MK3_inline9")     -- UIDATA
    -- VENDOR
    TweakDB:CloneRecord("Vendors.wat_kab_ripperdoc_03_sandy_ninja_mk3", "Vendors.wat_kab_ripperdoc_03_inline1")
    TweakDB:SetFlat("Vendors.wat_kab_ripperdoc_03_sandy_ninja_mk3.item", "Items.FuyutsukiSandevistanMK3")
    addToList("Vendors.wat_kab_ripperdoc_03.itemStock", "Vendors.wat_kab_ripperdoc_03_sandy_ninja_mk3")
    -- DEBUG
    addToList("Debug.CW_Sandevistans.items", "Items.FuyutsukiSandevistanMK3")
end

-- OBJ
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3.cyberwareType", sandevistanCW)
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3.displayName", LocKey("FuyutsukiSandevistanMK3-Name"))
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3.localizedDescription", LocKey("FuyutsukiSandevistanMK3-Desc"))
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3.iconPath", "cwf_sandevistan8")
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3.OnEquip", {"Items.SandevistanBase_inline2","Items.FuyutsukiSandevistanMK3_inline4"})
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3.quality", "Quality.Legendary")
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3.statModifiers", {"Items.SandevistanBase_inline0","Items.SandevistanBase_inline1","Items.FuyutsukiSandevistanMK3_inline1","Items.FuyutsukiSandevistanMK3_inline2","Items.FuyutsukiSandevistanMK3_inline3","Items.FuyutsuiTinkererLegendaryMKIII_inline0"})

-- STATS
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline1.value", 18)     -- duration
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline2.value", 0.3)    -- time dilation
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline3.value", 20)     -- cooldown
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline8.value", 30)     -- crit chance
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline9.intValues", {30})     -- crit chance UI

-- CRIT CHANCE
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline4.effectors", {"Items.FuyutsukiSandevistanMK3_inline5"})
    TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline5.statGroup", "Items.FuyutsukiSandevistanMK3_inline7")
        TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline7.statModifiers", {"Items.FuyutsukiSandevistanMK3_inline8"})
TweakDB:SetFlat("Items.FuyutsukiSandevistanMK3_inline4.UIData", "Items.FuyutsukiSandevistanMK3_inline9")
