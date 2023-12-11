if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Desert TAN"
ATTACHMENT.Description = {}
ATTACHMENT.Icon = "entities/att/att_desert_tan.png"
ATTACHMENT.ShortName = "att_tfa_glocktan"

ATTACHMENT.WeaponTable = {Skin = 1}

function ATTACHMENT:Attach(wep)
	wep.MaterialTable = wep.MaterialTable or {}
	for k, v in pairs(self.MaterialTable or {}) do
		wep.MaterialTable[k] = self.MaterialTable[k]
	end
	wep.MaterialCached = false
end

function ATTACHMENT:Detach(wep)
	wep.MaterialTable = wep.MaterialTable or {}
	for k, v in pairs(self.MaterialTable or {}) do
		wep.MaterialTable[k] = nil
	end
	wep.MaterialCached = false
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end