ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "MX4 scope (8x)"
ENT.Spawnable = true
ENT.Attachment = "ins2_si_mx4"

function ENT:compatible(wep)
    if wep.Attach and wep.AttachmentCache[self.Attachment] ~= nil then
        return true
    else
        return false
    end
end