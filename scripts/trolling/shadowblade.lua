function poop()
local s="ShadowBladeMasterAccessory"

-- https://www.roblox.com/catalog/4820152700/Shadow-Blademasters-Blade
-- Made By Ice & Fire0001

HumanDied = false
local CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end

if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
		game:GetService("RunService").RenderStepped:Connect(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
			sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)
		end)
	end)()
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local hatnameclone = {}
for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end
for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end
hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local fldr = Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "DMYF"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE
if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end
if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end
if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end
CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "non"
CloneChar.Humanoid.DisplayDistanceType = "None"

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
		local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
	end
end

local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
c.Name = "Mizt Hub Best"
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"

if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end
if DeadChar:FindFirstChild("Animate") then DeadChar:FindFirstChild("Animate"):Destroy() end

local Collider
function UnCollide()
	if HumanDied then Collider:Disconnect(); return end
	for _,Parts in next, CloneChar:GetChildren() do
		if Parts:IsA("BasePart") then
			Parts.CanCollide = false 
		end 
	end
	for _,Parts in next, DeadChar:GetChildren() do
		if Parts:IsA("BasePart") then
			Parts.CanCollide = false
		end 
	end 
end
Collider = game:GetService("RunService").Stepped:Connect(UnCollide)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	resetBindable:Destroy()
	HumanDied = true
	pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

coroutine.wrap(function()
	while true do
		game:GetService("RunService").RenderStepped:wait()
		if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
			HumanDied = true
			pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
			if resetBindable then
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
				resetBindable:Destroy()
			end
			break
		end		
	end
end)()


SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"])
SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"])
SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"])
SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"])
SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"])
SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])

for _,v in pairs(DeadChar:GetChildren()) do
	if v:IsA("BasePart") and v.Name ~= "Head" then
		--[[local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = CloneChar[v.Name].CFrame
			end
		end)()]]
	elseif v:IsA("BasePart") and v.Name == "Head" then
		local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)
			end
		end)()
	end
end

for _,BodyParts in next, CloneChar:GetDescendants() do
	if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
		BodyParts.Transparency = 1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
	end
end
if ANIMATIONHERE then ANIMATIONHERE.Parent = CloneChar end
local a = game.Players.LocalPlayer.Name
local char = game:GetService("Workspace")[a].DMYF.non
Instance.new("Attachment",char["Right Arm"])
Instance.new("Attachment",char[s].Handle)
Instance.new("AlignPosition",char[s].Handle)
Instance.new("AlignOrientation", char[s].Handle)
char[s].Handle.AccessoryWeld.Parent = nil
char[s].Handle.AlignPosition.Attachment0 = char[s].Handle.Attachment
char[s].Handle.AlignOrientation.Attachment0 = char[s].Handle.Attachment
char[s].Handle.AlignPosition.Attachment1 = char["Right Arm"].Attachment
char[s].Handle.AlignOrientation.Attachment1 = char["Right Arm"].Attachment
char[s].Handle.AlignPosition.Responsiveness = 2000
char[s].Handle.AlignOrientation.Responsiveness = 2000
char[s].Handle.Attachment.Orientation = Vector3.new(-40, 90, 0)
char[s].Handle.Attachment.Position = Vector3.new(1, 2.5, 0)
char[s].Handle.AlignPosition.RigidityEnabled = true
char[s].Handle.AlignOrientation.RigidityEnabled = true
local function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end
local speed = 0.2
local angle = 0
local anglespeed = 2
local armspeed = 0.2
local armangle = 0
local armanglespeed = 2
local legspeed = 0.2
local legangle = 0
local leganglespeed = 2
local idle = 0
local on = true
local damen = false
local enabled = true
local buff = false
local zenabled = 0
local xenabled = 0
local cenabled = 0
local venabled = 0
local eenabled = 0
local Debounce = {}
local TakeDamage = false
local combo = 1
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local Char = Player.Character
if Char:FindFirstChild("Shirt") ~= nil then
	Char.Shirt:Destroy()
	Instance.new("Shirt",Char).ShirtTemplate = "http://www.roblox.com/asset/?id=4609119"
end
if Char:FindFirstChild("Pants") ~= nil then
	Char.Pants:Destroy()
	Instance.new("Pants",Char).PantsTemplate = "http://www.roblox.com/asset/?id=4609244"
