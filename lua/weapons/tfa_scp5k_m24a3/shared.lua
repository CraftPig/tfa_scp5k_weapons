--------------------------------------------------- Define Base
SWEP.Base				= "tfa_bash_base"
SWEP.Category			= "TFA SCP:5K"

SWEP.Spawnable			= true 
SWEP.AdminSpawnable		= true 

--------------------------------------------------- Viewmodel
SWEP.ViewModel			    = "models/weapons/tfa_scp5k/m24a3/v_m24a3.mdl" 
SWEP.ViewModelFOV			= 75		         -- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip			= false		         -- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands               = true               --Use gmod c_arms system.
SWEP.VMPos                  = Vector(-0.5, 0, 0.75)    --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng                  = Vector(0, 0, 0)    --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive         = false              --Set to false for an easier time using VMPos.
SWEP.CameraAttachmentScale  = 0
SWEP.CameraAttachment       = 0
SWEP.CenteredPos            = nil                --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng            = nil                --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V = {
}
SWEP.ViewModelBoneMods = {
}

--------------------------------------------------- Worldmodel
SWEP.WorldModel			    = "models/weapons/tfa_scp5k/m24a3/w_m24a3.mdl" 
SWEP.Bodygroups_W = {

}
SWEP.HoldType               = "ar2" -- melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
SWEP.Offset = {
	Pos = {
		Up = -3.1,
		Right = 1.5,
		Forward = 5.0
	},
	Ang = {
		Up = 5,
		Right = -180,
		Forward = 0
	},
	Scale = 1
} 
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.

-------------------------- VM Positions
SWEP.RunSightsPos      = Vector(0, -0, 2)
SWEP.RunSightsAng      = Vector(-25, 30, 15)
SWEP.SafetyPos         = Vector(4.081, 0, -1.048)
SWEP.SafetyAng         = Vector(-5.143, 20.809, 0)

SWEP.data = {}
SWEP.data.ironsights   = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 65
SWEP.IronSightsPos     = Vector(-3.74, -0.0, 1.65)
SWEP.IronSightsAng     = Vector(0, -0.125, 0)
SWEP.IronSightTime     = 0.125 

SWEP.InspectPos        = Vector(-0, 0.0, 1.0)
SWEP.InspectAng        = Vector(10, 5, 0)

--------------------------------------------------- Hud Elements
SWEP.SubCategory        = "Other"
SWEP.PrintName			= "M24A3"		         -- Weapon name (Shown on HUD)
SWEP.Manufacturer		= "Benelli Armi"
SWEP.Author				= "Craft_pig"
SWEP.Contact			= ""
SWEP.Purpose			= "" 
SWEP.Instructions		= "The UMP-45 is a submachine gun manufactured by Heckler and Koch. It is chambered in .45 ACP." 

SWEP.DrawCrosshair		= true	
SWEP.DrawCrosshairIS	= false 

SWEP.Slot				= 3			             -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos			= 40		             -- Position in the slot
SWEP.AutoSwitchTo		= true		             -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom		= true		             -- Auto switch from if you pick up a better weapon
SWEP.Weight				= 40		             -- This controls how "good" the weapon is for autopickup.

--------------------------------------------------- Weapon Stats
-------------------------- Magazine
SWEP.Primary.ClipSize          = 7 
SWEP.Primary.DefaultClip       = 42 
SWEP.Primary.Ammo              = "SniperPenetratedRound"        --pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun.
SWEP.Primary.AmmoConsumption   = 1 
SWEP.DisableChambering         = false 

-------------------------- Damage
SWEP.Primary.Damage            = 200 

SWEP.Primary.DamageTypeHandled = true            --true will handle damagetype in base
SWEP.Primary.DamageType        = nil             --See DMG enum. DMG_SHOCK, DMG_BURN, DMG_BULLET.  DMG_AIRBOAT opens doors.

SWEP.Primary.Force             = nil             --Force value, leave nil to autocalc
SWEP.Primary.Knockback         = 0               --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize          = 0               --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots          = 1               --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic         = false           -- Automatic/Semi Auto

-------------------------- Fire Handling
SWEP.Primary.RPM_Displayed         = 68         -- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM                   = 180         -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay          = nil         --How long you have to wait after firing your last shot before a dryfire animation can play
SWEP.Primary.PenetrationMultiplier = 1           --Change the amount of something this gun can penetrate through

SWEP.Primary.BurstDelay            = nil         -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater               = false

SWEP.CanBeSilenced                 = false 
SWEP.Silenced                      = false 

