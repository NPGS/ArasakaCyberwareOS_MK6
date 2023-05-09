-- ver. 1.12.4

-- BERSERK FIXES

	-- ADD RESISTANCES

		-- FIX BERSERKPLAYERBUFF
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline21.modifierType", "AdditiveMultiplier")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline21.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline21.value", 0.01)
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline22.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline23.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline24.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline25.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline26.refObject", "Player")

		-- RESISTANCES FOR BERSERK Mk.6
		berserkResistancesMK6 = "Items.BerserkResistances05"
		if TweakDB:GetRecord(berserkResistancesMK6) == nil then
			Ti200.createConstantStat(berserkResistancesMK6, "Additive", "BaseStats.BerserkResistancesBonus", 50)
		end

	-- MELEE DAMAGE DMG ADD
	if TweakDB:GetRecord("BaseStatusEffect.BerserkPlayerBuff_melee_dmg") == nil then
		Ti200.createCombinedStat("BaseStatusEffect.BerserkPlayerBuff_melee_dmg", "AdditiveMultiplier", "*", "Player", "BaseStats.BerserkMeleeDamageBonus", "BaseStats.EffectiveDPS", 0.01)
		Ti200.arrayInsert("BaseStatusEffect.BerserkPlayerBuff_inline19.statModifiers", "BaseStatusEffect.BerserkPlayerBuff_melee_dmg")
	end


	-- STAT MODIFIERS TABLES
	berserks15 = {
		"Items.BerserkC1MK1.statModifiers",
		"Items.BerserkC1MK2.statModifiers",
		"Items.BerserkC1MK3.statModifiers",
		"Items.BerserkC2MK1.statModifiers",
		"Items.BerserkC2MK2.statModifiers",
		"Items.BerserkC2MK3.statModifiers",
		"Items.BerserkC2MK4.statModifiers",
		"Items.BerserkC3MK4.statModifiers",
		"Items.BerserkC3MK5.statModifiers",
		"Items.BerserkC4MK5.statModifiers",
	}


	-- UIDATA COOLDOWN FIX (for when 'Chained Berserk' mod is equipped)
	cooldownFix = "Items.BerserkBase_cooldown_fix"
	if TweakDB:GetRecord(cooldownFix) == nil then
		Ti200.createCombinedStat(cooldownFix, "Additive", "*", "Self", "BaseStats.BerserkCooldownReduction", "BaseStats.BerserkCooldownBase", 1)
		TweakDB:SetFlat("Items.BerserkBase.statModifiers", {"Items.BerserkBase_inline3", cooldownFix})
		TweakDB:SetFlat("BaseStatusEffect.BerserkCooldown_inline0.statModifiers", {"BaseStatusEffect.CyberwareCooldownDuration_inline0","BaseStatusEffect.BerserkCooldown_inline1","BaseStatusEffect.BerserkCooldown_inline2"})
		Ti200.associateRecordToArray(berserks15, cooldownFix)
	end


-- BERSERK MK.6 ADDITIONAL TWEAKS

	-- GLOBAL PREREQ
	local berserkEffectPrereq = Ti200.createStatusEffectPrereq("berserkGlobalPrereqMK6", "", false, "StatusEffectPrereq", "BaseStatusEffect.BerserkPlayerBuff", "None")

	-- VERY HIGH DAMAGE REDUCTION
	berserkLowerDmg05 = "Items.BerserkDmgReduction05"
	if TweakDB:GetRecord(berserkLowerDmg05) == nil then
		local berserkLowerDmg05UiData = Ti200.createUiData(berserkLowerDmg05, {}, "ability_silenced", {50}, "LocKey#40805", "", {}, {})
		Ti200.makeEffectorGroupPackage(berserkLowerDmg05, "ApplyEffectorEffector", "ModifyDamageEffector", berserkEffectPrereq, "Prereqs.ProcessHitReceived", "Multiply", 0.5, "Float", berserkLowerDmg05UiData)
	end

	-- VERY HIGH CARRY CAPACITY
	berserkCarrySkill05 = "Items.BerserkCarryCapacity05"
	if TweakDB:GetRecord(berserkCarrySkill05) == nil then
		local zerkCarry05 = { Ti200.createConstantStat(berserkCarrySkill05.."_stat0", "AdditiveMultiplier", "BaseStats.CarryCapacity", 0.5) }
		local zerkCarry05UiData = Ti200.createUiData(berserkCarrySkill05, {}, "ability_silenced", {50}, "LocKey#40830", "", {}, {})
		Ti200.makeStatGroupPackage(berserkCarrySkill05, "ApplyStatGroupEffector", berserkEffectPrereq, zerkCarry05, zerkCarry05UiData)
	end