end
local Human = Char.Humanoid
Human.MaxHealth = 500
wait(0.1)
Human.Health = Human.MaxHealth
local Sounds = {"rbxassetid://588693156","rbxassetid://588693579","rbxassetid://588735023","rbxassetid://588737825","rbxassetid://163619849","rbxassetid://240517975","rbxassetid://233856154","rbxassetid://401057781","rbxassetid://401057825","rbxassetid://401057895","rbxassetid://199149186","rbxassetid://199149269"}
local Head = Char.Head
local LA = Char:findFirstChild("Left Arm")
local RA = Char:findFirstChild("Right Arm")
local LL = Char:findFirstChild("Left Leg")
local RL = Char:findFirstChild("Right Leg")
local T = Char:findFirstChild("Torso")
local LS = T:findFirstChild("Left Shoulder")
local RS = T:findFirstChild("Right Shoulder")
local LH = T:findFirstChild("Left Hip")
local RH = T:findFirstChild("Right Hip")
local Neck = T:findFirstChild("Neck")
local HM = Char:findFirstChild("HumanoidRootPart")
local RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
local WLS = Instance.new("Motor", T)
WLS.C0 = CFrame.new(-1.5, 0.5, 0)
WLS.C1 = CFrame.new(0, 0.5, 0)
WLS.Part0 = T
WLS.Part1 = LA
local WRS = Instance.new("Motor", T)
WRS.Part0 = T
WRS.Part1 = RA
WRS.C0 = CFrame.new(1.5, 0.5, 0)
WRS.C1 = CFrame.new(0, 0.5, 0)
local WLH = LH
local WRH = RH
local LSC0 = WLS.C0
local RSC0 = WRS.C0
local LHC0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local LHC1 = CFrame.new(-0.5, 1 ,0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local WRJ = RJ
local RJC0 = WRJ.C0
local RJC1 = WRJ.C1
local NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local Run = game:GetService("RunService")
local noweightprop = PhysicalProperties.new(0,0.3,0.5,0,0) --apply to parts you add by doing part.CustomPhysicalProperties = noweightprop
local Machete = Instance.new("Part",Char)
Machete.Transparency=1
Machete.CanCollide = false
Machete.Locked = true
Machete.TopSurface = 10
Machete.BottomSurface = 10
Machete.CustomPhysicalProperties = noweightprop
Machete.FormFactor = 3
Machete.Size = Vector3.new(0.5,2,0.5)
local MacheteMesh = Instance.new("SpecialMesh",Machete)
MacheteMesh.Scale = Vector3.new(1,0.5,0.4)
MacheteMesh.MeshId = "http://www.roblox.com/asset/?id=123248347"
MacheteMesh.TextureId = "http://www.roblox.com/asset/?id=123248449"
local MacheteWeld = Instance.new("Motor",Machete)
MacheteWeld.Part0 = RA
MacheteWeld.Part1 = Machete
MacheteWeld.C0 = CFrame.new(0,-1.15,-1.8) *CFrame.Angles(-math.pi/2,0,0)
local HW = MacheteWeld
local hc0 = HW.C0
local Mask = Instance.new("Part",Char)
Mask.CanCollide = false
Mask.Locked = true
Mask.TopSurface = 10
Mask.BottomSurface = 10
Mask.FormFactor = 3
Mask.Size = Vector3.new(1,1,1)
local MaskMesh = Instance.new("SpecialMesh",Mask)
MaskMesh.Scale = Vector3.new(0.125,0.125,0.125)
MaskMesh.MeshId = "http://www.roblox.com/asset/?id=5158270"
MaskMesh.TextureId = "http://www.roblox.com/asset/?id=5158267"
local MaskWeld = Instance.new("Weld",Head)
MaskWeld.Part0 = Head
MaskWeld.Part1 = Mask
MaskWeld.C0 = CFrame.new(0,0.075,-0.65) *CFrame.Angles(-math.pi/2,0,0)

Anim = Char:FindFirstChild("Animate")
if Anim ~= nil then
	Anim.Parent = nil
end
Animate = Human:FindFirstChild("Animator")
if Animate ~= nil then
	Animate.Parent = nil
end

local gui = Instance.new("ScreenGui",Player.PlayerGui)
local skill1 = Instance.new("TextLabel",gui)
skill1.Size = UDim2.new(0,150,0,50)
skill1.Position = UDim2.new(0.75,0,0.75,0)
skill1.Text = ""
skill1.TextWrapped = true
skill1.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill1text = Instance.new("TextLabel",gui)
skill1text.Size = UDim2.new(0,150,0,50)
skill1text.Position = UDim2.new(0.75,0,0.75,0)
skill1text.TextColor3 = Color3.new(1,1,1)
skill1text.BackgroundTransparency = 1
skill1text.Text = "[Z] \n Machete Toss"
skill1text.TextWrapped = true
skill1text.TextScaled = true
skill1text.Font = "Antique"
skill1text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill1img = Instance.new("ImageLabel",skill1)
skill1img.Size = UDim2.new(0,0,1,0)
skill1img.Image = "rbxassetid://48965808"
skill1img.BackgroundColor3 = BrickColor.new("Crimson").Color
local skill2 = Instance.new("TextLabel",gui)
skill2.Size = UDim2.new(0,150,0,50)
skill2.Position = UDim2.new(0.875,0,0.75,0)
skill2.Text = ""
skill2.TextWrapped = true
skill2.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill2text = Instance.new("TextLabel",gui)
skill2text.Size = UDim2.new(0,150,0,50)
skill2text.Position = UDim2.new(0.875,0,0.75,0)
skill2text.TextColor3 = Color3.new(1,1,1)
skill2text.BackgroundTransparency = 1
skill2text.Text = "[X] \n Machete Combo"
skill2text.TextWrapped = true
skill2text.TextScaled = true
skill2text.Font = "Antique"
skill2text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill2img = Instance.new("ImageLabel",skill2)
skill2img.Size = UDim2.new(0,0,1,0)
skill2img.Image = "rbxassetid://48965808"
skill2img.BackgroundColor3 = BrickColor.new("Crimson").Color
local skill3 = Instance.new("TextLabel",gui)
skill3.Size = UDim2.new(0,150,0,50)
skill3.Position = UDim2.new(0.75,0,0.85,0)
skill3.Text = ""
skill3.TextWrapped = true
skill3.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill3text = Instance.new("TextLabel",gui)
skill3text.Size = UDim2.new(0,150,0,50)
skill3text.Position = UDim2.new(0.75,0,0.85,0)
skill3text.TextColor3 = Color3.new(1,1,1)
skill3text.BackgroundTransparency = 1
skill3text.Text = "[C] \n Choke"
skill3text.TextWrapped = true
skill3text.TextScaled = true
skill3text.Font = "Antique"
skill3text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill3img = Instance.new("ImageLabel",skill3)
skill3img.Size = UDim2.new(0,0,1,0)
skill3img.Image = "rbxassetid://48965808"
skill3img.BackgroundColor3 = BrickColor.new("Crimson").Color
local skill4 = Instance.new("TextLabel",gui)
skill4.Size = UDim2.new(0,150,0,50)
skill4.Position = UDim2.new(0.875,0,0.85,0)
skill4.Text = ""
skill4.TextWrapped = true
skill4.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill4text = Instance.new("TextLabel",gui)
skill4text.Size = UDim2.new(0,150,0,50)
skill4text.Position = UDim2.new(0.875,0,0.85,0)
skill4text.TextColor3 = Color3.new(1,1,1)
skill4text.BackgroundTransparency = 1
skill4text.Text = "[V] \n Guts Spill"
skill4text.TextWrapped = true
skill4text.TextScaled = true
skill4text.Font = "Antique"
skill4text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill4img = Instance.new("ImageLabel",skill4)
skill4img.Size = UDim2.new(0,0,1,0)
skill4img.Image = "rbxassetid://48965808"
skill4img.BackgroundColor3 = BrickColor.new("Crimson").Color
local skill5 = Instance.new("TextLabel",gui)
skill5.Size = UDim2.new(0,150,0,50)
skill5.Position = UDim2.new(0.8125,0,0.65,0)
skill5.Text = ""
skill5.TextWrapped = true
skill5.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill5text = Instance.new("TextLabel",gui)
skill5text.Size = UDim2.new(0,150,0,50)
skill5text.Position = UDim2.new(0.8125,0,0.65,0)
skill5text.TextColor3 = Color3.new(1,1,1)
skill5text.BackgroundTransparency = 1
skill5text.Text = "[E] \n Killing Machine"
skill5text.TextWrapped = true
skill5text.TextScaled = true
skill5text.Font = "Antique"
skill5text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill5img = Instance.new("ImageLabel",skill5)
skill5img.Size = UDim2.new(0,0,1,0)
skill5img.Image = "rbxassetid://48965808"
skill5img.BackgroundColor3 = BrickColor.new("Crimson").Color

local Meshes={
	Blast="20329976",
	Crown="1323306",
	Ring="3270017",
	Claw="10681506",
	Crystal="9756362",
	Coil="9753878",
	Cloud="1095708",
	Skull="4770583",
	SpinyShell="1080954",
}

local function nooutlines(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

local function getmesh(mesh)
	return "rbxassetid://"..mesh
end

--[[
	Might look confusing, but it isn't really.
	
	Example:
	effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
--]]

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

local function Rwait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end

local function effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
	local p = Instance.new("Part", part or workspace)
	p.Anchored = true
	p.CanCollide = false
	p.FormFactor = Enum.FormFactor.Custom
	p.Material = "SmoothPlastic"
	p.CFrame = cframe
	p.BrickColor = brickcolor
	p.Size = Vector3.new(1,1,1)
	p.Transparency = trans
	nooutlines(p)
	local m = Instance.new("SpecialMesh",p)
	if meshtype ~= nil and meshid == nil then
		m.MeshType = meshtype
	end
	if meshtype == nil and meshid ~= nil then
		m.MeshId = getmesh(meshid)
	end
	m.Scale = size
	coroutine.wrap(function()
		for i = 0,loopwait,0.1 do
			p.CFrame = p.CFrame
			p.Transparency = p.Transparency +transincrement
			m.Scale = m.Scale + scaleby
			Rwait()
		end
		p:Destroy()
	end)()
	return p
end



local PlaySound = function(part,volume,pitch,id,looped)
	local Sound = Instance.new("Sound", part)
	Sound.SoundId = id
	Sound.Pitch = pitch
	Sound.Volume = volume
	coroutine.wrap(function()
		wait()
		Sound:Play()
		if looped == nil then
			game.Debris:AddItem(Sound,10)
		end
	end)()
	if looped == true then
		Sound.Looped = true
	end
	return Sound
end

local ShowDmg = function(totake)
	local modl = Instance.new("Model", workspace)
	modl.Name = tostring(totake)
	local prt = Instance.new("Part", modl)
	prt.CanCollide = false
	prt.BrickColor = BrickColor.Red()
	prt.Name = "Head"
	prt.CFrame = HM.CFrame *CFrame.new(0, 1.5, 0)
	prt.TopSurface = 0
	prt.BottomSurface = 0
	prt.FormFactor = 3
	prt.Size = Vector3.new(1, 0.2, 1)
	local bm = Instance.new("BlockMesh", prt)
	local hum = Instance.new("Humanoid", modl)
	hum.Health = 0
	hum.MaxHealth = 0
	hum.WalkSpeed = 0
	bodypos = Instance.new("BodyPosition", prt)
	bodypos.position = Head.Position +Vector3.new(0, 1, 0)
	bodypos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	game.Debris:AddItem(modl, 1)
	coroutine.resume(coroutine.create(function()
		for i = 1, 3 do
			bodypos.position = bodypos.position +Vector3.new(0, 0.5, 0)
			Rwait()
		end
	end))
end

local function ChargeAt(Strength)
	local BV = Instance.new("BodyVelocity",HM)
	BV.maxForce = Vector3.new(1e5,0,1e5)
	BV.velocity = HM.CFrame.lookVector *Strength
	game.Debris:AddItem(BV,0.1)
end

local function Damage(hit,mm,knockback,knockbackvelocity)
	if hit ~= nil and damen == true and hit.Parent ~= Char then
		local hum = GetHumanoid(hit.Parent)
		if hum ~= nil then
		    if TakeDamage == true then
		    	if buff == false then
		            hum:TakeDamage(mm)
				    spawn(function()
				   		ShowDmg(mm)
					end)
			elseif buff == true then
					hum:TakeDamage(mm*2)
				    spawn(function()
				   		ShowDmg(mm*2)
					end)
				end
	        elseif TakeDamage == false then
                if buff == false then
	                hum.Health = hum.Health - mm
	                spawn(function()
	                    ShowDmg(mm)
	                end)
	            elseif buff == true then
	            	hum.Health  = hum.Health - mm*2
	            	spawn(function()
	                    ShowDmg(mm)
	                end)
	            end
        	end
        	PlaySound(hum.Torso,1,1,Sounds[math.random(8,12)])
			if knockback ~= nil and knockback ~= 0 then
				if knockbackvelocity == nil then
					local v = Instance.new("BodyVelocity",hum.Torso)
					v.maxForce = Vector3.new(1e5,1e5,1e5)
					v.P = 1e20
					v.velocity = HM.CFrame.lookVector *knockback
					game.Debris:AddItem(v,0.3)
				else
					local v = Instance.new("BodyVelocity",hum.Torso)
					v.maxForce = Vector3.new(1e5,1e5,1e5)
					v.P = 1e20
					v.velocity = knockbackvelocity *knockback
					game.Debris:AddItem(v,0.3)
				end
			end
		end
		damen = false
	end
end

local function GetDistance(Obj,Mag)
    local Bodies = {}
	local hum
    for _,v in pairs(workspace:GetChildren()) do
        if v ~= Char then
			hum = GetHumanoid(v)
			if hum ~= nil and hum.Torso ~= nil then
				local Mag2 = (hum.Torso.Position - Obj.Position).magnitude
				if Mag2 < Mag then
					Bodies[#Bodies + 1] = v
				end
			end
		end
    end
    return Bodies,hum
end

--darkus stuff

function GetHumanoid(Character)
    
    assert(Character, 'bad argument #1 to Character (Model expected, got nil)')
    
    local hum
    
    if Character == Char then return end
    
    if Character.ClassName == "Hat" or Character.ClassName == "Accessory" then
    	for q,e in next, Character.Parent:children() do
	        if e:isA'Humanoid' then
	            hum = e
	        end
	        if e:isA'ForceField' then
	            return
	        end
    	end
    else
	    for q,e in next, Character:children() do
	        if e:isA'Humanoid' then
	            hum = e
	        end
	        if e:isA'ForceField' then
	            return
	        end
	    end
    end
return hum
end

function GetNear(Object, Distance)
    
    assert(Object, 'bad argument #1 to Object (Model expected, got nil)')
    
    local Distance = (Distance and Distance or 25)
    local rtn = {}
    
    for q,e in next, workspace:children() do
        local Hum = e:FindFirstChild'Humanoid'
        if Hum ~= nil then
        	Tor = Hum.Torso
    	end
        if Tor ~= nil then
            local dist = (Object.Position-Tor.Position).magnitude
            if dist <= Distance then
                rtn[#rtn+1] = e
            end
        end
    end
return rtn
end
    
local function DamageNear(Distance, Part, Damage, Knockback, DebounceTime, KnockbackVelocity)
    if damen == false then return end
    assert(Part, 'bad argument #2 to Part (Part expected, got nil)')
    assert(Part:isA'BasePart', ('bad argument #2 to Part (Part expected, got %s)'):format(Part.ClassName))
    
    if DebounceTime == 0 or DebounceTime == nil then
    	DebounceTime = 0.5
    end
    
    local Distance = (Distance and Distance or 25)
    local Noobs = GetNear(Part, Distance)
    
    for nild, Character in next, Noobs do
        
        local Human = GetHumanoid(Character)
        if Human and not Debounce[Character] then
            -- no clue why they were using spawn but ok...
            
            Debounce[Character] = true
            
            if TakeDamage then
            	if buff == false then
		            Human:TakeDamage(mm)
				    spawn(function()
				   		ShowDmg(mm)
					end)
			elseif buff == true then
					Human:TakeDamage(Damage)
				    spawn(function()
				   		ShowDmg(Damage*2)
					end)
				end
            else
		    	if buff == false then
		            Human.Health = Human.Health - Damage
				    spawn(function()
				   		ShowDmg(Damage)
					end)
			elseif buff == true then
					Human:TakeDamage(Damage*2)
				    spawn(function()
				   		ShowDmg(Damage*2)
					end)
				end
            end
            PlaySound(Human.Torso,1,1,Sounds[math.random(8,12)])
            if Knockback then
            	if KnockbackVelocity == nil then
	                local v = Instance.new("BodyVelocity", Human.Torso)
	                v.maxForce = Vector3.new(1e5,1e5,1e5)
	                v.P = 1e20
	                v.velocity = HM.CFrame.lookVector * Knockback
	                spawn(function()
	                    game:service'Debris':AddItem(v,0.3)
	                end)
	            else
	                local v = Instance.new("BodyVelocity", Human.Torso)
	                v.maxForce = Vector3.new(1e5,1e5,1e5)
	                v.P = 1e20
	                v.velocity = KnockbackVelocity * Knockback
	                spawn(function()
	                    game:service'Debris':AddItem(v,0.3)
	                end)
	            end
            end
            
            coroutine.wrap(function()--spawn(function()
                wait(DebounceTime)
                Debounce[Character] = nil
            end)()--end)
            
        end
    end
    
return
end
--

local function Slash1()
    for i = 1,11 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.05,0,math.pi/10),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.05+math.cos(legangle)*0.5,-0.3*math.cos(legangle),0) *CFrame.Angles(0,0,math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.05+math.cos(legangle)*0.5,0.3*math.cos(legangle),0) *CFrame.Angles(0,0,-math.rad(10)+math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Machete,1,0.6,Sounds[1])
	for i = 1,14 do
		DamageNear(4,Machete,math.random(7,14),5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/20,0,-math.pi/10),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.05+math.cos(legangle)*0.5,-0.3*math.cos(legangle),0) *CFrame.Angles(0,0,math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.05+math.cos(legangle)*0.5,0.3*math.cos(legangle),0) *CFrame.Angles(0,0,-math.rad(10)+math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Kick2()
	local walkspeed = Human.WalkSpeed
    Human.WalkSpeed = 0
    for i = 1,11 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/10,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.3,0.5,0) *CFrame.Angles(0,0,math.pi/10),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(-math.pi/8,0,0),speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		Rwait()
	end
	damen = true
	PlaySound(Machete,1,0.6,"rbxassetid://200632211")
	ChargeAt(50)
	for i = 1,10 do
		DamageNear(3,RL,math.random(7,14),15)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/10,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.3,0,0) *CFrame.Angles(0,0,math.pi/2),legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0,speed)
		lerp(HW,HW.C0,hc0,speed)
		Rwait()
	end
	Human.WalkSpeed = walkspeed
	damen = false
