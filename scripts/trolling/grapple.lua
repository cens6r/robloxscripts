
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
    --[[for _,Parts in next, CloneChar:GetChildren() do
        if Parts:IsA("BasePart") then
            Parts.CanCollide = false 
        end 
    end]]
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

--3DG
--three dimensional grapples
function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

plr = game:service'Players'.LocalPlayer
plrgui = plr.PlayerGui
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
anim = char:findFirstChild("Animate")
if anim then
anim:Destroy()
end

local lal = Instance.new('Sound', head)
lal.SoundId = "rbxassetid://145048800"
lal.Volume = 1
lal:play()
game:service'Debris':AddItem(lal, 8)

local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = 'Right Shoulder'

local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = 'Left Shoulder'

local rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl

local llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)


local speed = 0.3
local angle = 0
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
neckc0 = neck.C0

model = Instance.new('Model', char)
model.Name = '3DG'
function Weld(part0,part1,c1,c0)
	local w = Instance.new('Weld', model)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0 or CFrame.new()
	w.C1 = c1 or CFrame.new()
end

local BasePart = Instance.new('Part')
BasePart.FormFactor = 'Custom'
BasePart.Material = 'Neon'
BasePart.CanCollide = false
BasePart.Locked = true
BasePart.TopSurface = 10
BasePart.BottomSurface = 10
BasePart.LeftSurface = 10
BasePart.RightSurface = 10
BasePart.FrontSurface = 10
BasePart.BackSurface = 10
BasePart:breakJoints()


for i = 1,2 do
	local strap = BasePart:clone()
	strap.Size = Vector3.new(1.025,.2,1.025)
	strap.Parent = model
	strap.BrickColor = BrickColor.new()
    strap:BreakJoints()
	Weld(strap, la, CFrame.new(0, .1 - i/3,0))
end

for i = 1,2 do
	local strap = BasePart:clone()
	strap.Size = Vector3.new(1.025,.2,1.025)
	strap.Parent = model
	strap.BrickColor = BrickColor.new()
    strap:BreakJoints()
	Weld(strap, ra, CFrame.new(0, .1 - i/3,0))
end

local ropeStart = BasePart:clone()
    ropeStart.Size = Vector3.new(.2,1.75,.2)
    ropeStart.Parent = model
    ropeStart.BrickColor = BrickColor.new()
    ropeStart:BreakJoints()
    Weld(ropeStart, ra, CFrame.new(-.45, -.5, 0))
local ropeStart2 = BasePart:clone()
    ropeStart2.Size = Vector3.new(.2,1.75,.2)
    ropeStart2.Parent = model
    ropeStart2.BrickColor = BrickColor.new()
    ropeStart2:BreakJoints()
    Weld(ropeStart2, la, CFrame.new(.45, -.5, 0))

    local ropeCont = BasePart:clone()
    ropeCont.Size = Vector3.new(.8,.2,.8)
    ropeCont.Parent = model
    ropeCont.BrickColor = BrickColor.new(199)
    ropeCont:BreakJoints()
    Instance.new('CylinderMesh', ropeCont)
    Weld(ropeCont, la, CFrame.new(.5, .05, 0), CFrame.Angles(math.pi/2, math.pi/2, 0))
local ropeCont2 = BasePart:clone()
    ropeCont2.Size = Vector3.new(.8,.2,.8)
    ropeCont2.Parent = model
    ropeCont2.BrickColor = BrickColor.new(199)
    ropeCont2:BreakJoints()
    Instance.new('CylinderMesh', ropeCont2)
    Weld(ropeCont2, ra, CFrame.new(-.5, .05, 0), CFrame.Angles(math.pi/2, math.pi/2, 0))

    local GasTank = BasePart:clone()
    GasTank.Size = Vector3.new(.8,1.4,.8)
    GasTank.Parent = model
    GasTank.BrickColor = BrickColor.new(194)
    GasTank:BreakJoints()
    Instance.new('SpecialMesh', GasTank)
    Weld(GasTank, ra, CFrame.new(0, -.25, .5))
local GasTank2 = BasePart:clone()
    GasTank2.Size = Vector3.new(.8,1.4,.8)
    GasTank2.Parent = model
    GasTank2.BrickColor = BrickColor.new(194)
    GasTank2:BreakJoints()
    Instance.new('SpecialMesh', GasTank2)
    Weld(GasTank2, la, CFrame.new(0, -.25, .5))

