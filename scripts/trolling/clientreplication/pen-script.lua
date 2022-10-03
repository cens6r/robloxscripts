
--[[ last updated: 2018/5/13, 15:30

Pen by oilsauce.]]

print("Pen Script by Oilsauce.")
print("Click: Stab")
print("E: Toggle Pen")
print("F: Throw Pen")

-----------------------------------------------------------------------------------

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character
local tweenserv = game:GetService("TweenService")
local lighting = game:GetService("Lighting")
local hum = char:FindFirstChildOfClass("Humanoid")
local mou = plr:GetMouse()
local tor = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
local root = char:FindFirstChild("HumanoidRootPart")
local head = char:FindFirstChild("Head")
local face = head:FindFirstChildOfClass("Decal")
local larm = char:FindFirstChild("Left Arm") or char:FindFirstChild("LeftUpperArm")
local rarm = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightUpperArm")
local rleg = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightUpperLeg")
local lleg = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftUpperLeg")
local neck = tor:FindFirstChild("Neck")
local rootj = root:FindFirstChild("RootJoint")
local LS = tor:FindFirstChild("Left Shoulder")
local RS = tor:FindFirstChild("Right Shoulder")
local LH = tor:FindFirstChild("Left Hip")
local RH = tor:FindFirstChild("Right Hip")
local bp = plr:FindFirstChild("Backpack")

hum:ClearAllChildren()
char.Animate:remove()


