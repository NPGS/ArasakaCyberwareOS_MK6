-- ver. 1.12.5  - BLUEPRINTS & MODS ENABLER

-- BLUEPRINT BERSERK MK6
local berserkMods = {
    "Items.BerserkFragmentBase.placementSlots",
    "Items.AnimalsBerserkFragment1.placementSlots",  -- Beast Mode
    "Items.BerserkFragment1.placementSlots",  -- Extended Berserk
    "Items.BerserkFragment2.placementSlots",  -- Chained Berserk
    "Items.BerserkFragment3.placementSlots",  -- Armored Berserk
    "Items.BerserkFragment4.placementSlots",  -- Bruising Berserk
    "Items.BerserkFragment5.placementSlots",  -- Focused Berserk
    "Items.BerserkFragment6.placementSlots",  -- Invigorating Berserk
    "Items.BerserkFragment7.placementSlots",  -- Devastating Berserk
    "Items.BerserkFragment8.placementSlots",  -- Sharpened Berserk
}

local berserkSlots = {
    "Items.BerserkBlueprint_inline1",
    "Items.BerserkBlueprint_inline2",
    "Items.BerserkBlueprint_inline3",
}

local berserkNewSlots = {
    [0] = {
        {
            [0] = "BerserkSlot4",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
        {
            [0] = "BerserkSlot5",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
    },
}

Ti200.makeUltraBlueprint(berserkNewSlots, "BerserkBlueprintMK6", berserkSlots, berserkMods, true)


-- BLUEPRINT SANDEVISTAN MK6
local sandevistanMods = {
    "Items.SandevistanFragmentBase.placementSlots",
    "Items.ArasakaSandevistanFragment1.placementSlots",   -- Arasaka Software
    "Items.SandevistanFragment1.placementSlots",  -- Overclocked Processor
    "Items.SandevistanFragment2.placementSlots",  -- Prototype Chip
    "Items.SandevistanFragment3.placementSlots",  -- Neurotransmitters
    "Items.SandevistanFragment4.placementSlots",  -- Heatsink
    "Items.SandevistanFragment8.placementSlots",  -- Micro-Amplifier
    "Items.TygerClawsSandevistanFragment1.placementSlots",  -- Tiger Paw
    "Items.ValentinosSandevistanFragment1.placementSlots",  -- Rabid Bull
}

local sandevistanSlots = {
    "Items.SandevistanBlueprint_inline1",
    "Items.SandevistanBlueprint_inline2",
    "Items.SandevistanBlueprint_inline3",
}

local sandevistanNewSlots = {
    [0] = {
        {
            [0] = "SandevistanSlot4",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
        {
            [0] = "SandevistanSlot5",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
    }
}

Ti200.makeUltraBlueprint(sandevistanNewSlots, "SandevistanBlueprintMK6", sandevistanSlots, sandevistanMods, true)