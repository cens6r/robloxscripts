--https://www.roblox.com/catalog/5154115297/Type-40-Juggernauts-Chain-Gun
--Keybinds
_G.UnReanimateKey = "q" --The keybind for unreanimating.
_G.ReanimateKey = "e" --The keybind for reanimating.
_G.R6ToggleKey = "r" --The keybind for toggling R15 to R6.
_G.GodmodeToggleKey = "t" --The keybind for toggling godmode.
--Options
_G.CharacterBug = false --Set to true if your uppertorso floats when you use godmode with R15.
_G.GodMode = true --Set to true if you want godmode.
_G.R6 = false --Set to true if you wanna enable R15 to R6 when your R15.
_G.FastLoading = true --Set to true if you want godmode to load faster.
_G.AutoReanimate = true --Set to true if you want to auto reanimate and disable keybinds after executing.

loadstring(game:HttpGet("https://paste.ee/r/e4oZ2/0"))()

repeat wait() until _G.MSG.Text == ""
wait(0.5)
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = game:GetService("Players").LocalPlayer.Character["NullwareReanim"]
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
Equipped = false
local running = false
local MOUSEPOS = RootPart.Position
local TIME = 0
local gun = false
local shooting = false
local sniper = false
local hammer = false

local mouseup = false
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character
local hrp = char.HumanoidRootPart
local hrp2 = hrp:Clone()

hrp2.Parent = char
hrp.Name = "hi"
hrp.Transparency = 0
hrp.Anchored = false
if hrp:FindFirstChildOfClass("AlignPosition") then
	hrp:FindFirstChildOfClass("AlignPosition"):Destroy()
end
if hrp:FindFirstChildOfClass("AlignOrientation") then
	hrp:FindFirstChildOfClass("AlignOrientation"):Destroy()
end
local bp = Instance.new("BodyPosition", hrp)
bp.Position = hrp.Position
bp.D = 9999999
bp.P = 999999999999999
bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
flinger = Instance.new("BodyAngularVelocity",hrp)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(10000,10000,10000)

spawn(function()
	while wait() do
		if shooting == false then
			bp.Position = game:GetService("Players").LocalPlayer.Character["NullwareReanim"].HumanoidRootPart.Position
		end
	end
end)

plr:GetMouse().Button1Down:Connect(function()
	repeat wait() until shooting == true
	repeat
		wait()
		bp.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
	until shooting == false
end)

coroutine.wrap(function()
	while true do
		wait()
		if not Character or not Character:FindFirstChild("Humanoid") or Character:FindFirstChild("Humanoid").Health <= 0 then
			HumanoidIsDead = true
			break
		end
	end
end)()

Theme = Instance.new("Sound", Character)
Theme.Volume = 10
Theme.Looped = true
Theme.TimePosition = 0
Theme.PlaybackSpeed = 1
Theme.Pitch = 1
Theme.SoundId = "rbxassetid://130761235"
Theme.Name = "cooltheme"
Theme:Play()

