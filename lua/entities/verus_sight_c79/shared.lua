ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "C79 sight (3.4x)"
ENT.Spawnable = true
ENT.Attachment = "ins2_si_c79"

function ENT:compatible(wep)
    if wep.Attach and wep.AttachmentCache[self.Attachment] ~= nil then
        return true
    else
        return false
    end
end