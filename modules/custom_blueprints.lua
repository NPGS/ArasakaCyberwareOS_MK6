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
    arrayInsert("Items.BerserkFragmentBase.placementSlots", "AttachmentSlots.BerserkSlot4_M")
    arrayInsert("Items.AnimalsBerserkFragment1.placementSlots", "AttachmentSlots.BerserkSlot4_M")   -- Beast Mode
    arrayInsert("Items.BerserkFragment1.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Extended Berserk
    arrayInsert("Items.BerserkFragment2.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Chained Berserk
    arrayInsert("Items.BerserkFragment3.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Armored Berserk
    arrayInsert("Items.BerserkFragment4.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Bruising Berserk
    arrayInsert("Items.BerserkFragment5.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Focused Berserk
    arrayInsert("Items.BerserkFragment6.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Invigorating Berserk
    arrayInsert("Items.BerserkFragment7.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Devastating Berserk
    arrayInsert("Items.BerserkFragment8.placementSlots", "AttachmentSlots.BerserkSlot4_M")  -- Sharpened Berserk
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
    arrayInsert("Items.SandevistanFragmentBase.placementSlots", "AttachmentSlots.SandevistanSlot4_M")
    arrayInsert("Items.ArasakaSandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")   -- Arasaka Software
    arrayInsert("Items.SandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Overclocked Processor
    arrayInsert("Items.SandevistanFragment2.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Prototype Chip
    arrayInsert("Items.SandevistanFragment3.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Neurotransmitters
    arrayInsert("Items.SandevistanFragment4.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Heatsink
    arrayInsert("Items.SandevistanFragment8.placementSlots", "AttachmentSlots.SandevistanSlot4_M")  -- Micro-Amplifier
    arrayInsert("Items.TygerClawsSandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")    -- Tiger Paw
    arrayInsert("Items.ValentinosSandevistanFragment1.placementSlots", "AttachmentSlots.SandevistanSlot4_M")    -- Rabid Bull
end

-- Enable 4th slots
enableSlot("AttachmentSlots.BerserkSlot4_M")    -- enable berserk 4th slot
enableSlot("AttachmentSlots.SandevistanSlot4_M")    -- enable sandevistan 4th slot