local pa = BasePart:clone()
pa.BrickColor = BrickColor.new()
pa.Anchored = true
pa.Size = Vector3.new(.5,1,.5)
local special = Instance.new('SpecialMesh', pa)
special.MeshId = "rbxassetid://1033714"
special.Scale = Vector3.new(.25,2,.25)
local ropePA = BasePart:clone()
ropePA.Parent = pa
ropePA.Anchored = true
ropePA.BrickColor = BrickColor.new'White'
Instance.new('CylinderMesh', ropePA).Scale = Vector3.new(.25,1,.25)

local pa2 = BasePart:clone()
pa2.BrickColor = BrickColor.new()
pa2.Anchored = true
pa2.Size = Vector3.new(.5,1,.5)
local special = Instance.new('SpecialMesh', pa2)
special.MeshId = "rbxassetid://1033714"
special.Scale = Vector3.new(.25,2,.25)
local ropePA2 = BasePart:clone()
ropePA2.Parent = pa2
ropePA2.Anchored = true
ropePA2.BrickColor = BrickColor.new'White'
Instance.new('CylinderMesh', ropePA2).Scale = Vector3.new(.25,1,.25)

local pa3 = BasePart:clone()
pa3.Transparency = 1
pa3.Anchored = true
pa3.Size = Vector3.new(2,2,2)

local torso3 = Instance.new('Part', char)
torso3.Name = 'FakeTorsoForStuff'
torso3.Size = torso.Size
torso3.Transparency = 1
torso3:breakJoints()
Weld(torso3, torso)

Instance.new('PointLight', torso)

local jumpmode

local SGui = Instance.new('ScreenGui', plr.PlayerGui)
local JumpButton = Instance.new('TextButton', SGui)
JumpButton.BackgroundColor = BrickColor.new('Dark stone grey')
JumpButton.BorderSizePixel = 4
JumpButton.TextColor3 = Color3.new(1,1,1)
JumpButton.BorderColor3 = Color3.new()
JumpButton.TextStrokeTransparency = .5
JumpButton.FontSize = 'Size12'
JumpButton.Text = 'Thrust up when grappled'
JumpButton.Size = UDim2.new(0, 250, 0, 50)
JumpButton.Position = UDim2.new(1, -250, 1, -50)
local OnOff = Instance.new('Frame', JumpButton)
OnOff.BackgroundColor3 = Color3.new()
OnOff.BorderSizePixel = 0
OnOff.Size = UDim2.new(.8, 0, 0, 5)
OnOff.Position = UDim2.new(.1, 0, 1, -10)
JumpButton.MouseButton1Down:connect(function()
    jumpmode = not jumpmode
    if jumpmode then
        OnOff.BackgroundColor3 = Color3.new(0,1,0)
    else
        OnOff.BackgroundColor3 = Color3.new()
    end
end)



local bodygyro = Instance.new('BodyGyro', torso)
    bodygyro.maxTorque = Vector3.new(14e16,14e16,14e16)
    bodygyro.P = 10000

        ro=Instance.new("RocketPropulsion",rootpart)
        ro.Name = 'RockatPropoolsun'
        ro.MaxSpeed=200
        ro.MaxThrust=8000
        ro.TurnP = 0
        ro.MaxTorque=Vector3.new(14e16,14e16,14e16)

        ro2=Instance.new("RocketPropulsion",torso)
        ro2.Name = 'RockatPropoolsun2'
        ro2.MaxSpeed=200
        ro2.MaxThrust=8000
        ro2.TurnP = 0
        ro2.MaxTorque=Vector3.new(14e16,14e16,14e16)
