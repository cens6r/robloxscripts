-- hampy#1476 (190198104149065738)

local Players = game:GetService('Players')
local lp = Players.LocalPlayer
local inew = Instance.new
local tool = inew('Tool',lp.Backpack)
tool.Name = 'freddy fazbear'
local handle = inew('Part',tool)
handle.Name = 'Handle'

tool.GripPos = Vector3.new(0, -2, 2)

local Mesh = Instance.new("SpecialMesh", handle)
Mesh.Scale = Vector3.new(.5, .5, .5)
Mesh.MeshId = "rbxassetid://511715966"
Mesh.TextureId = "rbxassetid://511716115"

local sound

tool.Equipped:Connect(function()
    sound = inew('Sound',workspace)
    sound.SoundId = 'rbxassetid://8106213926'
    sound.Volume = 10 
    sound.Looped = true
    sound:Play()
end)

tool.Unequipped:Connect(function()
    if sound then
        sound:Destroy()
    end
end)
