-- ver. 1.0.0   utilities functions

local Ti200 = {}

function Ti200.arrayInsert(arr, rec)
	bakArray = TweakDB:GetFlat(arr)
	table.insert(bakArray, rec)
	TweakDB:SetFlat(arr, bakArray)
end

function Ti200.cloneConstantStat(statRecord, record, value)
    TweakDB:CloneRecord(statRecord, record)
    TweakDB:SetFlat(statRecord..".value", value)
end

function Ti200.createConstantStat(statRecord, modifierType, statType, value)
    TweakDB:CreateRecord(statRecord, "gamedataConstantStatModifier_Record")
    TweakDB:SetFlat(statRecord..".modifierType", modifierType)
    TweakDB:SetFlat(statRecord..".statType", statType)
    TweakDB:SetFlat(statRecord..".value", value)
end

function Ti200.createVendorItem(itemVendorRecord, streetCred, item, vendorItemList)
	TweakDB:CloneRecord(itemVendorRecord, "Vendors.wat_lch_ripperdoc_01_inline14")
    TweakDB:SetFlat(itemVendorRecord..".availabilityPrereq", streetCred)
    TweakDB:SetFlat(itemVendorRecord..".item", item)
    Ti200.arrayInsert(vendorItemList, itemVendorRecord)
end

function Ti200.createIcon(itemRecord, iconName, path)
    TweakDB:CreateRecord("UIIcon."..itemRecord.."_icon", "gamedataUIIcon_Record")
    TweakDB:SetFlat("UIIcon."..itemRecord.."_icon.atlasPartName", CName(iconName))
    TweakDB:SetFlat("UIIcon."..itemRecord.."_icon.atlasResourcePath", CName(path))
    TweakDB:SetFlat(itemRecord..".icon", "UIIcon."..itemRecord.."_icon")
    TweakDB:SetFlat(itemRecord..".iconPath", itemRecord.."_icon")
end

-- i thank a collaborator of mine for allowing me to use this function
function Ti200.enableSlot(slotName)
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

return Ti200