-- ver. 1.12.3  - BLUEPRINTS & MODS ENABLER

-- BLUEPRINT BERSERK MK6
if TweakDB:GetRecord("Items.BerserkBlueprintMK6") == nil then
    -- Custom Blueprint
    TweakDB:CreateRecord("AttachmentSlots.BerserkSlot4_M", "gamedataAttachmentSlot_Record") -- 4th berserk slot
    TweakDB:SetFlat("AttachmentSlots.BerserkSlot4_M.entitySlotName", "BerserkSlot4")
    TweakDB:SetFlat("AttachmentSlots.BerserkSlot4_M.localizedName", "Cyberware Slot")
    TweakDB:SetFlat("AttachmentSlots.BerserkSlot4_M.unlockedBy", "Legendary")
    TweakDB:CreateRecord("Items.BerserkBlueprintMK6_inline1", "gamedataItemBlueprintElement_Record")   -- inner blueprint record
    TweakDB:SetFlat("Items.BerserkBlueprintMK6_inline1.slot", "AttachmentSlots.BerserkSlot4_M")
    TweakDB:CreateRecord("Items.BerserkBlueprintMK6_inline0", "gamedataItemBlueprintElement_Record")   -- main blueprint record
    TweakDB:SetFlat("Items.BerserkBlueprintMK6_inline0.childElements", {"Items.BerserkBlueprint_inline1","Items.BerserkBlueprint_inline2","Items.BerserkBlueprint_inline3","Items.BerserkBlueprintMK6_inline1"})
    TweakDB:SetFlat("Items.BerserkBlueprintMK6_inline0.slot", "AttachmentSlots.GenericItemRoot")
    TweakDB:CreateRecord("Items.BerserkBlueprintMK6", "gamedataItemBlueprint_Record")   -- main blueprint record
    TweakDB:SetFlat("Items.BerserkBlueprintMK6.rootElement", "Items.BerserkBlueprintMK6_inline0")
    -- Enable existing mods to use 4th slot
    Ti200.arrayInsert("Items.BerserkFragmentBase.placementSlots", "AttachmentSlots.BerserkSlot4_M")
    Ti200.arrayInsert("Items.AnimalsBerserkFragment1.placementSlots", "AttachmentSlots.BerserkSlot4_M")   -- Beast Mode
    Ti200.arrayInsert("Items.BerserkFragment1.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Extended Berserk
    Ti200.arrayInsert("Items.BerserkFragment2.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Chained Berserk
    Ti200.arrayInsert("Items.BerserkFragment3.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Armored Berserk
    Ti200.arrayInsert("Items.BerserkFragment4.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Bruising Berserk
    Ti200.arrayInsert("Items.BerserkFragment5.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Focused Berserk
    Ti200.arrayInsert("Items.BerserkFragment6.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Invigorating Berserk
    Ti200.arrayInsert("Items.BerserkFragment7.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Devastating Berserk
    Ti200.arrayInsert("Items.BerserkFragment8.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Sharpened Berserk
end

-- BLUEPRINT SANDEVISTAN MK6
if TweakDB:GetRecord("Items.SandevistanBlueprintMK6") == nil then
    -- Custom Blueprint
    TweakDB:CreateRecord("AttachmentSlots.SandevistanSlot4_M", "gamedataAttachmentSlot_Record") -- 4th sandevistan slot
    TweakDB:SetFlat("AttachmentSlots.SandevistanSlot4_M.entitySlotName", "SandevistanSlot4")
    TweakDB:SetFlat("AttachmentSlots.SandevistanSlot4_M.localizedName", "Cyberware Slot")
    TweakDB:SetFlat("AttachmentSlots.SandevistanSlot4_M.unlockedBy", "Legendary")
    TweakDB:CreateRecord("Items.SandevistanBlueprintMK6_inline1", "gamedataItemBlueprintElement_Record")   -- inner blueprint record
    TweakDB:SetFlat("Items.SandevistanBlueprintMK6_inline1.slot", "AttachmentSlots.SandevistanSlot4_M")
    TweakDB:CreateRecord("Items.SandevistanBlueprintMK6_inline0", "gamedataItemBlueprintElement_Record")   -- main blueprint record
    TweakDB:SetFlat("Items.SandevistanBlueprintMK6_inline0.childElements", {"Items.SandevistanBlueprint_inline1","Items.SandevistanBlueprint_inline2","Items.SandevistanBlueprint_inline3","Items.SandevistanBlueprintMK6_inline1"})
    TweakDB:SetFlat("Items.SandevistanBlueprintMK6_inline0.slot", "AttachmentSlots.GenericItemRoot")
    TweakDB:CreateRecord("Items.SandevistanBlueprintMK6", "gamedataItemBlueprint_Record")   -- main blueprint record
    TweakDB:SetFlat("Items.SandevistanBlueprintMK6.rootElement", "Items.SandevistanBlueprintMK6_inline0")
    -- Enable existing mods to use 4th slot
    Ti200.arrayInsert("Items.SandevistanFragmentBase.placementSlots", "AttachmentSlots.SandevistanSlot4_M")
    Ti200.arrayInsert("Items.ArasakaSandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")   -- Arasaka Software
    Ti200.arrayInsert("Items.SandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Overclocked Processor
    Ti200.arrayInsert("Items.SandevistanFragment2.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Prototype Chip
    Ti200.arrayInsert("Items.SandevistanFragment3.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Neurotransmitters
    Ti200.arrayInsert("Items.SandevistanFragment4.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Heatsink
    Ti200.arrayInsert("Items.SandevistanFragment8.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Micro-Amplifier
    Ti200.arrayInsert("Items.TygerClawsSandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")    -- Tiger Paw
    Ti200.arrayInsert("Items.ValentinosSandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")    -- Rabid Bull
end

-- Enable 4th slots
Ti200.enableSlot("AttachmentSlots.BerserkSlot4_M")    -- enable berserk 4th slot
Ti200.enableSlot("AttachmentSlots.SandevistanSlot4_M")    -- enable sandevistan 4th slot
