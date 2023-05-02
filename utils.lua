-- ver. 1.1.0   utilities functions

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

function Ti200.createCombinedStat(statRecord, modifierType, opSymbol, refObject, refStat, statType, value)
    TweakDB:CreateRecord(statRecord, "gamedataCombinedStatModifier_Record")
    TweakDB:SetFlat(statRecord..".modifierType", modifierType)
    TweakDB:SetFlat(statRecord..".opSymbol", opSymbol)
    TweakDB:SetFlat(statRecord..".refObject", refObject)
    TweakDB:SetFlat(statRecord..".refStat", refStat)
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

function Ti200.createSlot(attachmentSlots)
    local newSlots = {}
    for i, slot in ipairs(attachmentSlots) do
        local attachmentSlot = "AttachmentSlots."..slot[i][0].."_M"
        if TweakDB:GetRecord(attachmentSlot) == nil then
            TweakDB:CreateRecord(attachmentSlot, "gamedataAttachmentSlot_Record")
                TweakDB:SetFlat(attachmentSlot..".entitySlotName", slot[i][0])
                TweakDB:SetFlat(attachmentSlot..".localizedName", slot[i][1])
                TweakDB:SetFlat(attachmentSlot..".unlockedBy", slot[i][2])
            Ti200.enableSlot(attachmentSlot)
            table.insert(newSlots, attachmentSlot)
        end
    end
    return newSlots
end

function Ti200.createBlueprint(name, slotsArray, attachmentSlots)
    local blueprintName = "Items."..name
    local rootElement = blueprintName.."_inline0"
    for i = 1, attachmentSlot in ipairs(attachmentSlots) do
        local slotElement = blueprintName.."_inline"..i
        if TweakDB:GetRecord(slotElement) == nil then
            TweakDB:CreateRecord(slotElement, "gamedataItemBlueprintElement_Record")
                TweakDB:SetFlat(slotElement..".slot", attachmentSlot)
            table.insert(slotsArray, attachmentSlot)
        end
    end
    if TweakDB:GetRecord(blueprintName) == nil then
        TweakDB:CreateRecord(rootElement, "gamedataItemBlueprintElement_Record")
            TweakDB:SetFlat(rootElement..".childElements", slotsArray)
            TweakDB:SetFlat(rootElement..".slot", "AttachmentSlots.GenericItemRoot")
        TweakDB:CreateRecord(blueprintName, "gamedataItemBlueprint_Record")
            TweakDB:SetFlat(blueprintName..".rootElement", rootElement)
    end
end

function Ti200.addSlotsToMods(mods, slots)
    for i, modArr in ipairs(mods) do
        for j, slot in ipairs(slots) do
            Ti200.arrayInsert(modArr, slot)
        end
    end
end

return Ti200