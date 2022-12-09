-- ver. 1.12.3

-- BERSERK FIXES

	-- RESISTANCES

		-- FIX BERSERKPLAYERBUFF
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline21.modifierType", "AdditiveMultiplier")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline21.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline21.value", 0.01)
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline22.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline23.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline24.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline25.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_inline26.refObject", "Player")

		-- ADD RESISTANCES TO BERSERK Mk.6
		if TweakDB:GetRecord("Items.Berserk_VeryHighResistance") == nil then
			TweakDB:CreateRecord("Items.Berserk_VeryHighResistance", "gamedataConstantStatModifier_Record")
			TweakDB:SetFlat("Items.Berserk_VeryHighResistance.modifierType", "Additive")
			TweakDB:SetFlat("Items.Berserk_VeryHighResistance.statType", "BaseStats.BerserkResistancesBonus")
			TweakDB:SetFlat("Items.Berserk_VeryHighResistance.value", 50)
		end

	-- MELEE DAMAGE DMG ADD
	if TweakDB:GetRecord("BaseStatusEffect.BerserkPlayerBuff_melee_dmg") == nil then
		TweakDB:CreateRecord("BaseStatusEffect.BerserkPlayerBuff_melee_dmg", "gamedataCombinedStatModifier_Record")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_melee_dmg.modifierType", "AdditiveMultiplier")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_melee_dmg.opSymbol", "*")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_melee_dmg.refObject", "Player")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_melee_dmg.refStat", "BaseStats.BerserkMeleeDamageBonus")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_melee_dmg.statType", "BaseStats.EffectiveDPS")
		TweakDB:SetFlat("BaseStatusEffect.BerserkPlayerBuff_melee_dmg.value", 0.01)
		arrayInsert("BaseStatusEffect.BerserkPlayerBuff_inline19.statModifiers", "BaseStatusEffect.BerserkPlayerBuff_melee_dmg")
	end


	-- UIDATA COOLDOWN FIX (for when 'Chained Berserk' mod is equipped)
	if TweakDB:GetRecord("Items.BerserkBase_cooldown_fix") == nil then
		TweakDB:CloneRecord("Items.BerserkBase_cooldown_fix", "Items.SandevistanBase_inline1")
		TweakDB:SetFlat("Items.BerserkBase_cooldown_fix.refStat", "BaseStats.BerserkCooldownReduction")
		TweakDB:SetFlat("Items.BerserkBase_cooldown_fix.statType", "BaseStats.BerserkCooldownBase")
		TweakDB:SetFlat("Items.BerserkBase_cooldown_fix.value", 1)
		TweakDB:SetFlat("Items.BerserkBase.statModifiers", {"Items.BerserkBase_inline3","Items.BerserkBase_cooldown_fix"})
		TweakDB:SetFlat("BaseStatusEffect.BerserkCooldown_inline0.statModifiers", {"BaseStatusEffect.CyberwareCooldownDuration_inline0","BaseStatusEffect.BerserkCooldown_inline1","BaseStatusEffect.BerserkCooldown_inline2"})
		arrayInsert("Items.BerserkC1MK2.statModifiers", "Items.BerserkBase_cooldown_fix")
		arrayInsert("Items.BerserkC1MK3.statModifiers", "Items.BerserkBase_cooldown_fix")
		arrayInsert("Items.BerserkC2MK2.statModifiers", "Items.BerserkBase_cooldown_fix")
		arrayInsert("Items.BerserkC2MK3.statModifiers", "Items.BerserkBase_cooldown_fix")
		arrayInsert("Items.BerserkC2MK4.statModifiers", "Items.BerserkBase_cooldown_fix")
		arrayInsert("Items.BerserkC3MK4.statModifiers", "Items.BerserkBase_cooldown_fix")
		arrayInsert("Items.BerserkC3MK5.statModifiers", "Items.BerserkBase_cooldown_fix")
		arrayInsert("Items.BerserkC4MK5.statModifiers", "Items.BerserkBase_cooldown_fix")
	end


	-- ADD DAMAGE REDUCTION

		-- VERY HIGH REDUCTION Mk.6
		if TweakDB:GetRecord("Items.BerserkDmgReduction05") == nil then
			TweakDB:CreateRecord("Items.BerserkDmgReduction05", "gamedataGameplayLogicPackage_Record")	-- LOGIC PACKAGE
				TweakDB:CloneRecord("Items.BerserkDmgReduction05_inline0", "Items.BerserkC4MK5_inline9")	-- EFFECTOR EFFECTOR
					TweakDB:CloneRecord("Items.BerserkDmgReduction05_inline1", "Items.PainReductor_inline2")	-- EFFECTOR
				TweakDB:CloneRecord("Items.BerserkDmgReduction05_inline2", "Items.PainReductor_inline3")	-- UIDATA
			TweakDB:SetFlat("Items.BerserkDmgReduction05.effectors", {"Items.BerserkDmgReduction05_inline0"})
				TweakDB:SetFlat("Items.BerserkDmgReduction05_inline0.effectorToApply", "Items.BerserkDmgReduction05_inline1")
					TweakDB:SetFlat("Items.BerserkDmgReduction05_inline1.operationType", 'Multiply')
					TweakDB:SetFlat("Items.BerserkDmgReduction05_inline1.value", 0.5, 'Float')
			TweakDB:SetFlat("Items.BerserkDmgReduction05.UIData", "Items.BerserkDmgReduction05_inline2")
				TweakDB:SetFlat("Items.BerserkDmgReduction05_inline2.intValues", {50})	-- UIDATA
			arrayInsert("Items.BerserkC3MK5.OnEquip", "Items.BerserkDmgReduction05")
			arrayInsert("Items.BerserkC4MK5.OnEquip", "Items.BerserkDmgReduction05")
		end


	-- STRENGTH INCREASES CARRY CAPACITY

		-- VERY HIGH CAPACITY Mk.6
		if TweakDB:GetRecord("Items.BerserkCarryCapacity05") == nil then
			TweakDB:CreateRecord("Items.BerserkCarryCapacity05", "gamedataGameplayLogicPackage_Record")	-- LOGIC PACKAGE
				TweakDB:CloneRecord("Items.BerserkCarryCapacity05_inline0", "Items.BerserkC4MK5_inline15")	-- STAT GROUP EFFECTOR
					TweakDB:CloneRecord("Items.BerserkCarryCapacity05_inline1", "Items.BerserkC4MK5_inline17")	-- STAT MODIFIER GROUP
						TweakDB:CloneRecord("Items.BerserkCarryCapacity05_inline2", "Items.TitaniumInfusedBonesCommon_inline1")	-- CONSTANT STAT MODIFIER
				TweakDB:CloneRecord("Items.BerserkCarryCapacity05_inline3", "Items.TitaniumInfusedBonesCommon_inline2")	-- UIDATA
			TweakDB:SetFlat("Items.BerserkCarryCapacity05.effectors", {"Items.BerserkCarryCapacity05_inline0"})
				TweakDB:SetFlat("Items.BerserkCarryCapacity05_inline0.statGroup", "Items.BerserkCarryCapacity05_inline1")
					TweakDB:SetFlat("Items.BerserkCarryCapacity05_inline1.statModifiers", {"Items.BerserkCarryCapacity05_inline2"})
						TweakDB:SetFlat("Items.BerserkCarryCapacity05_inline2.value", 50)
			TweakDB:SetFlat("Items.BerserkCarryCapacity05.UIData", "Items.BerserkCarryCapacity05_inline3")
				TweakDB:SetFlat("Items.BerserkCarryCapacity05_inline3.intValues", {50})
		end
