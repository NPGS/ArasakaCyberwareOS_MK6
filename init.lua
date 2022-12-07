-- ver. 1.12.3 - LUA MODULES LOADER

registerForEvent("onInit", function()
    require("modules/custom_blueprints.lua")
    require("modules/berserk_fixes.lua")
    require("modules/berserk_c5mk6.lua")
    require("modules/cyberdecks_abilities.lua")
    require("modules/cyberdeck_c4mk3.lua")    -- MILITECH GUEST
    require("modules/cyberdeck_c4mk6.lua")    -- MILITECH GUEST
    require("modules/cyberdeck_c5mk6.lua")
    require("modules/cyberdeck_ttmk6.lua")  -- TETRATRONIC GUEST
    require("modules/hybrid_cheap_cyberdecks.lua")  -- FUYUTSUKI GUEST
    require("modules/hyperbandwidthlink_leg.lua")
    require("modules/nightmare_mk45.lua")
    require("modules/sandevistan_c4mk6.lua")    -- MILITECH GUEST
    require("modules/sandevistan_c5mk3.lua")
    require("modules/sandevistan_c5mk4.lua")
    require("modules/sandevistan_c5mk6.lua")
    require("modules/sandevistan_c6mk3.lua")  -- FUYUTSUKI GUEST
    require("modules/trascendence_leg.lua")
    require("modules/recipes.lua")
end)

function arrayInsert(arr, rec)
	bakArray = TweakDB:GetFlat(arr)
	table.insert(bakArray, rec)
	TweakDB:SetFlat(arr, bakArray)
end

-- i thank a collaborator of mine for allowing me to use this function
function enableSlot(slotName)
    Override('InventoryDataManagerV2', 'GetAttachmentSlotsForInventory;', function(wrappedMethod)
		slot = wrappedMethod()
		table.insert(slot, TweakDBID.new(slotName))
		return slot
	end)
    Override('UIItemsHelper', 'GetEmptySlotName;TweakDBID', function()
        return "UI-Labels-EmptyCyberwareModSlot"
    end)
    Override('UIItemsHelper', 'GetSlotShadowIcon;TweakDBIDgamedataItemTypegamedataEquipmentArea', function()
        return CName.new('UIIcon.ItemShadow_Fragment')
    end)
    Override('UIItemsHelper', 'GetLootingtShadowIcon;TweakDBIDgamedataItemTypegamedataEquipmentArea', function()
        return CName.new('UIIcon.LootingShadow_Fragment')
    end)
    Override('UIItemsHelper', 'GetSlotName;TweakDBIDgamedataItemTypegamedataEquipmentArea', function()
        return "Gameplay-Items-Item Type-Prt_Fragment"
    end)
end
