local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character
local hrp = char.HumanoidRootPart
local hrp2 = hrp:Clone()

hrp2.Parent = char
hrp.Name = "hi"
hrp.Transparency = 1
hrp.Anchored = false
if hrp:FindFirstChildOfClass("AlignPosition") then
    hrp:FindFirstChildOfClass("AlignPosition"):Destroy()
end
if hrp:FindFirstChildOfClass("AlignOrientation") then
    hrp:FindFirstChildOfClass("AlignOrientation"):Destroy()
end
local bp = Instance.new("BodyPosition", hrp)
bp.D = 9999999
bp.P = 999999999999999
bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
flinger = Instance.new("BodyAngularVelocity",hrp)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
if dontkill == true then
    flinger.AngularVelocity = Vector3.new(600, 600, 600)
else
    flinger.AngularVelocity = Vector3.new(10000,10000,10000)
end

spawn(function()
    while wait() do
        if char:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
            bp.Position = char.NullwareReanim.Torso.Position
        else
            bp.Position = char.Torso.Position
        end
    end
end)
