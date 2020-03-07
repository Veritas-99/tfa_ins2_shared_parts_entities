ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Red dot sight (2x)"
ENT.Spawnable = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.Category = "[TFA][AT] INS2 Shared Parts"
ENT.Attachment = "ins2_si_2xrds"

function ENT:compatible(wep)
    if wep.Attach and wep.AttachmentCache[self.Attachment] ~= nil then
        return true
    else
        return false
    end
end