-- ver. 1.7 - New Cyberdeck abilities

-- Cooldown Reduction 04 START
if TweakDB:GetRecord("Items.CooldownReductionAbility04_M") == nil then
    TweakDB:CloneRecord("Items.CooldownReductionAbility04_M", "Items.CooldownReductionAbility03")
    TweakDB:CloneRecord("Items.CooldownReductionAbility04_M_inline0", "Items.CooldownReductionAbility03_inline0")
    TweakDB:CloneRecord("Items.CooldownReductionAbility04_M_inline1", "Items.CooldownReductionAbility03_inline1")
    TweakDB:SetFlat("Items.CooldownReductionAbility04_M.stats", {"Items.CooldownReductionAbility04_M_inline0"})
    TweakDB:SetFlat("Items.CooldownReductionAbility04_M.UIData", "Items.CooldownReductionAbility04_M_inline1")
    TweakDB:SetFlat("Items.CooldownReductionAbility04_M_inline0.value", 0.6)
    TweakDB:SetFlat("Items.CooldownReductionAbility04_M_inline1.intValues", {60})
end
-- Cooldown Reduction 04 END


-- Memory Regen 04 START
if TweakDB:GetRecord("Items.MemoryRegenAbility04_M") == nil then
    TweakDB:CloneRecord("Items.MemoryRegenAbility04_M", "Items.MemoryRegenAbility03")
    TweakDB:CloneRecord("Items.MemoryRegenAbility04_M_inline0", "Items.MemoryRegenAbility03_inline0")
    TweakDB:CloneRecord("Items.MemoryRegenAbility04_M_inline1", "Items.MemoryRegenAbility03_inline1")
    TweakDB:CloneRecord("Items.MemoryRegenAbility04_M_inline2", "Items.MemoryRegenAbility03_inline2")
    TweakDB:SetFlat("Items.MemoryRegenAbility04_M.stats", {"Items.MemoryRegenAbility04_M_inline0", "Items.MemoryRegenAbility04_M_inline1"})
    TweakDB:SetFlat("Items.MemoryRegenAbility04_M.UIData", "Items.MemoryRegenAbility04_M_inline2")
    TweakDB:SetFlat("Items.MemoryRegenAbility04_M_inline0.value", 0.2)
    TweakDB:SetFlat("Items.MemoryRegenAbility04_M_inline1.value", 0.2)
    TweakDB:SetFlat("Items.MemoryRegenAbility04_M_inline2.intValues", {12})
end
-- Memory Regen 04 END


-- Quickhack Duration 04 START
if TweakDB:GetRecord("Items.QuickHackDurationAbility04_M") == nil then
    TweakDB:CloneRecord("Items.QuickHackDurationAbility04_M", "Items.QuickHackDurationAbility03")
    TweakDB:CloneRecord("Items.QuickHackDurationAbility04_M_inline0", "Items.QuickHackDurationAbility03_inline0")
    TweakDB:CloneRecord("Items.QuickHackDurationAbility04_M_inline1", "Items.QuickHackDurationAbility03_inline1")
    TweakDB:SetFlat("Items.QuickHackDurationAbility04_M.stats", {"Items.QuickHackDurationAbility04_M_inline0"})
    TweakDB:SetFlat("Items.QuickHackDurationAbility04_M.UIData", "Items.QuickHackDurationAbility04_M_inline1")
    TweakDB:SetFlat("Items.QuickHackDurationAbility04_M_inline0.value", 0.6)
    TweakDB:SetFlat("Items.QuickHackDurationAbility04_M_inline1.intValues", {60})
end
-- Quickhack Duration 04 END


-- Spreading Range 05 START
if TweakDB:GetRecord("Items.SpreadingRangeAbility05_M") == nil then
    TweakDB:CloneRecord("Items.SpreadingRangeAbility05_M", "Items.SpreadingRangeAbility03")
    TweakDB:CloneRecord("Items.SpreadingRangeAbility05_M_inline0", "Items.SpreadingRangeAbility03_inline0")
    TweakDB:CloneRecord("Items.SpreadingRangeAbility05_M_inline1", "Items.SpreadingRangeAbility03_inline1")
    TweakDB:SetFlat("Items.SpreadingRangeAbility05_M.stats", {"Items.SpreadingRangeAbility05_M_inline0"})
    TweakDB:SetFlat("Items.SpreadingRangeAbility05_M.UIData", "Items.SpreadingRangeAbility05_M_inline1")
    TweakDB:SetFlat("Items.SpreadingRangeAbility05_M_inline0.value", 1)
    TweakDB:SetFlat("Items.SpreadingRangeAbility05_M_inline1.intValues", {100})
end
-- Spreading Range 05 END


-- Upload Reduction 04 START
if TweakDB:GetRecord("Items.UploadReductionAbility04_M") == nil then
    TweakDB:CloneRecord("Items.UploadReductionAbility04_M", "Items.UploadReductionAbility03")
    TweakDB:CloneRecord("Items.UploadReductionAbility04_M_inline0", "Items.UploadReductionAbility03_inline0")
    TweakDB:CloneRecord("Items.UploadReductionAbility04_M_inline1", "Items.UploadReductionAbility03_inline1")
    TweakDB:SetFlat("Items.UploadReductionAbility04_M.stats", {"Items.UploadReductionAbility04_M_inline0"})
    TweakDB:SetFlat("Items.UploadReductionAbility04_M.UIData", "Items.UploadReductionAbility04_M_inline1")
    TweakDB:SetFlat("Items.UploadReductionAbility04_M_inline0.value", -0.9)
    TweakDB:SetFlat("Items.UploadReductionAbility04_M_inline1.intValues", {90})
end
-- Upload Reduction 04 END

-- Combat hacks spread
TweakDB:SetFlat("Items.DamageHacksSpreadInitEffector.spreadCount", 3)
TweakDB:SetFlat("QuickHack.BaseOverheatHack_inline3.spreadCount", 3)
TweakDB:SetFlat("QuickHack.BrainMeltBaseHack_inline3.spreadCount", 3)
TweakDB:SetFlat("QuickHack.OverloadBaseHack_inline6.spreadCount", 3)