--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
ManualWeld3 = Instance.new("ManualWeld")
Part4 = Instance.new("Part")
ManualWeld5 = Instance.new("ManualWeld")
Part6 = Instance.new("Part")
ManualWeld7 = Instance.new("ManualWeld")
Part8 = Instance.new("Part")
ManualWeld9 = Instance.new("ManualWeld")
Part10 = Instance.new("Part")
ManualWeld11 = Instance.new("ManualWeld")
Part12 = Instance.new("Part")
ManualWeld13 = Instance.new("ManualWeld")
Model0.Name = "pen"
Model0.Parent = mas
Part1.Name = "handler2"
Part1.Parent = Model0
Part1.Material = Enum.Material.Glass
Part1.BrickColor = BrickColor.new("Really black")
Part1.Shape = Enum.PartType.Cylinder
Part1.Size = Vector3.new(0.099999927, 0.075000003, 0.075000003)
Part1.CFrame = CFrame.new(0.422837317, 4.01673937, 24.1206856, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part1.Position = Vector3.new(0.422837317, 4.01673937, 24.1206856)
Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part2.Name = "handler1"
Part2.Parent = Model0
Part2.Material = Enum.Material.Glass
Part2.BrickColor = BrickColor.new("Really black")
Part2.Shape = Enum.PartType.Cylinder
Part2.Size = Vector3.new(0.099999927, 0.100000001, 0.100000001)
Part2.CFrame = CFrame.new(0.356837302, 4.02223921, 24.1206856, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part2.Position = Vector3.new(0.356837302, 4.02223921, 24.1206856)
Part2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld3.Name = "Weld"
ManualWeld3.Parent = Part2
ManualWeld3.C1 = CFrame.new(-0.0660000145, 0.00549983978, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld3.Part0 = Part2
ManualWeld3.Part1 = Part1
Part4.Name = "body"
Part4.Parent = Model0
Part4.Material = Enum.Material.Glass
Part4.BrickColor = BrickColor.new("Really black")
Part4.Shape = Enum.PartType.Cylinder
Part4.Size = Vector3.new(1.27499998, 0.125, 0.125)
Part4.CFrame = CFrame.new(-0.320662677, 4.02673912, 24.1206856, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part4.Position = Vector3.new(-0.320662677, 4.02673912, 24.1206856)
Part4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld5.Name = "Weld"
ManualWeld5.Parent = Part4
ManualWeld5.C1 = CFrame.new(-0.743499994, 0.00999975204, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld5.Part0 = Part4
ManualWeld5.Part1 = Part1
Part6.Name = "clipholder"
Part6.Parent = Model0
Part6.Material = Enum.Material.Glass
Part6.BrickColor = BrickColor.new("Really black")
Part6.Shape = Enum.PartType.Cylinder
Part6.Size = Vector3.new(0.2, 0.150000006, 0.150000006)
Part6.CFrame = CFrame.new(-0.986662686, 4.02623892, 24.1206856, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part6.Position = Vector3.new(-0.986662686, 4.02623892, 24.1206856)
Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld7.Name = "Weld"
ManualWeld7.Parent = Part6
ManualWeld7.C1 = CFrame.new(-1.4095, 0.00949954987, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld7.Part0 = Part6
ManualWeld7.Part1 = Part1
Part8.Name = "clip"
Part8.Parent = Model0
Part8.Material = Enum.Material.Glass
Part8.BrickColor = BrickColor.new("Really black")
Part8.Size = Vector3.new(0.724999905, 0.0500000119, 0.100000001)
Part8.CFrame = CFrame.new(-0.663956106, 4.10453987, 24.1179676, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part8.Position = Vector3.new(-0.663956106, 4.10453987, 24.1179676)
Part8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld9.Name = "Weld"
ManualWeld9.Parent = Part8
ManualWeld9.C1 = CFrame.new(-1.08679342, 0.0878005028, -0.0027179718, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld9.Part0 = Part8
ManualWeld9.Part1 = Part1
Part10.Name = "button"
Part10.Parent = Model0
Part10.Material = Enum.Material.Glass
Part10.BrickColor = BrickColor.new("Dark indigo")
Part10.Shape = Enum.PartType.Cylinder
Part10.Size = Vector3.new(0.14, 0.125, 0.125)
Part10.CFrame = CFrame.new(-1.09316278, 4.02473927, 24.1206856, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Color = Color3.new(0.239216, 0.0823529, 0.521569)
Part10.Position = Vector3.new(-1.09316278, 4.02473927, 24.1206856)
Part10.Color = Color3.new(0.239216, 0.0823529, 0.521569)
ManualWeld11.Name = "Weld"
ManualWeld11.Parent = Part10
ManualWeld11.C1 = CFrame.new(-1.51600003, 0.007999897, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld11.Part0 = Part10
ManualWeld11.Part1 = Part1
Part12.Name = "sharp"
Part12.Parent = Model0
Part12.Material = Enum.Material.Glass
Part12.Shape = Enum.PartType.Cylinder
Part12.Size = Vector3.new(0.099999927, 0.0500000007, 0.0500000007)
Part12.CFrame = CFrame.new(0.484837323, 4.01723957, 24.1206856, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Position = Vector3.new(0.484837323, 4.01723957, 24.1206856)
ManualWeld13.Name = "Weld"
ManualWeld13.Parent = Part12
ManualWeld13.C1 = CFrame.new(0.0620000064, 0.000500202179, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld13.Part0 = Part12
ManualWeld13.Part1 = Part1
for i,v in pairs(mas:GetChildren()) do
	v.Parent = char
	pen = v
	body = Part4
	button = Part10
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

local rootj0 = rootj.C0
local neck0 = neck.C0
local LS0 = LS.C0
local RS0 = RS.C0
local LH0 = LH.C0
local RH0 = RH.C0
local rootj1 = rootj.C1
local neck1 = neck.C1
local LS1 = LS.C1
local RS1 = RS.C1
local LH1 = LH.C1
local RH1 = RH.C1

-----------------------------------------------------------------------------------

local CFn = CFrame.new
local CFa = CFrame.Angles
local Rad = math.rad
local Sin = math.sin
local Cos = math.cos
local sine = 1

local penp = Instance.new("Part", char)
penp.Size = Vector3.new(1, 1, 1)
penp.CanCollide = false
penp.Transparency = 1
local penpw = Instance.new("Weld", penp)
penpw.Part0 = rarm
penpw.Part1 = penp
penpw.C1 = CFn(0, -1, 0) * CFa(0, 0, Rad(180))
local penpw0 = penpw.C0
local penpw1 = penpw.C1

local penw = Instance.new("Weld", body)
penw.Name = "penWeld22"
penw.Part0 = penp
penw.Part1 = body
penw.C1 = CFa(0, 0, Rad(180))
local penw0 = penw.C0
local penw1 = penw.C1

local sharpw = ManualWeld13
local sharpw0 = ManualWeld13.C0
local sharpw1 = ManualWeld13.C1
local sharpw02 = CFn(0.3, 0, 0)
sharpw.C0 = sharpw02

local botw = ManualWeld11
local botw0 = ManualWeld11.C0
local botw1 = ManualWeld11.C1
local botw02 = CFn(-0.07, 0, 0)
botw.C0 = botw0

-----------------------------------------------------------------------------------

local ws = 16
local jp = 50
local out = false
local ouch = false
local hitok = false
local canattack = true
local stabstate = 1
local Stabbing = false
local Throwing = false
local rot = 1
local dmg = 5

-----------------------------------------------------------------------------------

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

function ToggleSharp()
	if not button:FindFirstChild("Penclickit360") then
		local clickso = Instance.new("Sound", button)
		clickso.SoundId = "rbxassetid://537744814"
		clickso.Name = "Penclickit360"
		clickso.Volume = 5
		clickso:Play()
	else
		local clickso = button:FindFirstChild("Penclickit360")
		clickso:Play()
	end
	if out == false then
		sharpw.C0 = sharpw0
		botw.C0 = botw02
		dmg = 30
		out = true
	else
		sharpw.C0 = sharpw02
		botw.C0 = botw0
		dmg = 5
		out = false
	end
end

function Stab()
	if stabstate == 1 and canattack == true then
		Stabbing = true
		canattack = false
		stabstate = 2
		hum.WalkSpeed = 3
		hum.JumpPower = 7
		hitok = true
		body.Touched:connect(function(hit)
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent:FindFirstChildOfClass("Humanoid") then
				hitok = false
				local owdude = hit.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				owhum.Health = owhum.Health - dmg
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				hitok = false
				local owdude = hit.Parent.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				owhum.Health = owhum.Health - dmg
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
		end)
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(-30), Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(150)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(20), Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(20)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		hitok = false
		hum.WalkSpeed = ws
		hum.JumpPower = jp
		canattack = true
		Stabbing = false
	elseif stabstate == 2 and canattack == true then
		canattack = false
		stabstate = 1
		hum.WalkSpeed = 3
		hum.JumpPower = 7
		hitok = true
		body.Touched:connect(function(hit)
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent:FindFirstChildOfClass("Humanoid") then
				local owdude = hit.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				owhum.Health = owhum.Health - dmg
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				hitok = false
				local owdude = hit.Parent.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				owhum.Health = owhum.Health - dmg
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
		end)
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(30), Rad(30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(150)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(-20), Rad(30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(20)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		hitok = false
		hum.WalkSpeed = ws
		hum.JumpPower = jp
		canattack = true
		Stabbing = false
	end
end

function Throw()
	if canattack == true then
		Throwing = true
		canattack = false
		hum.WalkSpeed = 3
		hum.JumpPower = 7
		ouch = true
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, 0, Rad(-90)), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, Rad(90), Rad(90)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		local throwpen = pen:Clone()
		for i,v in pairs(throwpen:GetChildren()) do
			if v:IsA("BasePart") and v.CanCollide == true then
				v.CanCollide = false
			end
		end
		throwpen.Parent = workspace
		local throwbod = throwpen:FindFirstChild("body")
		if throwbod:FindFirstChild("penWeld22") then
			throwbod:FindFirstChild("penWeld22"):Destroy()
		end
		local throwbv = Instance.new("BodyVelocity", throwbod)
		throwbv.Velocity = mou.Hit.lookVector * 100
		throwbv.MaxForce = Vector3.new(100000000000000000, 100000000000000000, 100000000000000000)
		throwbod.Touched:connect(function(hit)
			if ouch == true and not hit:IsDescendantOf(char) then
				ouch = false
				throwpen:Destroy()
				if hit.Parent:FindFirstChildOfClass("Humanoid") then
					local throwhum = hit.Parent:FindFirstChildOfClass("Humanoid")
					throwhum.Health = throwhum.Health - dmg
					if out == true then
						local bloodsound = Instance.new("Sound", hit)
						bloodsound.Volume = 10
						bloodsound.SoundId = "rbxassetid://180083286"
						bloodsound:Play()
						game:GetService("Debris"):AddItem(bloodsound, 1)
						local bloodsplash = Instance.new("ParticleEmitter", hit)
						bloodsplash.Lifetime = NumberRange.new(0.7, 1)
						bloodsplash.Speed = NumberRange.new(6)
						bloodsplash.SpreadAngle = Vector2.new(-360, 360)
						bloodsplash.Rate = 1000
						bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
						bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
						bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
						bloodsplash.Texture = "rbxassetid://771221224"
						game:GetService("Debris"):AddItem(bloodsplash, 1)
						wait(0.25)
						bloodsplash.Enabled = false
					end
				end
				if hit.Parent.Parent:FindFirstChildOfClass("Humanoid") then
					local throwhum = hit.Parent.Parent:FindFirstChildOfClass("Humanoid")
					throwhum.Health = throwhum.Health - dmg
					if out == true then
						local bloodsound = Instance.new("Sound", hit)
						bloodsound.Volume = 10
						bloodsound.SoundId = "rbxassetid://180083286"
						bloodsound:Play()
						game:GetService("Debris"):AddItem(bloodsound, 1)
						local bloodsplash = Instance.new("ParticleEmitter", hit)
						bloodsplash.Lifetime = NumberRange.new(0.7, 1)
						bloodsplash.Speed = NumberRange.new(6)
						bloodsplash.SpreadAngle = Vector2.new(-360, 360)
						bloodsplash.Rate = 1000
						bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
						bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
						bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
						bloodsplash.Texture = "rbxassetid://771221224"
						game:GetService("Debris"):AddItem(bloodsplash, 1)
						wait(0.25)
						bloodsplash.Enabled = false
					end
				end
			end
		end)
		for i,v in pairs(pen:GetChildren()) do
			if v:IsA("BasePart") then
				v.Transparency = 1
			end
		end
		for i = 0,1,.1 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, 0, Rad(-90)), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025) * CFa(Rad(-20), 0, 0), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), Rad(-20)), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), Rad(-20)), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, Rad(-80), Rad(90)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i = 0,1,.1 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, 0, Rad(-90)), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-30), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025) * CFa(0, 0, Rad(-30)), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(35), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(35), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFn(0, 0, -0.5) * CFa(0, Rad(90), Rad(30)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i,v in pairs(pen:GetChildren()) do
			if v:IsA("BasePart") then
				v.Transparency = 0
			end
		end
		hum.WalkSpeed = ws
		hum.JumpPower = jp
		canattack = true
		Throwing = false
	end
end

-----------------------------------------------------------------------------------

function kdown(k)
	if k == "e" then
		ToggleSharp()
	elseif k == "f" then
		Throw()
	end
end

mou.KeyDown:connect(kdown)
mou.Button1Down:connect(Stab)

-----------------------------------------------------------------------------------

while true do
	swait()
	sine = sine + 1
	rot = rot + 25
	if rot == 360 then
		rot = 1
	end
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	if Stabbing == true then
		state = "Stabbing"
	elseif Throwing == true then
		state = "Throwing"
	elseif 1 < root.Velocity.y then
		state = "Jump"
	elseif -1 > root.Velocity.y then
		state = "Fall"
	elseif torvel < 1 then
		state = "Idle"
	elseif tor.Velocity.magnitude < 50 then
		state = "Walk"
	end
	if state == "Jump" then
		penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(-15), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(10), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.2, 0) * CFa(Rad(2), 0, Rad(-15)), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.5, 0) * CFa(Rad(2), 0, Rad(15)), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFn(-0.2, 0, 0), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFn(0.5, 0, 0), 0.15)
	elseif state == "Fall" then
		penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(15), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(35), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(35), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.2, -0.2, -0.1) * CFa(Rad(15), 0, Rad(10)), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.2, -0.2, -0.1) * CFa(Rad(15), 0, Rad(-10)), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(-20)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(20)), 0.15)
	elseif state == "Idle" then
		penw.C1 = clerp(penw.C1, penw1 * CFn(0, 0, 0.5) * CFa(0, 0, Rad(rot)), 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2 * Cos(sine / 15)), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025 * Cos(sine / 15)), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(2), 0, Rad(-3 * Cos(sine / 15))), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025 * Cos(sine / 15), 0) * CFa(Rad(5), Rad(-5), 0), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025 * Cos(sine / 15), 0) * CFa(Rad(5), Rad(5), 0), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(80)), 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	elseif state == "Walk" then
		penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), 0.15)
		neck.C1 = clerp(neck.C1, neck1 *  CFa(Rad(-5), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0.1 * Cos(sine /3), 0.1 * Cos(sine /3)) * CFa(Rad(-5), 0, Rad(5 * Cos(sine / 6))), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(0, 0, Rad(-50 * Cos(sine / 6))), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(0, 0, Rad(-50 * Cos(sine / 6))), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(2), Rad(-5), Rad(50 * Cos(sine / 6))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(2), Rad(5), Rad(50 * Cos(sine / 6))), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	end
end
