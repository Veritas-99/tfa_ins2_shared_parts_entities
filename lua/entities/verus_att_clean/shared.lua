ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Attachment remover"
ENT.Spawnable = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.Category = "[TFA][AT] INS2 Shared Parts"

function ENT:compatible(wep)
    if wep.Detach then
        return true
    else
        return false
    end
end