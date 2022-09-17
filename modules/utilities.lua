-- ver. 1.8

-- Utilities

	-- Cyberware Type
	berserkCW = TweakDB:GetFlat("Items.BerserkC4MK5.cyberwareType")	-- berserk type
	cyberdeckCW = TweakDB:GetFlat("Items.MilitechParaline.cyberwareType")	-- cyberdeck type
	sandevistanCW = TweakDB:GetFlat("Items.SandevistanC4MK5.cyberwareType")	-- sandevistan type
	mltp = TweakDB:GetFlat("Items.SandevistanC2MK3_inline7.operationType")	-- operationType


-- arrayInsert (use this inside if condition)
	function arrayInsert(arr, rec)
		bakArray = TweakDB:GetFlat(arr)
		table.insert(bakArray, rec)
		TweakDB:SetFlat(arr, bakArray)
	end
