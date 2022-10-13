--made by Creatar#4019
local runservice=game:service"RunService";
local player=game:service"Players"["LocalPlayer"];
local character=player["Character"];
--character["Head"]:FindFirstChildOfClass"SpecialMesh":Destroy();
character["Humanoid"].HipHeight=-2;
wait(1)

local plr = game.Players.LocalPlayer
game:GetService("RunService").Stepped:Connect(function()
   setsimulationradius(9e9,9e9)
   plr.ReplicationFocus = workspace
   settings().Physics.AllowSleep = false
end)




--Keybinds
_G.UnReanimateKey = "q" --The keybind for unreanimating.
_G.ReanimateKey = "e" --The keybind for reanimating.
_G.R6ToggleKey = "r" --The keybind for toggling R15 to R6.
_G.GodmodeToggleKey = "t" --The keybind for toggling godmode.
--Options
_G.FastLoading = true --Set to true if you want godmode to load faster. (Experimental)
_G.CharacterBug = false --Set to true if your uppertorso floats when using godmode with R15.
_G.GodMode = true --Set to true if you want godmode.
if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
    _G.R6 = true --Set to true if you wanna enable R15 to R6 when your R15.
else
    _G.R6 = false --Set to true if you wanna enable R15 to R6 when your R15.
end
_G.AutoReanimate = true --Set to true if you want to auto reanimate and disable keybinds after executing.

loadstring(game:HttpGet("https://paste.ee/r/5K7Kc/0"))()

repeat wait() until _G.MSG ~= nil
repeat wait() until _G.MSG.Text == ""
wait(0.5)

local client = game:GetService("Players").LocalPlayer
local char = client.Character
local nullware = char.NullwareReanim
local neck = nullware.Torso.Neck

if char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    neck.C0 = neck.C0 + Vector3.new(0,-1.001, 0.01)
    char.Head:FindFirstChildOfClass("Decal"):Destroy()
    char.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
    for i, v in pairs(nullware:GetChildren()) do
        if v:IsA('Accessory') then
            local handle = v.Handle
            if handle:FindFirstChild("HatAttachment") or handle:FindFirstChild("HairAttachment") or handle:FindFirstChild("FaceCenterAttachment") then
                local weld = v.Handle.AccessoryWeld
                weld.C0 = weld.C0 + Vector3.new(0,-1,0)
            end
        end
    end
    char.Head.AlignPosition:Destroy()
    char.Head.AlignOrientation:Destroy()
    local function weldpart(part0, part1)
        local att0 = Instance.new("Attachment", part0)
        att0.Position = Vector3.new(0, -0.49, -0.01) --change the position to position it customly
        att0.Rotation = Vector3.new(0, 0, 0) --change the rotation to rotate it customly (mostly used for anims as i know)
        local att1 = Instance.new("Attachment", part1)
        att1.Position = Vector3.new(0,0,0)
        local AP = Instance.new("AlignPosition", part0)
        AP.Attachment0 = att0
        AP.Attachment1 = att1
        AP.RigidityEnabled = false
        AP.ReactionForceEnabled = false
        AP.ApplyAtCenterOfMass = false
        AP.MaxForce = 9999999
        AP.MaxVelocity = math.huge
        AP.Responsiveness = 2000
        local AO = Instance.new("AlignOrientation", part0)
        AO.Attachment0 = att0
        AO.Attachment1 = att1
        AO.ReactionTorqueEnabled = true
        AO.PrimaryAxisOnly = false
        AO.MaxTorque = 9999999
        AO.MaxAngularVelocity = math.huge
        AO.Responsiveness = 2000
    end
    
    weldpart(char.Head, nullware.Torso)
else
    neck.C0 = neck.C0 + Vector3.new(0,-1.001, 0.01)
    char.Head:FindFirstChildOfClass("Decal"):Destroy()
    char.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
    for i, v in pairs(nullware:GetChildren()) do
        if v:IsA('Accessory') then
            local handle = v.Handle
            if handle:FindFirstChild("HatAttachment") or handle:FindFirstChild("HairAttachment") or handle:FindFirstChild("FaceCenterAttachment") then
                local weld = v.Handle.AccessoryWeld
                weld.C0 = weld.C0 + Vector3.new(0,-1,0)
            end
        end
    end
    char.Head.AlignPosition:Destroy()
    char.Head.AlignOrientation:Destroy()
    local function weldpart(part0, part1)
        local att0 = Instance.new("Attachment", part0)
        att0.Position = Vector3.new(0, -0.19, -0.01) --change the position to position it customly
        att0.Rotation = Vector3.new(0, 0, 0) --change the rotation to rotate it customly (mostly used for anims as i know)
        local att1 = Instance.new("Attachment", part1)
        att1.Position = Vector3.new(0,0,0)
        local AP = Instance.new("AlignPosition", part0)
        AP.Attachment0 = att0
        AP.Attachment1 = att1
        AP.RigidityEnabled = false
        AP.ReactionForceEnabled = false
        AP.ApplyAtCenterOfMass = false
        AP.MaxForce = 9999999
        AP.MaxVelocity = math.huge
        AP.Responsiveness = 2000
        local AO = Instance.new("AlignOrientation", part0)
        AO.Attachment0 = att0
        AO.Attachment1 = att1
        AO.ReactionTorqueEnabled = true
        AO.PrimaryAxisOnly = false
        AO.MaxTorque = 9999999
        AO.MaxAngularVelocity = math.huge
        AO.Responsiveness = 2000
    end
    
    weldpart(char.Head, nullware.Torso)
end
wait(3)

local plr = game.Players.LocalPlayer
game:GetService("RunService").Stepped:Connect(function()
   setsimulationradius(9e9,9e9)
   plr.ReplicationFocus = workspace
   settings().Physics.AllowSleep = false
end)

local runservice=game:service"RunService";
local player=game:service"Players"["LocalPlayer"];
local character=player["Character"];
--character["Head"]:FindFirstChildOfClass"SpecialMesh":Destroy();

character["Humanoid"].HipHeight=-2;
character["Left Leg"]:BreakJoints();
character["Right Leg"]:BreakJoints();
character["Left Arm"]:BreakJoints();
character["Right Arm"]:BreakJoints();
while runservice["Heartbeat"]:Wait() do
    character["Left Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(1.5,0,-0);
    character["Right Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(-1.5,0,-0);
    character["Left Arm"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(-2.5,0,-0);
    character["Right Arm"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(2.5,0,-0);
end