end

local function BackSlash3()
	local walkspeed = Human.WalkSpeed
    for i = 1,11 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/5,math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/1.005),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.05+math.cos(legangle)*0.5,-0.3*math.cos(legangle),0) *CFrame.Angles(0,0,math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.05+math.cos(legangle)*0.5,0.3*math.cos(legangle),0) *CFrame.Angles(0,0,-math.rad(10)+math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Machete,1,0.8,Sounds[1])
	ChargeAt(45)
	Human.WalkSpeed = 0
	for i = 1,14 do
		DamageNear(4,Machete,math.random(7,14),5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/6,0,0),armspeed*1.5)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/30,math.pi/2),armspeed*1.5)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/8),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.3,0,0),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed*1.5)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed*1.5)
		lerp(HW,HW.C0,hc0,speed*1.5)
		Rwait()
	end
	Human.WalkSpeed = walkspeed
	damen = false
end

local function MacheteToss()
	damen = true
	local walkspeed = Human.WalkSpeed
	Human.WalkSpeed = 0
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-1) *CFrame.Angles(math.pi/1.4,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-1) *CFrame.Angles(math.pi/1.4,0,-math.pi/4),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2) *CFrame.Angles(-math.pi/7.5,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/10,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		Rwait()
	end
	HW.Part0 = HM
	HW.C0 = CFrame.new()
	for i = 1,40 do
		
		if i % 4 == 0 then
			PlaySound(Machete,1,0.75,Sounds[2])
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-1) *CFrame.Angles(math.pi/2,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-1) *CFrame.Angles(math.pi/2,0,-math.pi/4),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2) *CFrame.Angles(math.pi/7.5,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/10,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,1+i,0) *CFrame.Angles(-i,0,0),speed)
		Rwait()
	end
	for i = 40,0,-1 do
		DamageNear(4,Machete,math.random(7,14),15)
		if i % 4 == 0 then
			PlaySound(Machete,1,0.75,Sounds[2])
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-1) *CFrame.Angles(math.pi/2,0,math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-1) *CFrame.Angles(math.pi/2,0,-math.pi/4),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2) *CFrame.Angles(math.pi/7.5,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/10,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,1+i,0) *CFrame.Angles(-i,0,0),speed)
		Rwait()
	end
	HW.Part0 = RA
	HW.C0 = hc0
	Human.WalkSpeed = walkspeed
	damen = false
