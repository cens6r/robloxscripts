--https://www.roblox.com/catalog/4435389917/Eltoria-RX750
--https://www.roblox.com/catalog/451220849/Lavender-Updo
--https://www.roblox.com/catalog/63690008/Pal-Hair
--https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
--https://www.roblox.com/catalog/48474313/Red-Roblox-Cap
			game:GetService("RunService").Heartbeat:Wait();
			settings().Physics.AllowSleep = false;
			game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.huge;
			setsimulationradius(math.huge);

loadstring(game:HttpGet("https://pastebin.com/raw/tUUGAeaH", true))()
 
local unanchoredparts = {}
local movers = {}
 local tog = true
 local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local mov = {};
local mov2 = {};

Character.Humanoid.HipHeight = 1.5
Character.Humanoid.WalkSpeed = 40

local pro = "HeliHat" --press f9 and find the hat that looks like a heads name and put it here
local x = 0   --Edit Position for head n +left and -Right
local y = 0   --Edit Position for head up and down
local z = 0 --Edit Position for head x3

local Hats = {base   = Character:WaitForChild("MeshPartAccessory"),
              wheel1   = Character:WaitForChild("Pal Hair"),
              wheel2 = Character:WaitForChild("LavanderHair"),
              wheel3 = Character:WaitForChild("Robloxclassicred"),
              wheel4 = Character:WaitForChild("Pink Hair"),
}

--Dont touch below

for i,v in next, Hats do
v.Handle.AccessoryWeld:Remove()
for _,mesh in next, v:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

local function align(i,v)
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,0,0)
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = true
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 100
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = false
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 50
end

--Dont touch above

align(Hats.base.Handle, Character["Torso"])
align(Hats.wheel1.Handle, Character["Torso"])
align(Hats.wheel2.Handle, Character["Torso"])
align(Hats.wheel3.Handle, Character["Torso"])
align(Hats.wheel4.Handle, Character["Torso"])
Hats.base.Handle.Attachment.Rotation = Vector3.new(0,0,0) 
Hats.wheel1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.wheel2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.wheel3.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.wheel4.Handle.Attachment.Rotation = Vector3.new(0,0,0)

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"

Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-2.0,0) --Position of the hats
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-2,-4.0,2)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(2,-4.0,2)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(2,-4.0,-2)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-2,-4.0,-2)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-2,-4.0,-2)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://179224234"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatSitACTIVE = false
    FloatSitACTIVE = not FloatSitACTIVE
    if FloatSitACTIVE then
        track:Play(.1, 1, 1)
        FloatSit.BackgroundColor3 = loc
    else
        track:Stop()
        FloatSit.BackgroundColor3 = col
    end
