-- Utilities

	-- Cyberware Type
	berserkCW = TweakDB:GetFlat("Items.BerserkC4MK5.cyberwareType")	-- berserk type
	cyberdeckCW = TweakDB:GetFlat("Items.MilitechParaline.cyberwareType")	-- cyberdeck type
	sandevistanCW = TweakDB:GetFlat("Items.SandevistanC4MK5.cyberwareType")	-- sandevistan type
	mltp = TweakDB:GetFlat("Items.SandevistanC2MK3_inline7.operationType")	-- operationType


-- Functions

	-- addToList
	function addToList(list, record)
		recordhash = TweakDBID.new(record)
		templist = TweakDB:GetFlat(list)
		if TweakDB:GetFlat(list) == nil then
			return
		end
		if has_value(templist, recordhash) then
	
		else
			table.insert(templist, record)
			TweakDB:SetFlat(list, templist)
		end
	end

	-- has_value
	function has_value (tab, val)
    	for index, value in ipairs(tab) do
        	if value == val then
            	return true
        	end
    	end
    	return false
	end
