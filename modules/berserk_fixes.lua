-- ver. 1.9.2

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

		-- EXTREME REDUCTION
		if TweakDB:GetRecord("Items.BerserkExtremeDmgReduction_inline0") == nil then
			TweakDB:CreateRecord("Items.BerserkExtremeDmgReduction_inline0", "gamedataGameplayLogicPackage_Record")	-- LOGIC PACKAGE
				TweakDB:CloneRecord("Items.BerserkExtremeDmgReduction_inline1", "Items.BerserkC4MK5_inline9")	-- EFFECTOR EFFECTOR
					TweakDB:CloneRecord("Items.BerserkExtremeDmgReduction_inline2", "Items.PainReductor_inline2")	-- EFFECTOR
				TweakDB:CloneRecord("Items.BerserkExtremeDmgReduction_inline3", "Items.PainReductor_inline3")	-- UIDATA
			-- SET STATS
			TweakDB:SetFlat("Items.BerserkExtremeDmgReduction_inline0.effectors", {"Items.BerserkExtremeDmgReduction_inline1"})
				TweakDB:SetFlat("Items.BerserkExtremeDmgReduction_inline1.effectorToApply", "Items.BerserkExtremeDmgReduction_inline2")
					TweakDB:SetFlat("Items.BerserkExtremeDmgReduction_inline2.operationType", 'Multiply')
					TweakDB:SetFlat("Items.BerserkExtremeDmgReduction_inline2.value", 0.4, 'Float')
			TweakDB:SetFlat("Items.BerserkExtremeDmgReduction_inline0.UIData", "Items.BerserkExtremeDmgReduction_inline3")
				TweakDB:SetFlat("Items.BerserkExtremeDmgReduction_inline3.intValues", {60})	-- UIDATA
		end


	-- STRENGTH INCREASES CARRY CAPACITY

		-- EXTREME CAPACITY Mk.6
		if TweakDB:GetRecord("Items.BerserkCarryCapacity_E_inline0") == nil then
			TweakDB:CreateRecord("Items.BerserkCarryCapacity_E_inline0", "gamedataGameplayLogicPackage_Record")	-- LOGIC PACKAGE
				TweakDB:CloneRecord("Items.BerserkCarryCapacity_E_inline1", "Items.BerserkC4MK5_inline15")	-- STAT GROUP EFFECTOR
					TweakDB:CloneRecord("Items.BerserkCarryCapacity_E_inline2", "Items.BerserkC4MK5_inline17")	-- STAT MODIFIER GROUP
						TweakDB:CloneRecord("Items.BerserkCarryCapacity_E_inline3", "Items.TitaniumInfusedBonesRare_inline2")	-- CONSTANT STAT MODIFIER
				TweakDB:CloneRecord("Items.BerserkCarryCapacity_E_inline4", "Items.TitaniumInfusedBonesRare_inline3")	-- UIDATA
			-- SET STATS
			TweakDB:SetFlat("Items.BerserkCarryCapacity_E_inline0.effectors", {"Items.BerserkCarryCapacity_E_inline1"})
				TweakDB:SetFlat("Items.BerserkCarryCapacity_E_inline1.statGroup", "Items.BerserkCarryCapacity_E_inline2")
					TweakDB:SetFlat("Items.BerserkCarryCapacity_E_inline2.statModifiers", {"Items.BerserkCarryCapacity_E_inline3"})
			TweakDB:SetFlat("Items.BerserkCarryCapacity_E_inline0.UIData", "Items.BerserkCarryCapacity_E_inline4")
		end
