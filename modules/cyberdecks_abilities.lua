-- ver. 1.3 - New Cyberdeck abilities

-- Cooldown Reduction 04 START
if TweakDB:GetRecord("Items.CooldownReductionAbility04") == nil then
    TweakDB:CloneRecord("Items.CooldownReductionAbility04", "Items.CooldownReductionAbility03")
    TweakDB:CloneRecord("Items.CooldownReductionAbility04_inline0", "Items.CooldownReductionAbility03_inline0")
    TweakDB:CloneRecord("Items.CooldownReductionAbility04_inline1", "Items.CooldownReductionAbility03_inline1")
    TweakDB:SetFlat("Items.CooldownReductionAbility04.stats", {"Items.CooldownReductionAbility04_inline0"})
    TweakDB:SetFlat("Items.CooldownReductionAbility04.UIData", "Items.CooldownReductionAbility04_inline1")
    TweakDB:SetFlat("Items.CooldownReductionAbility04_inline0.value", 0.6)
    TweakDB:SetFlat("Items.CooldownReductionAbility04_inline1.intValues", {60})
end
-- Cooldown Reduction 04 END


-- Memory Regen 04 START
if TweakDB:GetRecord("Items.MemoryRegenAbility04") == nil then
    TweakDB:CloneRecord("Items.MemoryRegenAbility04", "Items.MemoryRegenAbility03")
    TweakDB:CloneRecord("Items.MemoryRegenAbility04_inline0", "Items.MemoryRegenAbility03_inline0")
    TweakDB:CloneRecord("Items.MemoryRegenAbility04_inline1", "Items.MemoryRegenAbility03_inline1")
    TweakDB:CloneRecord("Items.MemoryRegenAbility04_inline2", "Items.MemoryRegenAbility03_inline2")
    TweakDB:SetFlat("Items.MemoryRegenAbility04.stats", {"Items.MemoryRegenAbility04_inline0", "Items.MemoryRegenAbility04_inline1"})
    TweakDB:SetFlat("Items.MemoryRegenAbility04.UIData", "Items.MemoryRegenAbility04_inline2")
    TweakDB:SetFlat("Items.MemoryRegenAbility04_inline0.value", 0.2)
    TweakDB:SetFlat("Items.MemoryRegenAbility04_inline1.value", 0.2)
    TweakDB:SetFlat("Items.MemoryRegenAbility04_inline2.intValues", {12})
end
-- Memory Regen 04 END


-- Quickhack Duration 04 START
if TweakDB:GetRecord("Items.QuickHackDurationAbility04") == nil then
    TweakDB:CloneRecord("Items.QuickHackDurationAbility04", "Items.QuickHackDurationAbility03")
    TweakDB:CloneRecord("Items.QuickHackDurationAbility04_inline0", "Items.QuickHackDurationAbility03_inline0")
    TweakDB:CloneRecord("Items.QuickHackDurationAbility04_inline1", "Items.QuickHackDurationAbility03_inline1")
    TweakDB:SetFlat("Items.QuickHackDurationAbility04.stats", {"Items.QuickHackDurationAbility04_inline0"})
    TweakDB:SetFlat("Items.QuickHackDurationAbility04.UIData", "Items.QuickHackDurationAbility04_inline1")
    TweakDB:SetFlat("Items.QuickHackDurationAbility04_inline0.value", 0.6)
    TweakDB:SetFlat("Items.QuickHackDurationAbility04_inline1.intValues", {60})
end
-- Quickhack Duration 04 END


-- Spreading Range 05 START
if TweakDB:GetRecord("Items.SpreadingRangeAbility05") == nil then
    TweakDB:CloneRecord("Items.SpreadingRangeAbility05", "Items.SpreadingRangeAbility03")
    TweakDB:CloneRecord("Items.SpreadingRangeAbility05_inline0", "Items.SpreadingRangeAbility03_inline0")
    TweakDB:CloneRecord("Items.SpreadingRangeAbility05_inline1", "Items.SpreadingRangeAbility03_inline1")
    TweakDB:SetFlat("Items.SpreadingRangeAbility05.stats", {"Items.SpreadingRangeAbility05_inline0"})
    TweakDB:SetFlat("Items.SpreadingRangeAbility05.UIData", "Items.SpreadingRangeAbility05_inline1")
    TweakDB:SetFlat("Items.SpreadingRangeAbility05_inline0.value", 1)
    TweakDB:SetFlat("Items.SpreadingRangeAbility05_inline1.intValues", {100})
end
-- Spreading Range 05 END


-- Upload Reduction 04 START
if TweakDB:GetRecord("Items.UploadReductionAbility04") == nil then
    TweakDB:CloneRecord("Items.UploadReductionAbility04", "Items.UploadReductionAbility03")
    TweakDB:CloneRecord("Items.UploadReductionAbility04_inline0", "Items.UploadReductionAbility03_inline0")
    TweakDB:CloneRecord("Items.UploadReductionAbility04_inline1", "Items.UploadReductionAbility03_inline1")
    TweakDB:SetFlat("Items.UploadReductionAbility04.stats", {"Items.UploadReductionAbility04_inline0"})
    TweakDB:SetFlat("Items.UploadReductionAbility04.UIData", "Items.UploadReductionAbility04_inline1")
    TweakDB:SetFlat("Items.UploadReductionAbility04_inline0.value", -0.9)
    TweakDB:SetFlat("Items.UploadReductionAbility04_inline1.intValues", {90})
end
-- Upload Reduction 04 END

-- Combat hacks spread
TweakDB:SetFlat("Items.DamageHacksSpreadInitEffector.spreadCount", 3)
TweakDB:SetFlat("QuickHack.BaseOverheatHack_inline3.spreadCount", 3)
TweakDB:SetFlat("QuickHack.BrainMeltBaseHack_inline3.spreadCount", 3)
TweakDB:SetFlat("QuickHack.OverloadBaseHack_inline6.spreadCount", 3)
