--[[
Deleted User — 12/31/2021

Annoying Mass part creation (i think the heartbeat was redundant, but eh oh well cba)
]]

local RunService = game:GetService('RunService')
local PartAmount = 10000

RunService.Heartbeat:Connect(function()
    for i = 1, PartAmount do
        local P = Instance.new('Part')
        P.Anchored = false
        P.CanCollide = true
        P.Parent = workspace
        P.Size = Vector3.new(10, 10, 10)
        local RandomPlayer = game:GetService('Players')[math.random(1, #game:GetService('Players'):GetChildren())]
        P.Position = RandomPlayer.Character.HumanoidRootPart.Position
    end
end)