end

local function KillingMachine()
	PlaySound(Head,1,0.8,Sounds[3])
	local walkspeed = Human.WalkSpeed
	Human.WalkSpeed = 0
	buff = true
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/2),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/8,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		Rwait()
	end
	local bufffire = Instance.new("Fire",HM)
	bufffire.Color = BrickColor.new("New Yeller").Color
	bufffire.Size = 10
	Human.WalkSpeed = walkspeed
	spawn(function()
		Rwait(1000)
		buff = false
		bufffire:Destroy()
		effect(HM,BrickColor.new("Black"),Vector3.new(4,4,4),HM.CFrame,0,0.1,Vector3.new(-0.1,-0.1,-0.1),3,nil,"Sphere")
		PlaySound(Head,1,0.7,Sounds[4])
	end)
end

local choking = false

local function Choke(hit)
	choking = true
	local beforeprop = hit.Parent.Humanoid.Torso.CustomPhysicalProperties
	for i = 1,40 do
		for i,v in pairs(hit.Parent:GetChildren()) do
			if v.ClassName == "Part" then
				v.CustomPhysicalProperties = noweightprop
			end
		end
		hit.Parent.Humanoid.PlatformStand = true
		hit.Parent.Humanoid:ChangeState(1)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.1,0,-math.pi/3),armspeed/2)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/5),armspeed/2)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/2),speed/2)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed/2)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.05+math.cos(legangle)*0.5,-0.3*math.cos(legangle),0) *CFrame.Angles(0,0,math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.05+math.cos(legangle)*0.5,0.3*math.cos(legangle),0) *CFrame.Angles(0,0,-math.rad(10)+math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	for i = 1,30 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2.4,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/2.4),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/2.4),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.6) *CFrame.Angles(math.pi/2.4,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.05+math.cos(legangle)*0.5,-0.3*math.cos(legangle),0) *CFrame.Angles(0,0,math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.05+math.cos(legangle)*0.5,0.3*math.cos(legangle),0) *CFrame.Angles(0,0,-math.rad(10)+math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	Human:ChangeState(2)
	for i,v in pairs(hit.Parent:GetChildren()) do
		if v.ClassName == "Part" then
			v.CustomPhysicalProperties = beforeprop
		end
	end
	Damage(hit,math.random(18,28))
	hit.Parent.Humanoid.PlatformStand = false
	grabweld:Destroy()
	local ok = effect(hit.Parent.Torso,BrickColor.White(),Vector3.new(),hit.Parent.Torso.CFrame *CFrame.Angles(-math.pi/2,0,0),0,0.1,Vector3.new(1,1,1),3,Meshes.Blast,nil)
	PlaySound(ok,1,0.6,"rbxassetid://174295284")
	choking = false
	damen = false
	enabled = true
end

local function GrabChoke()
	damen = true
	PlaySound(Claw,1,0.7,Sounds[2])
	local dmgbx = LA.Touched:connect(function(hit) if choking == false and hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid").Health >= 0 and hit.Parent:FindFirstChild("HumanoidRootPart") ~= nil then grabweld = Instance.new("Weld",T) grabweld.Part0 = LA grabweld.Part1 = hit.Parent.Torso grabweld.C0 = CFrame.new(0,-1.5,0) grabweld.C0 = grabweld.C0 *CFrame.Angles(-math.pi/2,math.pi,0) choking = true print(hit,grabweld,damen) Choke(hit) end end)
	for i = 1,100 do
		if choking == true then break end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0,legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 20 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.05+math.cos(legangle)*0.5,-0.3*math.cos(legangle),0) *CFrame.Angles(0,0,math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.05+math.cos(legangle)*0.5,0.3*math.cos(legangle),0) *CFrame.Angles(0,0,-math.rad(10)+math.sin(legangle)),legspeed)
		end
		Rwait()
	end
	if choking == false then
		damen = false
		enabled = true
	end
	dmgbx:disconnect()