local run
mouse.KeyDown:connect(function(k)
    if k:byte() == 48 then
        run = not run
        if run then
            humanoid.WalkSpeed = 22
        else
            humanoid.WalkSpeed = 16
        end
    end
    if k:byte() == 32 then
        if Grapple1 or Grapple2 then
        wait()
        humanoid.PlatformStand = true
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
        if pa3.Parent ~= nil then
            ro3:Fire()
        end
        if Grapple1 then
            ro:Fire()
        end
        if Grapple2 then
            ro2:Fire()
        end
        end
    end
    if k=="q" then
        local sound = Instance.new('Sound', head)
        sound.SoundId = "rbxassetid://160248505"
        sound.Pitch = 3+math.random()/3
        sound.Volume = .8
        sound:play()
        game:service'Debris':AddItem(sound,4)
        lm.Parent = torso
        pa.CFrame = la.CFrame
            local grapplepos = pa.Position
            local grapplevelocity = (mouse.Hit.p - grapplepos).unit*50
            local lastgrapplepos = pa.Position 
            while wait() do
                lastgrapplepos = grapplepos 
                grapplepos = grapplepos + grapplevelocity
                local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
                local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
                if (torso.Position - pa.Position).magnitude > 900 then
                    pa.Parent = nil
                    break
                end
                pa.Anchored = true
                pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
                pa.Parent = char
                if hit then
                    local rotX,rotY,rotZ = pa.CFrame:toEulerAnglesXYZ()
                    local sound = Instance.new('Sound', head)
                    sound.SoundId = "rbxassetid://146466021"
                    sound.Pitch = 1.2+math.random()/3
                    sound.Volume = .25
                    sound:play()
                    game:service'Debris':AddItem(sound,4)
                    pa.Parent = char
                    pa.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
                    ro.Target=pa
                    lm.Parent = torso
                    local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
                    local hitz, enz = workspace:FindPartOnRay(ray, char)
                    local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    if pa.Parent ~= nil and humanoid.PlatformStand or not (hitz and hitz.CanCollide) then
                        ro:Fire()
                        if jumpmode then
                            humanoid.Jump = true
                        end
                    end
                    Gweld = Instance.new("Weld", char)
                    Gweld.C0 = hit.CFrame:toObjectSpace(pa.CFrame)
                    Gweld.Part0 = hit
                    Gweld.Part1 = pa
                    pa.Anchored = false
                    Grapple1Hit = hit
                    Grapple1 = true
                    break
                end
                pa.Anchored = true
                pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            end
    end
    if k=="e" then
        local sound = Instance.new('Sound', head)
        sound.SoundId = "rbxassetid://160248505"
        sound.Pitch = 3+math.random()/3
        sound.Volume = .8
        sound:play()
        game:service'Debris':AddItem(sound,4)
            pa2.CFrame = ra.CFrame
            rm.Parent = torso
            local grapplepos = pa2.Position
            local grapplevelocity = (mouse.Hit.p - grapplepos).unit*50
            local lastgrapplepos = pa2.Position 
            while wait() do
                lastgrapplepos = grapplepos 
                grapplepos = grapplepos + grapplevelocity
                local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
                local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
                if (torso.Position - pa2.Position).magnitude > 900 then
                    pa2.Parent = nil
                    break
                end
                pa2.Anchored = true
                pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
                pa2.Parent = char
                if hit then
                    local rotX,rotY,rotZ = pa2.CFrame:toEulerAnglesXYZ()
                    local sound = Instance.new('Sound', head)
                    sound.SoundId = "rbxassetid://146466021"
                    sound.Pitch = 1.2+math.random()/3
                    sound.Volume = .25
                    sound:play()
                    game:service'Debris':AddItem(sound,4)
                    pa2.Parent = char
                    pa2.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
                    ro2.Target=pa2
                    rm.Parent = torso
                    local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
                    local hitz, enz = workspace:FindPartOnRay(ray, char)
                    local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    if pa2.Parent ~= nil and humanoid.PlatformStand or not (hitz and hitz.CanCollide) then
                        if jumpmode then
                            humanoid.Jump = true
                        end
                        ro2:Fire()
                    end
                    Gweld2 = Instance.new("Weld", char)
                    Gweld2.C0 = hit.CFrame:toObjectSpace(pa2.CFrame)
                    Gweld2.Part0 = hit
                    Gweld2.Part1 = pa2
                    pa2.Anchored = false
                    Grapple2Hit = hit
                    Grapple2 = true
                    break
                end
                pa2.Anchored = true
                pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            end
    end
end)

