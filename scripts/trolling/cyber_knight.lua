-- note from cens6r: found this labeled as flaming cube in utg, idk

print(
[[Cyber Knight
Keybinds:
T - Laugh
C - TP Kill
X - Fire Barrage
N - Change BG Song
]]
)

--Keybinds
_G.UnReanimateKey = "q" --The keybind for unreanimating.
_G.ReanimateKey = "e" --The keybind for reanimating.
_G.R6ToggleKey = "r" --The keybind for toggling R15 to R6.
_G.GodmodeToggleKey = "t" --The keybind for toggling godmode.
--Options
_G.GodMode = true --Set to true if you want godmode.
_G.R6 = true --Set to true if you wanna enable R15 to R6 when your R15.
_G.FastLoading = true --Set to true if you want godmode to load faster.
_G.AutoReanimate = true --Set to true if you want to auto reanimate and disable keybinds after executing.

loadstring(game:HttpGet("https://paste.ee/r/5K7Kc/0"))() -- archive : https://raw.githubusercontent.com/cens6r/robloxscripts/main/scripts/etc/for_cyber_night.lua

local script = game:GetObjects("rbxassetid://5902081139")[1]

workspace.FallenPartsDestroyHeight = -1000

local invpart = Instance.new("Part", game:GetService("Players").LocalPlayer.Character)
invpart.Anchored = true
invpart.Position = Vector3.new(0, -50, 0)
invpart.CanCollide = false
local InvAtt = Instance.new("Attachment", invpart)

local hat = game:GetService("Players").LocalPlayer.Character["fff_fox"]
hat.Handle:FindFirstChildOfClass("SpecialMesh"):Destroy()
hat.Handle.CustomAtt0:Destroy()
hat.Handle.CustomAtt1:Destroy()

local function weld(part0, part1)
    local attachment0 = Instance.new("Attachment", part0)
    if part0 == hat.Handle then
        attachment0.Rotation = Vector3.new(0, 0, 0) --Edit if u want custom rotationing
        attachment0.Position = Vector3.new(0, 0, 0) --Edit if u want custom positioning
    end
    local attachment1 = Instance.new("Attachment", part1)
    local weldpos = Instance.new("AlignPosition", part0)
    weldpos.Attachment0 = attachment0
    weldpos.Attachment1 = attachment1
    weldpos.RigidityEnabled = false
    weldpos.ReactionForceEnabled = false
    weldpos.ApplyAtCenterOfMass = false
    weldpos.MaxForce = 10000
    weldpos.MaxVelocity = 10000
    weldpos.Responsiveness = 10000
    local weldrot = Instance.new("AlignOrientation", part0)
    weldrot.Attachment0 = attachment0
    weldrot.Attachment1 = attachment1
    weldrot.ReactionTorqueEnabled = true
    weldrot.PrimaryAxisOnly = false
    weldrot.MaxTorque = 10000
    weldrot.MaxAngularVelocity = 10000
    weldrot.Responsiveness = 10000
end

local function invweld(part0)
    local attachment0 = Instance.new("Attachment", part0)
    local attachment1 = InvAtt
    local weldpos = Instance.new("AlignPosition", part0)
    weldpos.Enabled = false
    weldpos.Name = "InvPos"
    weldpos.Attachment0 = attachment0
    weldpos.Attachment1 = attachment1
    weldpos.RigidityEnabled = false
    weldpos.ReactionForceEnabled = false
    weldpos.ApplyAtCenterOfMass = false
    weldpos.MaxForce = 10000
    weldpos.MaxVelocity = 10000
    weldpos.Responsiveness = 10000
    local weldrot = Instance.new("AlignOrientation", part0)
    weldrot.Enabled = false
    weldrot.Name = "InvRot"
    weldrot.Attachment0 = attachment0
    weldrot.Attachment1 = attachment1
    weldrot.ReactionTorqueEnabled = true
    weldrot.PrimaryAxisOnly = false
    weldrot.MaxTorque = 10000
    weldrot.MaxAngularVelocity = 10000
    weldrot.Responsiveness = 10000
end

weld(hat.Handle, script.Armor.RightArmArmor.Fire)
invweld(hat.Handle)