weld = function(parent, part0, part1, c0)
	local weld = it("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
    weld.C0 = c0
    return weld
end

function unanchor()
	if UNANCHOR == true then
		g = CharacterA:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end

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

Animation_Speed = 2
Frame_Speed = 0.016666666666666666
local FORCERESET = false
local MODE = 1
Frame_Speed = 1 / 80 -- (1 / 60) OR (1 / 80)
local Speed = 25
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local HOLD = false
local Rooted = false
local SINE = 0
local SIZE = 1
local UserInputService = game:GetService("UserInputService")
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character:FindFirstChild("Animate")
local UNANCHOR = true

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
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

function weld(parent,part1,part0,c0,c1)
local weld = Instance.new("Weld")
weld.Parent=parent
weld.Part1=part1
weld.Part0=part0
weld.C0=c0
weld.C1=c1
return weld
end


function theme(ID, timepos, pitch, vol)
	local kanz = kan
	kanz.PlaybackSpeed = pitch
	kanz.Pitch = pitch
	kanz.SoundId = ID
	kanz.Name = "wrecked"
	kanz.Looped = true
end

--weld

local chr = game:GetService("Players").LocalPlayer.Character["NullwareReanim"]
local yes = chr["Juggernaut's Chaingun"]

yes.Handle:FindFirstChild("AccessoryWeld"):Remove()

function weld(parent,part1,part0,c0,c1)
local weld = Instance.new("Weld")
weld.Parent=parent
weld.Part1=part1
weld.Part0=part0
weld.C0=c0
weld.C1=c1
return weld
end

local handleweld = yes.Handle
handleweld = weld(handleweld,chr["Right Arm"],handleweld,CFrame.new(0, 0, 0), CFrame.new(-2, -1, -.7) * CFrame.Angles(math.rad(-30), math.rad(70), math.rad(10)))

-- sprint

Humanoid.WalkSpeed = 10

Mouse.KeyDown:connect(function(key)
    if string.byte(key) == 50 then
        Humanoid.WalkSpeed = 58.82
    end
end)
Mouse.KeyUp:connect(function(key)
    if string.byte(key) == 50 then
        Humanoid.WalkSpeed = 10
    end
end)

function turnto(position)
	RootPart.CFrame = CFrame.new(RootPart.CFrame.p, Vector3.new(position.X, RootPart.Position.Y, position.Z)) * CFrame.new(0, 0, 0)
end

function Shoot()
    HOLD = true
        kan = Instance.new("Sound", Character)
        kan.Volume = 10
        kan.Looped = true
        kan.TimePosition = 0
        kan.PlaybackSpeed = 1
        kan.Pitch = 1
        kan.SoundId = "rbxassetid://3145784977"
        kan.Name = "bang"
        kan:Play()
        while HOLD == true do
        wait()
        turnto(Mouse.Hit.p)
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0.2 + 0.1 * COS(SINE / 35)) * ANGLES(RAD(8), RAD(0), RAD(-75)), 0.15 / Animation_Speed)
	    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.1 * SIN(SINE / 35), -.5) * ANGLES(RAD(20), RAD(10), RAD(-25 + 1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.1 * SIN(SINE / 35), 0) * ANGLES(RAD(110), RAD(-10), RAD(45 + -1 * COS(SINE / 35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.1 * COS(SINE / 35), 0) * ANGLES(RAD(0), RAD(86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.1 * COS(SINE / 35) , 0) * ANGLES(RAD(0), RAD(-86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        wait()
        turnto(Mouse.Hit.p)
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0.2 + 0.1 * COS(SINE / 35)) * ANGLES(RAD(8), RAD(0), RAD(-75)), 0.15 / Animation_Speed)
	    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(3, 0.4+ 0.1 * SIN(SINE / 35), -.5) * ANGLES(RAD(20), RAD(10), RAD(-25 + 1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-3, 0.4 + 0.1 * SIN(SINE / 35), 0) * ANGLES(RAD(110), RAD(-10), RAD(45 + -1 * COS(SINE / 35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.1 * COS(SINE / 35), 0) * ANGLES(RAD(0), RAD(86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.1 * COS(SINE / 35) , 0) * ANGLES(RAD(0), RAD(-86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
    end
end

function ShootReady()
    ATTACK = true
        Humanoid.WalkSpeed = 3
    while ATTACK == true do
    Swait()
        turnto(Mouse.Hit.p)
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0.2 + 0.1 * COS(SINE / 35)) * ANGLES(RAD(8), RAD(0), RAD(-75)), 0.15 / Animation_Speed)
	    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.1 * SIN(SINE / 35), -.5) * ANGLES(RAD(20), RAD(10), RAD(-25 + 1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.1 * SIN(SINE / 35), 0) * ANGLES(RAD(110), RAD(-10), RAD(45 + -1 * COS(SINE / 35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.1 * COS(SINE / 35), 0) * ANGLES(RAD(0), RAD(86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.1 * COS(SINE / 35) , 0) * ANGLES(RAD(0), RAD(-86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
    end
end

Mouse.KeyDown:connect(function(k)
    if k == "e" and ATTACK == false then
        ATTACK = true
        ShootReady()
    elseif k == "e" and ATTACK == true then
        Humanoid.WalkSpeed = 10
        ATTACK = false
        shooting = false
    end
end)

Mouse.Button1Down:connect(function()
    if ATTACK == true then
        shooting = true
        Shoot()
    end
end)

Mouse.Button1Up:connect(function()
    if ATTACK == true then
        kan:Destroy()
        HOLD = false
        shooting = false
    end
end)

--animations
while true do
	Swait()
	if Character:FindFirstChildOfClass("Humanoid") == nil then
		Humanoid = IT("Humanoid",Character)
	end
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	
local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
local TORSOVERTICALVELOCITY = RootPart.Velocity.y
local NameClan = 0
local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 5, Character)
local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	SINE = SINE + CHANGE
    if TORSOVELOCITY < 1 and ATTACK == false and Equipped == false and HITFLOOR ~= nil then
		ANIM = "Idle"
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0.2 + 0.1 * COS(SINE / 35)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.1 * SIN(SINE / 35), -.5) * ANGLES(RAD(10), RAD(-10), RAD(-25 + 1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.1 * SIN(SINE / 35), 0) * ANGLES(RAD(90), RAD(-10), RAD(15 + -1 * COS(SINE / 35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.1 * COS(SINE / 35), 0) * ANGLES(RAD(-10), RAD(86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.1 * COS(SINE / 35) , 0) * ANGLES(RAD(-10), RAD(-86), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            elseif TORSOVELOCITY < 25 and ATTACK == false and Equipped == false and HITFLOOR ~= nil then
		ANIM = "Walk"
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-.2 - .5 * COS(SINE / 24)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
	        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-.2 + .5 * COS(SINE / 24)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.1 * SIN(SINE / 35), -.5) * ANGLES(RAD(10), RAD(-10), RAD(-25 + 1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.1 * SIN(SINE / 35), 0) * ANGLES(RAD(90), RAD(-10), RAD(15 + -1 * COS(SINE / 35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			elseif TORSOVELOCITY > 25 and ATTACK == false and Equipped == false and HITFLOOR ~= nil then
			ANIM = "Sprint"
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(15 * COS(SINE / 7))), 0.15)
			RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(SINE / 7) / 2* 1, 0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
	        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(SINE / 7) / 2* 1, -0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.1 * SIN(SINE / 35), -.5) * ANGLES(RAD(10), RAD(-10), RAD(-25 + 1 * COS(SINE / 35)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.1 * SIN(SINE / 35), 0) * ANGLES(RAD(90), RAD(-10), RAD(15 + -1 * COS(SINE / 35))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
    end
end
unanchor()
