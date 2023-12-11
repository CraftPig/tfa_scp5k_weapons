--------------------------------------------------- Define Base
SWEP.Base = "tfa_melee_base"
DEFINE_BASECLASS(SWEP.Base)

SWEP.Spawnable			= true 
SWEP.AdminSpawnable		= true 
SWEP.AdminOnly = false

--------------------------------------------------- Viewmodel
SWEP.ViewModelFOV = 80
SWEP.ViewModel = "models/weapons/tfa_scp5k/pipe/v_pipe.mdl" 


SWEP.DrawCrosshair = true
SWEP.UseHands = true

--------------------------------------------------- Worldmodel
SWEP.WorldModel = "models/weapons/tfa_scp5k/glock/w_glock.mdl" 
SWEP.HoldType = "melee"

SWEP.Offset = {
	Pos = {
		Up = -3,
		Right = 1.5,
		Forward = 3
	},
	Ang = {
		Up = 180,
		Right = 90,
		Forward = 0
	},
	Scale = 1
}

--------------------------------------------------- Hud Elements
SWEP.PrintName          = "Pipe"

SWEP.Author             = "Craft_Pig"

SWEP.SubCategory        = "Other"
SWEP.Category           = "TFA SCP:5K"

--------------------------------------------------- Sounds and Effects
SWEP.Primary.Sound = Sound("Weapon_Crowbar.Single")
SWEP.Primary.Sound_Hit = Sound("Weapon_Crowbar.Melee_Hit")

SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0 / 30, type = "snd", value = "Weapon_pipe_equip"},
		{time = 0 / 30, type = "sound", value = Sound("Generic_ClothEquip")}
	},
	[ACT_VM_HOLSTER] = {
		{time = 0 / 30, type = "sound", value = Sound("Generic_ClothUnequip")}
	},
	[ACT_VM_MISSLEFT] = {
		{time = 0 / 30, type = "snd", value = "Weapon_pipe_swing"}
	},
	[ACT_VM_MISSRIGHT] = {
		{time = 0 / 30, type = "snd", value = "Weapon_pipe_swing"}
	},
	[ACT_VM_HITCENTER] = {
		{time = 0 / 30, type = "snd", value = "Weapon_pipe_hit"},
	},
	[ACT_VM_HITLEFT] = {
		{time = 0 / 30, type = "snd", value = "Weapon_pipe_hit"},
	},
    }


SWEP.ImpactDecal = ""

--------------------------------------------------- Stats
SWEP.Primary.RPM = 1

SWEP.AllowSprintAttack = false
SWEP.Secondary.CanBash = false

SWEP.Primary.MaxCombo = -1
SWEP.Secondary.MaxCombo = 0


SWEP.AltAttack = false

--------------------------------------------------- Animations

SWEP.Primary.Attacks            = { -- main attacks table, the values are selected randomly
    {
		["act"] = ACT_VM_MISSLEFT, -- Animation acvitity to use (ACT_ enum value)
		["len"] = 19 * 4.5, -- Trace distance
		["src"] = Vector(20, 10, 0), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(-20, 0, 0), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = 50, -- Damage
		["dmgtype"] = DMG_CRUSH, -- Damage type (DMG_ enum value)
		["delay"] = 0.1, -- Delay (in seconds) before attack trace
		["force"] = 12, -- Damage force
		["hull"] = 30, -- Trace hull size
		["spr"] = true, -- Allow attack while sprinting?
		["snd"] = "Swing.Sound", -- Soundscript name for swing sound
		["hitflesh"] = "TFA.BashFlesh", -- Soundscript name for flesh hit
		["hitworld"] = "TFA.BashWall", -- Soundscript name for non-flesh hit
		["snd_delay"] = 0.1, -- Delay before swing sound
		["viewpunch"] = Angle(5, -5, -1), -- Viewpunch angle
		["end"] = 0.7, -- Time (from attack start) until next attack is allowed
		["direction"] = "L", -- Swing direction (for directional preference); L,R,F,B
		["callback"] = function(ent, wep, tr)
        if not tr.Hit then
            timer.Simple(0.5, function()
                if IsValid(wep) and IsValid(wep:GetOwner()) and wep:GetOwner():IsPlayer() then
                    wep:SendViewModelAnim(ACT_VM_IDLE_TO_LOWERED)
                end
            end)
        else
        wep:PlaySwing(ACT_VM_HITCENTER)
            timer.Simple(0.5, function()
                if IsValid(wep) and IsValid(wep:GetOwner()) and wep:GetOwner():IsPlayer() then
                    wep:SendViewModelAnim(ACT_VM_IDLE_LOWERED)
                end
            end)
        end
        end
	},
	{
		["act"] = ACT_VM_MISSRIGHT, -- Animation acvitity to use (ACT_ enum value)
		["len"] = 19 * 4.5, -- Trace distance
		["src"] = Vector(20, 10, 0), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(60, 0, 10), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = 50, -- Damage
		["dmgtype"] = DMG_CRUSH, -- Damage type (DMG_ enum value)
		["delay"] = 0.1, -- Delay (in seconds) before attack trace
		["force"] = 12, -- Damage force
		["hull"] = 30, -- Trace hull size
		["spr"] = true, -- Allow attack while sprinting?
		["snd"] = "Swing.Sound", -- Soundscript name for swing sound
		["hitflesh"] = "TFA.BashFlesh", -- Soundscript name for flesh hit
		["hitworld"] = "TFA.BashWall", -- Soundscript name for non-flesh hit
		["snd_delay"] = 0.1, -- Delay before swing sound
		["viewpunch"] = Angle(-5, 5, 1), -- Viewpunch angle
		["end"] = 0.7, -- Time (from attack start) until next attack is allowed
		["direction"] = "L", -- Swing direction (for directional preference); L,R,F,B
		["callback"] = function(ent, wep, tr)
        if not tr.Hit then
            timer.Simple(0.5, function()
                if IsValid(wep) and IsValid(wep:GetOwner()) and wep:GetOwner():IsPlayer() then
                    wep:SendViewModelAnim(ACT_VM_IDLE_LOWERED)
                end
            end)
        else
        wep:PlaySwing(ACT_VM_HITLEFT)
            timer.Simple(0.5, function()
                if IsValid(wep) and IsValid(wep:GetOwner()) and wep:GetOwner():IsPlayer() then
                    wep:SendViewModelAnim(ACT_VM_IDLE_TO_LOWERED)
                end
            end)
        end
        end
	},
}


-- SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_HYBRID  --why isn't THIS standard for all sweps?? if you have an animation, use it! dumb...
-- SWEP.WalkAnimation = {
    -- ["loop"] = {
        -- ["type"] = TFA.Enum.ANIMATION_SEQ,
        -- ["value"] = "walk_right",
        -- ["value_empty"] = "walk_right",
        -- ["is_idle"] = true
    -- }
-- }

-- SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI  --why isn't THIS standard for all sweps?? if you have an animation, use it! dumb...
-- SWEP.SprintAnimation = {
    -- ["loop"] = {
		-- ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		-- ["value"] = "sprint_right", --Number for act, String/Number for sequence
		-- ["is_idle"] = false
	-- },
-- }