end

local click = mouse.Button1Down:connect(function()
	if on == false then return end
	if enabled == false then return end
	if combo == 1 and enabled == true then
		enabled = false
		Slash1()
		enabled = true
		combo = 2
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 2 and enabled == true then
		enabled = false
		Kick2()
		enabled = true
		combo = 3
		coroutine.wrap(function()
			Rwait(400)
			if combo ~= 1 and enabled == true then
				combo = 1
			end
		end)()
	elseif combo == 3 and enabled == true then
		enabled = false
		BackSlash3()
		enabled = true
		combo = 1
    end
end)

local canlaugh = true

local keys = mouse.KeyDown:connect(function(key)
	key = key:lower()
	if enabled == false then return end
	if key == "q" and on == true and enabled == true then
		idle = 500
	end
	if key == "h" and on == true and enabled == true then
		if canlaugh == true then
			canlaugh = false
			PlaySound(Head,3,0.85,"rbxassetid://504011121")
			Rwait(300)
			canlaugh = true
		end
	end
	if key == "z" and on == true and enabled == true and zenabled == 1 then
		zenabled = 0
		enabled = false
		MacheteToss()
		enabled = true
	elseif key == "x" and on == true and enabled == true and xenabled == 1 then
		xenabled = 0
		enabled = false
		--MacheteCombo()
		enabled = true
	elseif key == "c" and on == true and enabled == true and cenabled == 1 then
		cenabled = 0
		enabled = false
		GrabChoke()
	elseif key == "v" and on == true and enabled == true and venabled == 1 then
		venabled = 0
		enabled = false
		--GutsSpill()
		enabled = true
	elseif key == "e" and on == true and enabled == true and eenabled == 1 then
		eenabled = 0
		enabled = false
		buff = true
		KillingMachine()
		enabled = true
	elseif key == string.char(50) and enabled == true then
		Human.WalkSpeed = 32
	end
end)

