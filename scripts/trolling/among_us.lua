--[[

[ Optional, Unless you wanna hide your head ]

Top Hat = 5231223671

]]

local say = "Made By thinH#6977 or thinh_exe on Roblox !!"
if not e then
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = say;
Font = Enum.Font.Cartoon;
Color = Color3.fromRGB(999, 999, 999);
FontSize = Enum.FontSize.Size10;   
})
end

_G.R6 = true
loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/fc29cbf0eda6f8b129778b441be3128f/raw/6StQ2n56PnEHMhQ9"))()

local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character.NullwareReanim
local Humanoid = Char.Humanoid
Humanoid.WalkSpeed = 20
Humanoid.JumpPower = 50
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = game.Players.LocalPlayer.Character.NullwareReanim
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
Character:WaitForChild("Humanoid").HipHeight = -0.3

lol = Instance.new("Sound", Torso)
lol.Volume = 3
lol.Name = "lol"
lol.Looped = true
lol.SoundId = "rbxassetid://6119798028"
lol:Play()

-------------------------------------------------------------------------

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
	if TORSOVERTICALVELOCITY > 1 and ATTACK == false and Equipped == false and HITFLOOR == nil then
		ANIM = "Jump"
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0 - 0 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
    elseif TORSOVERTICALVELOCITY < -1 and ATTACK == false and Equipped == false and HITFLOOR == nil then
		ANIM = "Fall"
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0 - 0 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0 * COS(SINE / 12) , -0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
    elseif TORSOVELOCITY < 1 and ATTACK == false and Equipped == false and HITFLOOR ~= nil then
		ANIM = "Idle"
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.60 -0.1 * COS(SINE / 12), -0.1) * ANGLES(RAD(0), RAD(90), RAD(-5)) * ANGLES(RAD(-5), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.60 -0.1 * COS(SINE / 12) , -0.1) * ANGLES(RAD(-0), RAD(-90), RAD(5)) * ANGLES(RAD(-5), RAD(10), RAD(0)), 0.15 / Animation_Speed)
    elseif TORSOVELOCITY > 1 and Equipped == false and HITFLOOR ~= nil then
		ANIM = "Walk"
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.55 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(-0 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.4, 0.5 + 0 * SIN(SINE / 12), 0.60) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-0), RAD(0 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.60 - 0 * COS(SINE / 7) / 2* 1, 0 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(0 - 50 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 0 * COS(SINE / 7)), RAD(0), RAD(0)), 0.5)
	        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.60 + 0 * COS(SINE / 7) / 2* 1, 0 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(0 + 50 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 0 * COS(SINE / 7)), RAD(0), RAD(0)), 0.5)
    end
end