local p = Instance.new("Part", game:GetService("Players").LocalPlayer.Character)
p.CanCollide = true
p.Transparency = 1
local w = Instance.new("Weld", p)
w.Part0 = p
w.Part1 = game:GetService("Players").LocalPlayer.Character.NullwareReanim.HumanoidRootPart
w.C0 = w.C0 + Vector3.new(0, 2.5, 0)

	local AHB = Instance.new("BindableEvent")
	
	local FPS = 30
	
	local TimeFrame = 0
	
	local LastFrame = tick()
	local Frame = 1/FPS
	
	game:service'RunService'.Heartbeat:connect(function(s,p)
		TimeFrame = TimeFrame + s
		if(TimeFrame >= Frame)then
			for i = 1,math.floor(TimeFrame/Frame) do
				AHB:Fire()
			end
			LastFrame=tick()
			TimeFrame=TimeFrame-Frame*math.floor(TimeFrame/Frame)
		end
	end)


	function swait(dur)
		if(dur == 0 or typeof(dur) ~= 'number')then
			AHB.Event:wait()
		else
			for i = 1, dur*FPS do
				AHB.Event:wait()
			end
		end
	end
	
-- converter by Drahazar
-- converted using Drahazar's Void SB Script Converter

--//====================================================\\--
--||		 CREATED BY HELKERN USING SHACK BASE
--\\====================================================//--

wait(0.2)

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = game:GetService("Players").LocalPlayer.Character["NullwareReanim"]
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Torso)

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local dist = 0
local part = Instance.new("Part", Character.Parent)
part.Anchored = true
part.Transparency = 1
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local ATTACKM = ""
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character.Parent)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
ANIMATOR:Destroy()
local UNANCHOR = true
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}

local hrpz = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

hrpz.Name = "HumanoidRootPart"
hrpz.Transparency = 0.5
hrpz.Anchored = false
if hrpz:FindFirstChildOfClass("AlignPosition") then
	hrpz:FindFirstChildOfClass("AlignPosition"):Destroy()
end
if hrpz:FindFirstChildOfClass("AlignOrientation") then
	hrpz:FindFirstChildOfClass("AlignOrientation"):Destroy()
end
local bp = Instance.new("BodyPosition", hrpz)
bp.Position = game:GetService("Players").LocalPlayer.Character.NullwareReanim.HumanoidRootPart.Position
bp.D = 9999999
bp.P = 999999999999999
bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
local flinger = Instance.new("BodyAngularVelocity",hrpz)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(10000,10000,10000)
spawn(function()
	while game:GetService("RunService").Heartbeat:Wait() do
		if ATTACK == false then
			bp.Position = game:GetService("Players").LocalPlayer.Character.NullwareReanim.HumanoidRootPart.Position
		else
			if ATTACKM == "tpkill" then
				local tar = game:GetService("Players").LocalPlayer:GetMouse().Target
				bp.Position = tar.Position
			elseif ATTACKM == "firebarrage" then
				part.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*dist*2
				bp.Position = part.Position
			end
		end
	end
end)

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent")
ArtificialHB.Name = "ArtificialHB"

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
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

--//=================================\\
--\\=================================//

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.EmitterSize = 5*VOLUME
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function WACKYEFFECT2(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local ISCHAOS = (Table.Chaos or false)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC"a", "Effect", VT(1,1,1), true)
		EFFECT.Color = COLOR
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if ISCHAOS == true then
				EFFECT.Color = BrickColor.Random().Color
				end
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end
	end))
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.Color = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end


function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end


function Gyro(PARENT)
	local GYRO = IT("BodyGyro",PARENT)
	GYRO.D = 750
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,40000000,0)
	return GYRO
end

function POSITION(PARENT)
	local grav = Instance.new("BodyPosition",PARENT)
	grav.D = 15
	grav.P = 20000
	grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	return grav
end

function FacialShadow()
	local SHADOWS = {}
	for i = 1, 16 do
		local FACE = CreatePart(3, Effects, "Fabric", 0, 0+(i-1)/16.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
		FACE.Color = C3(0,0,0)
		Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
		CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.35-(i-1)/25,0), CF(0, 0, 0))
		table.insert(SHADOWS,FACE)
	end
	local UNDO = function()
		for i = 1, #SHADOWS do
			SHADOWS[i]:remove()
		end
	end
	return UNDO
end

