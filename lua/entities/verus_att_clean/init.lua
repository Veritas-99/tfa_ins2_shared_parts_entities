AddCSLuaFile("entities/verus_att_clean/cl_init.lua")
AddCSLuaFile("entities/verus_att_clean/shared.lua")
include("entities/verus_att_clean/shared.lua")

function ENT:Initialize()
    self:SetModel("models/props/CS_militia/circularsaw01.mdl")
    self:SetModelScale(0.5)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
    end
end

function ENT:Use(actor, caller, useType, value)
    if not timer.Exists("verus_att_cooldown") then
        timer.Create("verus_att_cooldown", 1, 1, function() end)
    else
        return
    end

    local wep = actor:GetActiveWeapon()

    if self:compatible(wep) then
        for k, v in pairs(wep.AttachmentCache) do
            if v ~= false then
                wep:Detach(k)
            end
        end

        self:EmitSound("weapons/ar2/ar2_reload.wav", 75)
        self:Remove()
    end
end