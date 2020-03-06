include("entities/verus_att_clean/shared.lua")

function ENT:Draw()
    self:DrawModel()
    local ply = LocalPlayer()
    local pos = self:GetPos()
    local eang = (pos - ply:GetPos()):Angle()
    eang:RotateAroundAxis(eang:Up(), -90)
    eang.r = 90
    cam.Start3D2D(pos + Vector(0, 0, 20), eang, 0.15)
    draw.WordBox(2, -85, 0, self.PrintName, "ChatFont", Color(0, 0, 0, 200), Color(255, 255, 255, 255))
    cam.End3D2D()
end