function GetRoot(MODEL,ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end

function CreateFlyingDebree(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", FLOOR.Reflectance, FLOOR.Transparency, "Peal", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end

function SHAKECAM(POSITION,RANGE,INTENSITY,TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						local CAMSHAKER = script.CamShake:Clone()
						CAMSHAKER.Shake.Value = INTENSITY
						CAMSHAKER.Timer.Value = TIME
						CAMSHAKER.Parent = CHILD
						CAMSHAKER.Disabled = false
					end
				end
			end
		end
	end
end

function CharacterFade(COLOR,TIMER)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c ~= RootPart and c ~= LeftL and c ~= LeftA and c ~= RightA and c ~= Helmet and c ~= TorsA and c ~= RightL then
				local FADER = c:Clone()
				FADER.Color = COLOR
				FADER.CFrame = c.CFrame
				FADER.Parent = FADE
				FADER.Anchored = true
				FADER.CanCollide = false
				FADER.Transparency = 0.25
				FADER:BreakJoints()
				FADER.Material = "Neon"
				FADER:ClearAllChildren()
				if FADER.Name == "Head" then
					FADER.Size = VT(1,1,1)
				end
			end
		end
		local TRANS = 0.75/TIMER
		for i = 1, TIMER do
			Swait()
			for _, c in pairs(FADE:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = c.Transparency + TRANS
				end
			end
		end
		FADE:remove()
	end))
end


--//=================================\\
--||	     WEAPON CREATION
--\\=================================//
local Armor = script.Armor
local Helmet = Armor.Helmet
Helmet.Parent = Character
for i,v in pairs(Helmet:GetChildren()) do
	v.Anchored = false
end
local HelmetWeld = CreateWeldOrSnapOrMotor("Weld",Head,Helmet.Main,Head,CF(0,0,0),CF(0,0,0))

local LeftA = Armor.LeftArmArmor
LeftA.Parent = Character
for i,v in pairs(LeftA:GetChildren()) do
	v.Anchored = false
end
local LeftAWeld = CreateWeldOrSnapOrMotor("Weld",LeftArm,LeftA.Main,LeftArm,CF(0,0,0),CF(0,0,0))

local LeftL = Armor.LeftLegArmor
LeftL.Parent = Character
for i,v in pairs(LeftL:GetChildren()) do
	v.Anchored = false
end
local LeftLWeld = CreateWeldOrSnapOrMotor("Weld",LeftLeg,LeftL.Main,LeftLeg,CF(0,0,0),CF(0,0,0))

local RightA = Armor.RightArmArmor
RightA.Parent = Character
for i,v in pairs(RightA:GetChildren()) do
	v.Anchored = false
end
local RightAWeld = CreateWeldOrSnapOrMotor("Weld",RightArm,RightA.Main,RightArm,CF(0,0,0),CF(0,0,0))

local RightL = Armor.RightLegArmor
RightL.Parent = Character
for i,v in pairs(RightL:GetChildren()) do
	v.Anchored = false
end
local RightLWeld = CreateWeldOrSnapOrMotor("Weld",RightLeg,RightL.Main,RightLeg,CF(0,0,0),CF(0,0,0))

local TorsA = Armor.TorsoArmor
TorsA.Parent = Character
for i,v in pairs(TorsA:GetChildren()) do
	v.Anchored = false
end
local TorsAWeld = CreateWeldOrSnapOrMotor("Weld",Torso,TorsA.Main,Torso,CF(0,0,0),CF(0,0,0))

local FireBall = RightA.Fire
local FlameA = FireBall.Flame
local FlameB = FireBall.Sparks
local FlameW = RightA.Main.FireWeld

for i,v in pairs(Character:GetChildren()) do
if v:IsA("Part") then
	v.Transparency = 1
end	
end

function EnableFire()
hat.Handle.AlignPosition.Enabled = true
hat.Handle.AlignOrientation.Enabled = true
hat.Handle.InvPos.Enabled = false
hat.Handle.InvRot.Enabled = false
FireBall.Transparency = 0
FlameA.Enabled = true
FlameB.Enabled = true	
end

function DisableFire()
hat.Handle.AlignPosition.Enabled = false
hat.Handle.AlignOrientation.Enabled = false
hat.Handle.InvPos.Enabled = true
hat.Handle.InvRot.Enabled = true
FireBall.Transparency = 1
FlameA.Enabled = false
FlameB.Enabled = false
end




--//=================================\\
--||			DAMAGING
--\\=================================//
function Kill(Char)
	local NewCharacter = IT("Model",Effects)
	NewCharacter.Name = "Lava"
	for _, c in pairs(Char:GetDescendants()) do
		if c:IsA("BasePart") and c.Transparency == 0 then
			c:BreakJoints()
			c.Material = "Neon"
			c.Color = Color3.fromRGB(255,85,0)
			coroutine.resume(coroutine.create(function()
			while wait() do
			c.Size = VT(c.Size.X - 0.01,c.Size.Y - 0.01,c.Size.Z - 0.01)
			end
			end))
			c.CanCollide = true
			c.Transparency = 0
			if c:FindFirstChildOfClass("SpecialMesh") then
				c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
			end
			if c.Name == "Head" then
				c:ClearAllChildren()
				c.Size = VT(c.Size.Y,c.Size.Y,c.Size.Y)
			end
			if c.ClassName == "MeshPart" then
				c.TextureID = ""
			end
			if c:FindFirstChildOfClass("BodyPosition") then
				c:FindFirstChildOfClass("BodyPosition"):remove()
			end
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter"):remove()
			end
			c.Parent = NewCharacter
			c.Name = "DeadPart"
			c.Velocity = VT(MRANDOM(-45,45),MRANDOM(-45,45),MRANDOM(-45,45))/15
			c.RotVelocity = VT(MRANDOM(-45,45),MRANDOM(-15,85),MRANDOM(-45,45))
		end
	end
	Char:remove()
	Debris:AddItem(NewCharacter,5)
	coroutine.resume(coroutine.create(function()
	wait(5)
	if game:GetService("Players"):GetPlayerFromCharacter(Char) then
	game:GetService("Players"):GetPlayerFromCharacter(Char):LoadCharacter()
	end
	end))
end

function ApplyDamage(Humanoid,Damage)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health < 2000 then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			Humanoid.Parent:BreakJoints()
		end
	else
		Humanoid.Parent:BreakJoints()
	end
end

function ApplyAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if INSTAKILL == true then
							Kill(CHILD)
						else
							local DMG = MRANDOM(MINDMG,MAXDMG)
							ApplyDamage(HUM,DMG)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//
SONG = 925278639

function Explodelol()
	ATTACK = true
	Rooted = true
	DisableFire()
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 3.7, Character)
	for i = 1,30 do
	swait()	
  	local Alpha = .2
	WACKYEFFECT2({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame * CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(-5,5), RotationY = MRANDOM(-5,5), RotationZ = MRANDOM(-5,5), Material = "Neon", Color = Color3.fromRGB(255,85,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,0)*ANGLES(RAD(-90),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.9,0.5,0)*ANGLES(RAD(-90),RAD(-78.7),RAD(-90)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.9,0.5,0)*ANGLES(RAD(-90),RAD(76.8),RAD(90)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,-0.1)*ANGLES(RAD(-80.8),RAD(0),RAD(180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,0.1)*ANGLES(RAD(0),RAD(-77.9),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,0.1,-0.8)*ANGLES(RAD(0),RAD(86.2),RAD(0)),Alpha)
	end
	WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0,.4,0), Size2 = VT(50,0,50), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(255,85,0), UseBoomerangMath = true ,SizeBoomerang = 15, SoundID = nil, SoundPitch = nil, SoundVolume = nil,Chaos = false})
	WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0,.4,0), Size2 = VT(50,0,50), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(239, 154, 35), UseBoomerangMath = true ,SizeBoomerang = 15, SoundID = nil, SoundPitch = nil, SoundVolume = nil,Chaos = false})
	WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(1,.4,1), Size2 = VT(35,50,35), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(255,85,0), UseBoomerangMath = true ,SizeBoomerang = 15, SoundID = nil, SoundPitch = nil, SoundVolume = nil,Chaos = false})
	WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0,.4,0), Size2 = VT(25,40,25), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(239, 154, 35), UseBoomerangMath = true ,SizeBoomerang = 15, SoundID = nil, SoundPitch = nil, SoundVolume = nil,Chaos = false})
	for i = 1,20 do
	swait()
	local Alpha = .7
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,-0.3)*ANGLES(RAD(-105),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.9,0.5,-0.1)*ANGLES(RAD(-90),RAD(-78.7),RAD(-76.3)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.9,0.4,-0.2)*ANGLES(RAD(-90),RAD(76.8),RAD(65.9)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,-0.1)*ANGLES(RAD(-78.4),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1.1,0.1)*ANGLES(RAD(15),RAD(-77.9),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,-0.8,-0.7)*ANGLES(RAD(15),RAD(86.2),RAD(0)),Alpha)
	end
	EnableFire()
	ATTACK = false
	Rooted = false
