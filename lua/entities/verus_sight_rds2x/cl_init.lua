include("entities/verus_sight_rds2x/shared.lua")

function ENT:Draw()
    self:DrawModel()
    local ply = LocalPlayer()
    local wep = ply:GetActiveWeapon()
    local ang = self:GetLocalAngles()
    local pos = self:GetPos()
    ang:RotateAroundAxis(ang:Up(), 90)
    cam.Start3D2D(pos + ang:Up() * 7, ang, 0.15)

    if self:compatible(wep) then
        draw.WordBox(2, -55, -10, "COMPATIBLE", "ChatFont", Color(0, 255, 0), Color(255, 255, 255, 255))
    else
        draw.WordBox(2, -65, -10, "INCOMPATIBLE", "ChatFont", Color(255, 0, 0), Color(255, 255, 255, 255))
    end

    cam.End3D2D()
end