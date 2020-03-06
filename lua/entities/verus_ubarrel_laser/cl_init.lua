include("entities/verus_ubarrel_laser/shared.lua")

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
    local eang = (pos - ply:GetPos()):Angle()
    eang:RotateAroundAxis(eang:Up(), -90)
    eang.r = 90
    cam.Start3D2D(pos + Vector(0, 0, 20), eang, 0.15)
    draw.WordBox(2, -25, 0, self.PrintName, "ChatFont", Color(0, 0, 0, 200), Color(255, 255, 255, 255))
    cam.End3D2D()
end