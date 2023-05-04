-- ver. 1.12.5  BLUEPRINTS FOR MK6 HARDWARE

------------------------------------------------------[ MODS ]------------------------------------------------------
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

------------------------------------------------------[ ORIG SLOTS ]------------------------------------------------------
local berserkSlots = {
    "Items.BerserkBlueprint_inline1",
    "Items.BerserkBlueprint_inline2",
    "Items.BerserkBlueprint_inline3",
}

local sandevistanSlots = {
    "Items.SandevistanBlueprint_inline1",
    "Items.SandevistanBlueprint_inline2",
    "Items.SandevistanBlueprint_inline3",
}

------------------------------------------------------[ NEW SLOTS ]------------------------------------------------------
local berserkNewSlots = {
    [0] = {
        {
            [0] = "BerserkSlot4_ArasakaOS_MK6",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
        {
            [0] = "BerserkSlot5_ArasakaOS_MK6",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
    },
}

local sandevistanNewSlots = {
    [0] = {
        {
            [0] = "SandevistanSlot4_ArasakaOS_MK6",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
        {
            [0] = "SandevistanSlot5_ArasakaOS_MK6",
            [1] = "Cyberware Slot",
            [2] = "Legendary",
        },
    }
}

------------------------------------------------------[ SLOTS ENABLER ]------------------------------------------------------
berserkBlueprintMK6 = Ti200.makeUltraBlueprint(berserkNewSlots, "BerserkBlueprintMK6", berserkSlots, berserkMods, true)
sandevistanBlueprintMK6 = Ti200.makeUltraBlueprint(sandevistanNewSlots, "SandevistanBlueprintMK6", sandevistanSlots, sandevistanMods, true)