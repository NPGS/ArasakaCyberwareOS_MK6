-- ver. 1.12.4 - LUA MODULES LOADER

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

function cloneConstantStat(statRecord, record, value)
    TweakDB:CloneRecord(statRecord, record)
    TweakDB:SetFlat(statRecord..".value", value)
end

function createConstantStat(statRecord, modifierType, statType, value)
    TweakDB:CreateRecord(statRecord, "gamedataConstantStatModifier_Record")
    TweakDB:SetFlat(statRecord..".modifierType", modifierType)
    TweakDB:SetFlat(statRecord..".statType", statType)
    TweakDB:SetFlat(statRecord..".value", value)
end

function createVendorItem(itemVendorRecord, streetCred, item, vendorItemList)
	TweakDB:CloneRecord(itemVendorRecord, "Vendors.wat_lch_ripperdoc_01_inline14")
    TweakDB:SetFlat(itemVendorRecord..".availabilityPrereq", streetCred)
    TweakDB:SetFlat(itemVendorRecord..".item", item)
    arrayInsert(vendorItemList, itemVendorRecord)
end

function createIcon(itemRecord, iconName, path)
    TweakDB:CreateRecord("UIIcon."..itemRecord.."_icon", "gamedataUIIcon_Record")
    TweakDB:SetFlat("UIIcon."..itemRecord.."_icon.atlasPartName", CName(iconName))
    TweakDB:SetFlat("UIIcon."..itemRecord.."_icon.atlasResourcePath", CName(path))
    TweakDB:SetFlat(itemRecord..".icon", "UIIcon."..itemRecord.."_icon")
    TweakDB:SetFlat(itemRecord..".iconPath", itemRecord.."_icon")
end

-- i thank a collaborator of mine for allowing me to use this function
function enableSlot(slotName)
    local recordID = TweakDB:GetRecord(slotName):GetID()
    Override('InventoryDataManagerV2', 'GetAttachmentSlotsForInventory;', function(wrappedMethod)
		slot = wrappedMethod()
		table.insert(slot, TweakDBID.new(slotName))
		return slot
	end)
    Override('UIItemsHelper', 'GetEmptySlotName;TweakDBID', function(slotID, wrappedMethod) 
        if (slotID == recordID) then
            return "UI-Labels-EmptyCyberwareModSlot"
        end
        return wrappedMethod(slotID)
    end)
    Override('UIItemsHelper', 'GetSlotShadowIcon;TweakDBIDgamedataItemTypegamedataEquipmentArea', function(slotID, itemType, equipmentArea, wrappedMethod)
        if (slotID == recordID) then
            return CName.new('UIIcon.ItemShadow_Fragment')
        end
        return wrappedMethod(slotID, itemType, equipmentArea)
    end)
    Override('UIItemsHelper', 'GetLootingtShadowIcon;TweakDBIDgamedataItemTypegamedataEquipmentArea', function(slotID, itemType, equipmentArea, wrappedMethod)
        if (slotID == recordID) then
            return CName.new('UIIcon.LootingShadow_Fragment')
        end
        return wrappedMethod(slotID, itemType, equipmentArea)
    end)
    Override('UIItemsHelper', 'GetSlotName;TweakDBIDgamedataItemTypegamedataEquipmentArea', function(slotID, itemType, equipmentArea, wrappedMethod)
        if (slotID == recordID) then
            return "Gameplay-Items-Item Type-Prt_Fragment"
        end
        return wrappedMethod(slotID, itemType, equipmentArea)
    end)
end