end

function FireBarrage()
	ATTACK = true
	ATTACKM = "firebarrage"
	dist = 0
	local Alpha = .14
	DisableFire()
	for i = 0,20 do
	swait()
	WACKYEFFECT2({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame * CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(-5,5), RotationY = MRANDOM(-5,5), RotationZ = MRANDOM(-5,5), Material = "Neon", Color = Color3.fromRGB(255,85,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
  	RootJoint.C0 = RootJoint.C0:lerp(CF(-0.2,0,0.4)*ANGLES(RAD(-90),RAD(0),RAD(131.6)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.5,-0.1)*ANGLES(RAD(-22.8),RAD(-78.1),RAD(-22.3)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,-0.2)*ANGLES(RAD(-171.6),RAD(53.9),RAD(-94.6)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90),RAD(0),RAD(-133.5)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-0.8,-1,0.3)*ANGLES(RAD(0),RAD(-27.1),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(0.9,-1,-0.2)*ANGLES(RAD(-180),RAD(86.8),RAD(-180)),Alpha)
	end
	coroutine.resume(coroutine.create(function()
	Swait(10)
	for i = 0,3 do
	swait()
	WACKYEFFECT2({EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(3,3,3), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame * CF(0,-2,0) * ANGLES(RAD(-180),RAD(0),RAD(0)), MoveToPos = nil, RotationX = nil, RotationY = MRANDOM(-5,5), RotationZ = nil, Material = "Neon", Color = Color3.fromRGB(255,255,255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
	end
	end))
	for i = 0,3 do
	swait()
	local hb = CreatePart(3,Effects,"Neon",0,1,"Flame orange","Hitb",VT(20,20,20),true)
	hb.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*dist*2
	WACKYEFFECT2({EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(3,3,3), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame * CF(0,-2,0) * ANGLES(RAD(-180),RAD(0),RAD(0)), MoveToPos = nil, RotationX = nil, RotationY = MRANDOM(-5,5), RotationZ = nil, Material = "Neon", Color = Color3.fromRGB(255,255,255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
	end
	for i = 0,3,0.1 do
	swait()
	Debris:AddItem(hb,0.2)
	local Alpha = .4
  	RootJoint.C0 = RootJoint.C0:lerp(CF(-0.2,0,0.5)*ANGLES(RAD(-97.2),RAD(0),RAD(-132.9)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.5,-0.1)*ANGLES(RAD(-22.8),RAD(-78.1),RAD(-22.3)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.9,0.5,-0.5)*ANGLES(RAD(1.5),RAD(49.5),RAD(100.4)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-86),RAD(-4.6),RAD(131.1)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-0.3,-1.1,0.2)*ANGLES(RAD(3.1),RAD(19.2),RAD(5.5)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(0.9,-0.9,0)*ANGLES(RAD(-1.7),RAD(51.3),RAD(8.4)),Alpha)
	dist = dist + 1
	WACKYEFFECT2({EffectType = "Box", Size = VT(0,0,0), Size2 = VT(1+dist/2,1+dist/2,1+dist/2), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame * CF(0,1,.1 * dist) + RootPart.CFrame.lookVector*dist*2, MoveToPos = nil, RotationX = MRANDOM(-5,5), RotationY = MRANDOM(-5,5), RotationZ = MRANDOM(-5,5), Material = "Neon", Color = Color3.fromRGB(255,85,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
	ATTACK = false
	EnableFire()
end

function laugh()
	ATTACK = true
	DisableFire()
	CreateSound(3724751315,RootPart,4,1,false)
	for i = 0,50 do
	swait()
	local Alpha = .4
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,0 + 0.07 * COS(SINE/6),0.2)*ANGLES(RAD(-83.4),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.5+ 0.1 * SIN(SINE/6),0)*ANGLES(RAD(-22.7),RAD(-78.1),RAD(-15.3)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5 + 0.1 * SIN(SINE/6),0)*ANGLES(RAD(-21.6),RAD(76.5),RAD(11.9)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,-0.1)*ANGLES(RAD(-72.4),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1- 0.07 * COS(SINE/6),-0.1)*ANGLES(RAD(-6.6),RAD(-75.6),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,-1- 0.07 * COS(SINE/6),0)*ANGLES(RAD(-6.6),RAD(75.7),RAD(0)),Alpha)
	end
	ATTACK = false
	EnableFire()
end

function song()
if SONG == 925278639 then
SONG = 701895896
elseif SONG == 701895896 then
SONG = 1768540477	
elseif SONG == 1768540477 then
SONG = 1227592267
elseif SONG == 1227592267 then	
SONG = 3704092097
elseif SONG == 3704092097 then
SONG = 871275016
elseif SONG == 871275016 then
SONG = 925278639		
end
end

function TpKill()
	ATTACK = true
	ATTACKM = "tpkill"
	if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and Mouse.Target ~= nil then
		DisableFire()
		local HUM = Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
		local TORSO = HUM.Parent:FindFirstChild("Torso") or HUM.Parent:FindFirstChild("UpperTorso")
		if TORSO then
		RootPart.CFrame = TORSO.CFrame + TORSO.CFrame.lookVector * -3
		CharacterFade(Color3.fromRGB(255,85,0),60)
		for i = 0,25 do 
		local Alpha = .1
		Swait()
  		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0,0)*ANGLES(RAD(-90),RAD(0),RAD(139.1)),Alpha)
  		LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.9,0.5,0.1)*ANGLES(RAD(0),RAD(-74.6),RAD(0)),Alpha)
  		RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.4,0.3)*ANGLES(RAD(178.9),RAD(59.9),RAD(-90)),Alpha)
  		Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90),RAD(0),RAD(-139.1)),Alpha)
  		LeftHip.C0 = LeftHip.C0:lerp(CF(-0.9,-1,0.2)*ANGLES(RAD(0),RAD(-64.7),RAD(0)),Alpha)
  		RightHip.C0 = RightHip.C0:lerp(CF(1,-1,0.1)*ANGLES(RAD(0),RAD(80.8),RAD(0)),Alpha)
		end
		wait(.5)
		for i = 0,30 do
		Swait()
		local Alpha = .1
  		RootJoint.C0 = RootJoint.C0:lerp(CF(-0.1,0,-0.1)*ANGLES(RAD(-90),RAD(0),RAD(-162.7)),Alpha)
  		LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.9,0.5,0.1)*ANGLES(RAD(0),RAD(-74.6),RAD(0)),Alpha)
  		RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.9,0.6,-0.1)*ANGLES(RAD(-1.1),RAD(69.7),RAD(126.7)),Alpha)
  		Neck.C0 =Neck.C0:lerp(CF(0.1,1,0)*ANGLES(RAD(-76.4),RAD(-4.2),RAD(163.2)),Alpha)
  		LeftHip.C0 = LeftHip.C0:lerp(CF(-0.9,-1,0.2)*ANGLES(RAD(0),RAD(-64.7),RAD(0)),Alpha)
  		RightHip.C0 = RightHip.C0:lerp(CF(1,-1,0.1)*ANGLES(RAD(0),RAD(80.8),RAD(0)),Alpha)	
		end
		Debris:AddItem(CORE,0.02)
		Debris:AddItem(GRAB,0.02)
		end
	end
	TPKILL = false
	ATTACK = false
	EnableFire()