local keys = mouse.KeyUp:connect(function(key)
	if key == string.char(50) and enabled == true then
		Human.WalkSpeed = 16
	end
end)

local function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end

while true do
	local surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Char)
	if zenabled < 1 then
		zenabled = zenabled +0.01 *0.25
	else
		zenabled = 1
	end
	if xenabled < 1 then
		xenabled = xenabled +0.01 *0.2
	else
		xenabled = 1
	end
	if cenabled < 1 then
		cenabled = cenabled +0.01 *0.15
	else
		cenabled = 1
	end
	if eenabled < 1 then
		eenabled = eenabled +0.01 *0.1
	else
		eenabled = 1
	end
	if venabled < 1 then
		venabled = venabled +0.01 *0.15
	else
		venabled = 1
	end
	if enabled == false then
		idle = 0
	end
	idle = idle +1
	skill1img:TweenSize(UDim2.new(zenabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill2img:TweenSize(UDim2.new(xenabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill3img:TweenSize(UDim2.new(cenabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill4img:TweenSize(UDim2.new(venabled,0,1,0), "Out","Quad",0.1,false,nil)
	skill5img:TweenSize(UDim2.new(eenabled,0,1,0), "Out","Quad",0.1,false,nil)
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil then
		    if idle < 500 then
    			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/10,0,-math.pi/10),armspeed)
    			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/8,math.pi/25),armspeed)
    			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2,0) *CFrame.Angles(-math.pi/30,0,math.pi/15),legspeed)
    			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.25,0.2,0),legspeed)
    			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2) *CFrame.Angles(0,0,-math.pi/10),speed)
    			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/10+math.sin(angle*0.25)*0.025,0,math.pi/10),speed)
    			lerp(HW,HW.C0,hc0,speed)
    		elseif idle >= 500 then
    			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/4,0,-math.pi/7),armspeed)
    			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/6,0,math.pi/7),armspeed)
    			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.2,0) *CFrame.Angles(-math.pi/30,0,math.pi/15),legspeed)
    			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.25,0.2,0),legspeed)
    			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2),speed)
    			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.cos(angle*0.125/2)*0.25,0,math.sin(angle*0.125/2)),speed)
    			lerp(HW,HW.C0,hc0 *CFrame.new(0,-0.9,1.7) *CFrame.Angles(math.pi/2.5,0,0),speed)
            end
		end
		if action == "Walk" and enabled == true and surface ~= nil then
		    idle = 0
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.sin(armangle),0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,-math.pi/3,math.pi/9),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0.1,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.1,0.2-math.cos(legangle)*0.05,0) *CFrame.Angles(0,0,math.asin(math.cos(legangle*0.75))),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.2),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/10+math.sin(angle*0.25)*0.1,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
		end
		if action == "Run" and enabled == true and surface ~= nil then
		    idle = 0
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/4+math.sin(armangle)*1.25,0,0),armspeed*1.25)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,-math.pi/2.3,math.pi/9),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.05+math.cos(legangle)*0.5,-0.05*math.cos(legangle),0) *CFrame.Angles(0,0,math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.05+math.cos(legangle)*0.5,0.05*math.cos(legangle),0) *CFrame.Angles(0,0,-math.rad(10)+math.sin(legangle)),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,-0.1) *CFrame.Angles(math.pi/5,0,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/5+math.sin(angle*0.25)*0.1,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true and surface == nil then
			action = "Jump"
			idle = 0
    		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/10,0,-math.pi/10),armspeed*1.5)
    		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/8,math.pi/25),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/5,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0,speed*1.5)
			Rwait()
		elseif HM.Velocity.Y <= -5 and enabled == true and surface == nil then
			action = "Fall"
			idle = 0
    		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/10,0,-math.pi/10),armspeed*1.5)
    		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/8,math.pi/25),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.15,0) *CFrame.Angles(0,0,-math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/5,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0,speed*1.5)
			Rwait()
		end
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude <= 2 then
			action = "Idle"
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 20 then
			action = "Walk"
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 20 then
			action = "Run"
		end
	end
	Rwait()
end
end
wait(0.5)
poop()
while wait() do
for i, player in ipairs(game.Players:GetChildren()) do
   --Make sure the character exists and its torso exists
   if player.Character and player.Character:FindFirstChild("Torso") then
       --add an offset of 5 for each character
      player.Character.Humanoid.Health = 100
   end
wait(0.5)
end
end
