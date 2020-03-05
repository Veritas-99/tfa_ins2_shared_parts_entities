ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Attachment remover"
ENT.Spawnable = true

function ENT:compatible(wep)
    if wep.Detach then
        return true
    else
        return false
    end
end