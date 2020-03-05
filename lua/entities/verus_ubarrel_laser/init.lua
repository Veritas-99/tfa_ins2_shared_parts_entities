AddCSLuaFile("entities/verus_ubarrel_laser/cl_init.lua")
AddCSLuaFile("entities/verus_ubarrel_laser/shared.lua")
include("entities/verus_ubarrel_laser/shared.lua")

function ENT:Initialize()
    self:SetModel("models/props/CS_militia/footlocker01_closed.mdl")
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
        wep:Attach(self.Attachment)
        self:EmitSound("npc/combine_soldier/gear3.wav", 75)
        self:Remove()
    end
end