SWEP.SelectiveFire                 = false       --Allow selecting your firemode?
SWEP.DisableBurstFire              = nil -- Only auto/single?
SWEP.OnlyBurstFire                 = nil -- No auto, only burst/single?
SWEP.BurstFireCount                = nil -- Burst fire count override (autocalculated by the clip size if nil)
SWEP.DefaultFireMode               = "" -- Default to auto or whatev
SWEP.FireModeName                  = nil -- Change to a text value to override it

SWEP.Primary.Range                 = -1          -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff          = 0.5           -- Set to 0.8, for example, to start falling off after 80% of the range.
SWEP.MaxPenetrationCounter         = 1           --The maximum number of ricochets.  To prevent stack overflows.

-------------------------- Shotgun
SWEP.Shotgun                       = false
SWEP.ShotgunStartAnimShell         = false
SWEP.LoopedReload                  = false -- Enable looped / shotgun style / one round at time reloading.
SWEP.LoopedReloadInsertAmount      = 1 -- How much rounds to insert on each reload cycle

SWEP.ShotgunEmptyAnim              = false -- Enable emtpy reloads on shotguns?
SWEP.ShotgunEmptyAnim_Shell        = false -- Enable insertion of a shell directly into the chamber on empty reload?
SWEP.ShotgunStartAnimShell         = false -- shotgun start anim inserts shell

-------------------------- Recoil
SWEP.Primary.KickUp                = 1.5 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown              = 2.30 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal        = 0.3 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor    = .6

SWEP.IronRecoilMultiplier          = 0.9        --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier      = 0.8         --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
 
-------------------------- Visual Recoil
SWEP.ViewModelPunchPitchMultiplier               = 0.0 -- Default value is 0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights    = 0.0 -- Default value is 0.09

SWEP.ViewModelPunch_MaxVertialOffset             = 1.15 -- Default value is 3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights  = 0.5 -- Default value is 1.95
SWEP.ViewModelPunch_VertialMultiplier            = 0.3 -- Default value is 1
SWEP.ViewModelPunch_VertialMultiplier_IronSights = 0.1 -- Default value is 0.25

SWEP.ViewModelPunchYawMultiplier                 = 1 -- Default value is 0.45
SWEP.ViewModelPunchYawMultiplier_IronSights      = 0.2 -- Default value is 1.5


-------------------------- Spread
SWEP.Primary.Spread                              = .06 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy                        = .0 -- Ironsight accuracy, should be the same for shotguns
SWEP.Primary.SpreadMultiplierMax                 = 3 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement                     = 3.75 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery                      = 2.5 --How much the spread recovers, per second. Example val: 3

-------------------------- Handling
SWEP.MoveSpeed                     = 1 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed           = SWEP.MoveSpeed * 0.95 --Multiply the player's movespeed by this when sighting.

--------------------------------------------------- Effects
SWEP.MuzzleAttachment		   = "1"  -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment		   = "2" 		 -- Should be "2" for CSS models or "shell" for hl2 models
SWEP.TracerCount 		       = 1 	             --0 disables, otherwise, 1 in X chance

SWEP.LuaShellEject             = false            --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay        = 0.65            --The delay to actually eject things
SWEP.LuaShellEffect            = "ShellEject"
SWEP.LuaShellModel             = "models/shells/shell_762nato.mdl"

--------------------------------------------------- Sounds
SWEP.Primary.Sound             = Sound("Weapon_m24a3_Fire")

SWEP.IronInSound               = Sound("Generic_ADSin")             --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound              = Sound("Generic_ADSout")             --Sound to play when ironsighting out?  nil for default