mouse.KeyUp:connect(function(k)
    if k=="q" then
        pcall(function() Gweld:remove() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() pa.Parent = nil Grapple1 = false end)
        pcall(function() ro:Abort() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() ro2.Target=pa2 if Grapple2 and humanoid.PlatformStand or Grapple2 and not hitz then ro2:Fire() end end)
    elseif k=="e" then
        pcall(function() Gweld2:remove() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() pa2.Parent = nil Grapple2 = false end)
        pcall(function() ro2:Abort() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() ro.Target=pa if Grapple1 and humanoid.PlatformStand or Grapple1 and not hitz then ro:Fire() end end)
    end
end)


local MidPointUsed = false
local TorsoSmoke = Instance.new('Smoke', torso)


game:service'RunService'.RenderStepped:connect(function()
        angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        for i,object in pairs(char:children()) do
            if object:IsA("Tool") then
                tool = true
                if not debounce then
                for x,value in pairs(object:children()) do
                    if value:IsA("StringValue") and value.Name == "toolanim" and value.Value == "Slash" then
                        debounce = true
                        coroutine.wrap(function()
                        slashing = true
                        wait(.25)
                        slashing = false
                        debounce = false
                    end)()
                    value:Destroy()
                    end
                end
                end
            elseif not object:IsA'Tool' then
                tool = false
            end
        end
        if not humanoid.PlatformStand then
            if humanoid.Sit == true then
                speed = 0.2
                anglespeed = 1/4
                        ncf = neckc0 * CFrame.Angles(0, 0, 0)
                        rjcf = rootc0
                        rscf = rsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
                        lscf = lsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
                        rlcf = rlc0 * CFrame.Angles(math.pi/2+-math.rad(.2), 0, math.rad(.2))
                        llcf = llc0 * CFrame.Angles(math.pi/2+math.rad(.2), 0, -math.rad(.2))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                    anglespeed = 1/4
                        speed = 0.2
                        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
                        rjcf = rootc0
                        rscf = rsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
                        lscf = lsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
                        rlcf = rlc0 * CFrame.Angles(-math.rad(.2), 0, math.rad(.2))
                        llcf = llc0 * CFrame.Angles(math.rad(.2), 0, -math.rad(.2))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
                        anglespeed = 1.7
                        speed = 0.25
                        anglespeed = 2.2
                        speed = 0.25
                        ncf = neckc0 * CFrame.Angles(0, 0, 0)
                        rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.055, 0) * CFrame.Angles(-math.rad(1), 0, 0)
                        rscf = rsc0 * CFrame.Angles(math.sin(angle)*.5, 0, -math.rad(1))
                        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*.5, 0, math.rad(1))
                        rlcf = rlc0 * CFrame.new(0, .075 + -math.cos(-angle)*.075, math.sin(angle)*0.1) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
                        llcf = llc0 * CFrame.new(0, .075 - -math.cos(angle)*.075, -math.sin(angle)*0.1) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
                local RotVelocityZ = torso.RotVelocity.Y
                if RotVelocityZ >= 15 then
                    RotVelocityZ = 15
                elseif RotVelocityZ <= -15 then
                    RotVelocityZ = -15
                end
                    speed = 0.25
                    anglespeed = 2.7
                    ncf = neckc0 * CFrame.Angles(0, 0, -math.sin(angle)*.045)
                    rscf = rsc0 * CFrame.new(0, 0, -math.sin(angle)*0.125) * CFrame.Angles(math.pi/14+math.sin(angle)*1.5, 0, -math.sin(math.abs(angle))*0.3)
                    lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/14+math.sin(-angle)*1.5, 0, -math.sin(math.abs(angle))*0.3)
                    rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.175 - .2, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.055 + -math.pi/18, 0, math.rad(RotVelocityZ) + math.sin(angle)*.045)
                    rlcf = rlc0 * CFrame.new(0, .3 + -math.cos(-angle)*.3, -.2+math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
                    llcf = llc0 * CFrame.new(0, .3 - -math.cos(angle)*.3, -.05-math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
            end
            if tool then
                rscf = rsc0 * CFrame.Angles(math.pi/2, 0, 0)
                if slashing then
                    rscf = rsc0
                end
            end
        end
    if pa2.Parent == nil then
    rm.C0 = clerp(rm.C0,rscf,speed)
    end
    if pa.Parent == nil then
    lm.C0 = clerp(lm.C0,lscf,speed)
    end
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
end)



game:service'RunService'.RenderStepped:connect(function()
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 225 then
        TorsoSmoke.Enabled = true
    else
        TorsoSmoke.Enabled = false
    end
    local ray = Ray.new(rootpart.Position, Vector3.new(0, -7, 0))
    local hitz, enz = workspace:FindPartOnRay(ray, char)
    if hitz and hitz.CanCollide and pa.Parent ~= char and pa2.Parent ~= char then
        bodygyro.Parent = nil
        humanoid.PlatformStand = false
    end
    if pa.Parent ~= nil or Grapple1 then
        local size = (ropeStart2.Position-pa.Position).magnitude
            ropePA.Size = Vector3.new(.2, size, .2) 
            ropePA.CFrame = CFrame.new(ropeStart2.Position, pa.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
        lm.C0 = CFrame.new(Vector3.new(lsc0.x, lsc0.y, lsc0.z), torso.CFrame:pointToObjectSpace(pa.Position)) * CFrame.Angles(math.pi/2, 0, 0)
    else
        if not debounce and humanoid.PlatformStand then
            lm.C0 = lsc0 * CFrame.Angles(-.15, 0, -.15)
        end
    end
    if pa2.Parent ~= nil or Grapple2 then
        local size = (ropeStart.Position-pa2.Position).magnitude
            ropePA2.Size = Vector3.new(.2, size, .2) 
            ropePA2.CFrame = CFrame.new(ropeStart.Position, pa2.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
        rm.C0 = CFrame.new(Vector3.new(rsc0.x, rsc0.y, rsc0.z), torso.CFrame:pointToObjectSpace(pa2.Position)) * CFrame.Angles(math.pi/2, 0, 0)
    else
        if not debounce and humanoid.PlatformStand then
            rm.C0 = rsc0 * CFrame.Angles(-.15, 0, .15)
        end
    end
    if Grapple1 and Grapple1Hit.Parent == nil then
        pcall(function() Gweld:remove() end)
        pa.Parent = nil
        Grapple1 = false
        ro:Abort()
    end
    if Grapple2 and Grapple2Hit.Parent == nil then
        pcall(function() Gweld2:remove() end)
        pa2.Parent = nil
        Grapple2 = false
        ro2:Abort()
    end
    if Grapple1 and Grapple2 and (humanoid.PlatformStand or not hitz) then
        local distance = (pa.Position-pa2.Position).magnitude
        bodygyro.Parent = torso
        torso.CFrame = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        pa3.Parent = char
            if distance <= .5 then
                pa3.CFrame = pa.CFrame
            elseif distance > .5 then
                pa3.CFrame = CFrame.new(pa.Position, pa2.Position) * CFrame.new(0, 0, -distance/2)
            end
        if not MidPointUsed then
        ro3=Instance.new("RocketPropulsion",torso3)
        ro3.Name = 'RockatPropoolsun3'
        ro3.MaxSpeed=250
        ro3.MaxThrust=16000
        ro3.TurnP = 0
        ro3.TurnD = 0
        ro3.MaxTorque=Vector3.new(14e16,14e16,14e16)
        if humanoid.PlatformStand or not hitz then
            ro:Abort()
            ro2:Abort()
        end
            ro3.Target = pa3
            if humanoid.PlatformStand or not hitz then
                ro3:Fire()
            end
            MidPointUsed = true
        end
    elseif (not Grapple1 or not Grapple2) and MidPointUsed == true and (humanoid.PlatformStand or not hitz) then
        pa3.Parent = nil
        MidPointUsed = false
        ro3:Abort()
        ro3:Destroy()
        if Grapple1 then
            ro:Fire()
        end
        if Grapple2 then
            ro2:Fire()
        end
    end
    if not Grapple1 then
        pcall(function() Gweld:remove() end)
    end
    if not Grapple2 then
        pcall(function() Gweld2:remove() end)
    end
    if (Grapple1 or Grapple2) and not hitz then
        bodygyro.Parent = torso
        humanoid.PlatformStand = true
        rlegm.Parent = torso
        llegm.Parent = torso
        lm.Parent = torso
        rm.Parent = torso
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
    end
    if (Grapple1 or Grapple2) and not hitz or humanoid.PlatformStand then
        bodygyro.Parent = torso
        bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        rlegm.Parent = torso
        llegm.Parent = torso
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
    end
end)