end


--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "t" and ATTACK == false then
		laugh()
	end

	if Key == "c" and ATTACK == false then
		TpKill()
	end

	if Key == "x" and ATTACK == false then
		FireBarrage()
	end
	
	if Key == "n" then
		song()
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//

function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end

--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

while true do
	Swait()
	script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	Humanoid.DisplayDistanceType = "None"
	SINE = SINE + CHANGE*2
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS,NORMAL = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4+Humanoid.HipHeight, Character)
	local WALKSPEEDVALUE = 10 / (Humanoid.WalkSpeed / 16)
	FlameW.C0 = FlameW.C0:lerp(CF(0,-0.3 - 0.3 * SIN(SINE/50),0) * ANGLES(RAD(0),RAD(0),RAD(0)),.1)
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			local Alpha = .1
  			RootJoint.C0 = RootJoint.C0:lerp(CF(0,0 + 0.08 * COS(SINE/28),0)*ANGLES(RAD(-90 + 2 * COS(SINE/28)),RAD(0),RAD(-180)),Alpha)
  			LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.5 + 0.08 * SIN(SINE/28),-0.1)*ANGLES(RAD(-22.8 + 4 * COS(SINE/28)),RAD(-78.1 - 8 * COS(SINE/28)),RAD(-22.3 + 3 * SIN(SINE/28))),Alpha)
  			RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5 + 0.05 * SIN(SINE/28),-0.3)*ANGLES(RAD(-21.6 - 4 * COS(SINE/28)),RAD(76.5 + 8 * COS(SINE/28)),RAD(-175.5 - 2 * SIN(SINE/28))),Alpha)
  			Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90 + 3 * SIN(SINE/28)),RAD(0),RAD(-180)),Alpha)
  			LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1- 0.08 * COS(SINE/28),0)*ANGLES(RAD(0- 2 * COS(SINE/28)),RAD(-75.6),RAD(0)),Alpha)
  			RightHip.C0 = RightHip.C0:lerp(CF(1,-1- 0.08 * COS(SINE/28),0.1)*ANGLES(RAD(0- 2 * COS(SINE/28)),RAD(75.7),RAD(0)),Alpha)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			local Alpha = .1
  			RootJoint.C0 = RootJoint.C0:lerp(CF(0,0 -0.1 * COS(SINE/WALKSPEEDVALUE),-0.3-0.15*COS(SINE/WALKSPEEDVALUE))*ANGLES(RAD(-100),RAD(0),RAD(-180 - 0.75 *COS(SINE/WALKSPEEDVALUE))+ RootPart.RotVelocity.Y / 75),Alpha)
  			LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.5 + 0.08 * SIN(SINE/28),-0.1)*ANGLES(RAD(-30 + 40 * COS(SINE/WALKSPEEDVALUE)),RAD(-78.1),RAD(-22.3)),Alpha)
  			RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,-0.3)*ANGLES(RAD(-21.6),RAD(76.5),RAD(-175.5 )),Alpha)
  			Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90),RAD(0),RAD(-180)),Alpha)
  			LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-0.8 - 0.25 * COS(SINE/WALKSPEEDVALUE),0.4 * SIN(SINE/WALKSPEEDVALUE))*ANGLES(RAD(-10 - 22.5*SIN(SINE/WALKSPEEDVALUE)+ RootPart.RotVelocity.Y / 75),RAD(-90 ),RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0)),Alpha)
  			RightHip.C0 = RightHip.C0:lerp(CF(1,-0.8 + 0.25 * COS(SINE/WALKSPEEDVALUE),-0.4 * SIN(SINE/WALKSPEEDVALUE))*ANGLES(RAD(-10 + 22.5*SIN(SINE/WALKSPEEDVALUE))+ RootPart.RotVelocity.Y / -75,RAD(90),RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0)),Alpha)
		end
	end
	
		local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(5,10),6,0).p
		local SPHEREFLOOR,SPHEREPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -2, 0))).lookVector, 5, Character)
		if MRANDOM(1,4) == 1 then
		if HITFLOOR ~= nil then
		--WACKYEFFECT({Time = MRANDOM(5,15)*5, EffectType = "Sphere", Size = VT(0.7,1.3,0.7), Size2 = VT(0.7,1.3,0.7), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS+VT(0,0,0))*ANGLES(RAD(MRANDOM(0,0)),RAD(MRANDOM(-45,45)),RAD(MRANDOM(0,0))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(15,25)/1.2,0), MRANDOM(-25,25)/12, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.fromRGB(255,85,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
		Aura(9,MRANDOM(5,15)/35,"Add",RootPart.CFrame*CF(MRANDOM(-17,17),-5.5,MRANDOM(-17,17))*ANGLES(RAD(90 + MRANDOM(-13,13)),RAD(MRANDOM(-13,13)),RAD(MRANDOM(-13,13))),0.7,0.7,1.3,0,Color3.fromRGB(255,85,0),0, "Sphere")
		end
		end
	
	unanchor()
	Humanoid.MaxHealth = 1e4
	Humanoid.Health = 1e4
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	sick.SoundId = "rbxassetid://"..SONG
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 5
	sick.Playing = true
end

--//=================================\\
--\\=================================//

--701895896



--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