--------------------------------------------------- Animations
SWEP.EventTable = {
	[ACT_VM_DRAW] = {
		{time = 0 / 30, type = "sound", value = Sound("Weapon_m24a3_Equip")},
		{time = 0 / 30, type = "sound", value = Sound("Generic_ClothEquip")}
	},
	[ACT_VM_HOLSTER] = {
		{time = 0 / 30, type = "sound", value = Sound("Weapon_m24a3_Unequip")},
		{time = 0 / 30, type = "sound", value = Sound("Generic_ClothUnequip")}
	},
	[ACT_SHOTGUN_PUMP] = {
		{time = 0 / 30, type = "sound", value = Sound("Weapon_m24a3_Action")},
		{ ["time"] = 1/60000 / 240, ["type"] = "lua", ["value"] = function(wep,vm)
			if wep and wep.EventShell then
				wep:EventShell()
			end
		end, ["client"] = true, ["server"] = true }
	},
	[ACT_VM_RELOAD] = {
		{time = 0 / 60, type = "sound", value = Sound("Weapon_m24a3_MagOut")},
		{time = 40 / 60, type = "sound", value = Sound("Weapon_m24a3_MagPouch")},
		{time = 68 / 60, type = "sound", value = Sound("Weapon_m24a3_MagIn")},
	},
	[ACT_VM_RELOAD_EMPTY] = {
		{time = 0 / 60, type = "sound", value = Sound("Weapon_m24a3_EmptyMagOut")},
		{time = 40 / 60, type = "sound", value = Sound("Weapon_m24a3_EmptyMagPouch")},
		{time = 100 / 60, type = "sound", value = Sound("Weapon_m24a3_EmptyMagIn")},
		{time = 150 / 60, type = "sound", value = Sound("Weapon_m24a3_EmptyBolt")},
	},
	[ACT_VM_FIDGET] = {
		{time = 0 / 60, type = "sound", value = Sound("Weapon_m24a3_Rotate")},
		{time = 90 / 60, type = "sound", value = Sound("Weapon_m24a3_BoltBack")},
		{time = 140 / 60, type = "sound", value = Sound("Weapon_m24a3_BoltForward")},
	},
	[ACT_VM_MISSCENTER] = {
		{time = 5 / 60, type = "sound", value = Sound("Weapon_m24a3_MagCheckIn")},
		
	},
	[ACT_VM_MISSCENTER2] = {
		{time = 0 / 60, type = "sound", value = Sound("Weapon_m24a3_MagCheckOut")},		
	},
}

SWEP.PumpAction = { -- Pump/bolt animations
	["type"] = TFA.Enum.ANIMATION_SEQ, -- Sequence or act
	["value"] = "action", -- Number for act, String/Number for sequence
	["value_empty"] = "action", -- Last shot pump
	--["value_is"] = ACT_VM_PULLBACK_LOW, -- ADS pump
}

SWEP.Walk_Mode = TFA.Enum.LOCOMOTION_HYBRID  --why isn't THIS standard for all sweps?? if you have an animation, use it! dumb...
SWEP.WalkAnimation = {
    ["loop"] = {
        ["type"] = TFA.Enum.ANIMATION_SEQ,
        ["value"] = "Walk",
        ["value_empty"] = "walk_empty",
        ["is_idle"] = true
    }
}

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID  --why isn't THIS standard for all sweps?? if you have an animation, use it! dumb...
SWEP.SprintAnimation = {
    ["loop"] = {
        ["type"] = TFA.Enum.ANIMATION_SEQ,
        ["value"] = "Sprint",
        ["value_empty"] = "walk_empty",
        ["is_idle"] = true
    }
}

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID
SWEP.IronAnimation = {
	["in"] = {
		["type"] = TFA.Enum.LOCOMOTION_HYBRID, 
		["value"] = "ads_in", 
		["value_empty"] = "ads_in_empty",
		["transition"] = true
	}, 
	["loop"] = {
		["type"] = TFA.Enum.LOCOMOTION_HYBRID,
		["value"] = "ads_idle", 
		["value_empty"] = "ads_idle_empty",
		["is_idle"] = true
	}, 
	["out"] = {
		["type"] = TFA.Enum.LOCOMOTION_HYBRID,
		["value"] = "ads_out", 
		["value_empty"] = "ads_out_empty",
		["transition"] = true
	},
	["shoot"] = {
		["type"] = TFA.Enum.LOCOMOTION_HYBRID,
		["value"] = "fire", 
		["value_last"] = "fire",
		["value_empty"] = "dryfire"
	}
}

SWEP.Customize_Mode = TFA.Enum.LOCOMOTION_HYBRID
SWEP.CustomizeAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "arms_magcheck_in",
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "arms_magcheck_loop",
		["is_idle"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "arms_magcheck_end",
	}
}

SWEP.SequenceLengthOverride = {                           
	["reload_empty"]   = 130 / 30, 
	["reload"]   = 68 / 30, 
	["action"]   = 32 / 30, 
	["fire"]   = 1 / 30, 
	["equip"]   = 10 / 30, 
	["unequip"]   = 10 / 30, 
}   

SWEP.StatusLengthOverride   = {
	[ACT_VM_RELOAD] = 50 / 30,
    [ACT_VM_RELOAD_EMPTY] = 70 / 30,		
}


SWEP.ForceDryFireOff        = true  --Disables dryfire.  Set to false to enable them.
SWEP.DisableIdleAnimations  = false --Disables idle animations.  Set to false to enable them.
SWEP.ForceEmptyFireOff      = false --Disables empty fire animations.  Set to false to enable them.


SWEP.Attachments = {
	[3] = { offset = { 0, 0 }, atts = { "att_tfa_scp5ktan" }, order = 3 },
}



DEFINE_BASECLASS(SWEP.Base)







--SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.






