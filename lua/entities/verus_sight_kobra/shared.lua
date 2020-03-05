ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Kobra sight"
ENT.Spawnable = true
ENT.Attachment = "ins2_si_kobra"

function ENT:compatible(wep)
    if wep.Attach and wep.AttachmentCache[self.Attachment] ~= nil then
        return true
    else
        return false
    end
end