--[[ Options ]]--
_G.CharacterBug = false --Set to true if your uppertorso floats when you use the script with R15.
_G.GodMode = true --Set to true if you want godmode.
_G.R6 = true --Set to true if you wanna enable R15 to R6 when your R15.
--[[Reanimate]]--
loadstring(game:HttpGet("https://paste.ee/r/uk77k/0"))()
-----------------
repeat wait() until _G.MSG ~= nil
repeat wait() until _G.MSG.Text == ""
-----------------
--//====================================================\\--
--|| CREATED BY x0rs#4411
--\\====================================================//--
 
--Hat = https://web.roblox.com/catalog/5063578607/Cyberpunk-Sniper
 
local script = game:GetObjects("rbxassetid://5457832019")[1]
 
wait(0.2)
local shooting = false
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
while game:GetService("RunService").Heartbeat:Wait() do
if shooting == false then
bp.Position = game:GetService("Players").LocalPlayer.Character["NullwareReanim"].HumanoidRootPart.Position
end
end
end)
 
plr:GetMouse().Button1Down:Connect(function()
repeat wait() until shooting == true
repeat
game:GetService("RunService").Heartbeat:Wait()
if plr:GetMouse().Target ~= nil then
bp.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
end
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
--|| USEFUL VALUES
--\\=================================//
 
Animation_Speed = 3
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
 
Character.Humanoid.WalkSpeed = 19
 
kan = Instance.new("Sound", Character)
kan.Volume = 10
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1
kan.SoundId = "rbxassetid://415898123"
kan.Name = "coolmusicyes"
kan.Looped = true
kan:Play()
 
function theme(ID, timepos, pitch, vol)
local kanz = kan
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
end
 
--//=========================\\
--|| Cool Functions
--\\=========================//
 
function turnto(position)
RootPart.CFrame = CFrame.new(RootPart.CFrame.p, VT(position.X, RootPart.Position.Y, position.Z)) * CFrame.new(0, 0, 0)
end
 
function CreateSound(ID, PARENT, VOLUME, PITCH)
local NEWSOUND
coroutine.resume(coroutine.create(function()
NEWSOUND = SOUND:Clone()
NEWSOUND.Parent = PARENT
NEWSOUND.Volume = VOLUME
NEWSOUND.Pitch = PITCH
NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
NEWSOUND:play()
repeat
Swait()
until NEWSOUND.Playing == false
NEWSOUND:remove()
end))
return NEWSOUND
end
 
function CreateWave2(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
local wave = CreatePart(3, Effects, "Neon", 0, 0.5, COLOR, "Effect", VT(0,0,0))
local mesh = Instance.NEWSOUND("SpecialMesh",wave)
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = SIZE
wave.CFrame = CFRAME
coroutine.resume(coroutine.create(function(PART)
for i = 1, WAIT do
Swait()
mesh.Scale = mesh.Scale + GROW
wave.Color = C3(0,0,0)
if DOESROT == true then
wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
end
wave.Transparency = wave.Transparency + (0.5/WAIT)
if wave.Transparency > 0.99 then
wave:remove()
end
end
end))
end
 
function ShootoBulleto()
ATTACK = true
Rooted = false
for i = 0, 0.8, 0.1 / Animation_Speed do
Swait()
turnto(Mouse.Hit.p)
RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
end
repeat
for i = 0, 0.6, 0.1 / Animation_Speed do
Swait()
turnto(Mouse.Hit.p)
RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
end
kan = Instance.new("Sound", Character)
kan.Volume = 10
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1
kan.SoundId = "rbxassetid://130767489"
kan.Name = "bang"
kan:Play()
for i = 0, 0.3, 0.1 / Animation_Speed do
Swait()
RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
end
until KEYHOLD == false
ATTACK = false
Rooted = false
end
 
function weld(parent,part0,part1,c0,c1)
local weld=Instance.new("Weld")
weld.Parent=parent
weld.Part0=part0
weld.Part1=part1
weld.C0=c0
weld.C1=c1
return weld
end
 
if Character.Sniper.Handle["AccessoryWeld"] then
Character.Sniper.Handle["AccessoryWeld"]:Remove()
end
 
local mlok = Character.Sniper
 
handle=mlok.Handle
handleweld=weld(handle,Character["Torso"],handle,CFrame.new(0, 0, 0),CFrame.new(-1, 0, -.8)* CFrame.Angles(math.rad(0),math.rad(0),math.rad(-46)))
handleweld.Name = "muc"
 
function Equip()
Equipped = true
 
if mlok.Handle["muc"] then
mlok.Handle["muc"]:Remove()
end
 
local handle=mlok.Handle
handleweld=weld(mlok.Handle,Character["Right Arm"],handle,CFrame.new(0, 0, 0),CFrame.new(-2.2, -.81, 0)* CFrame.Angles(math.rad(90),math.rad(4),math.rad(95)))
handleweld.Name = "woah"
end
 
 
function DeEquip()
Equipped = false
 
if mlok.Handle["woah"] then
mlok.Handle["woah"]:Remove()
end
 
handle2=mlok.Handle
handleweld2=weld(handle2,Character["Torso"],handle2,CFrame.new(0, 0, 0),CFrame.new(-1, 0, -.8)* CFrame.Angles(math.rad(0),math.rad(0),math.rad(-46)))
handleweld2.Name = "muc"
end
 
--//=================================\\
--|| ASSIGN THINGS TO KEYS
--\\=================================//
 
Mouse.Button1Down:connect(function()
if Equipped == true and ATTACK == false then
shooting = true
ShootoBulleto()
shooting = false
end
end)
 
Mouse.KeyDown:connect(function(k)
if k == "f" and ATTACK == false and Equipped == false then
Equip()
shooting = false
end
end)
Mouse.KeyDown:connect(function(k)
if k == "g" and ATTACK == false and Equipped == true then
DeEquip()
shooting = false
end
end)
--//=================================\\
--|| WRAP THE WHOLE SCRIPT UP
--\\=================================//
 
Humanoid.Changed:connect(function(Jump)
if Jump == "Jump" and (Disable_Jump == true) then
Humanoid.Jump = false
end
end)
 
local CONNECT = nil
 
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
if ANIM == "Walk" and Equipped == false and TORSOVELOCITY > 1 then
RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.2 * COS(SINE / (WALKSPEEDVALUE))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 100, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 25), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1 - 0.5 * SIN(SINE / WALKSPEEDVALUE) - 0.5 * COS(SINE / WALKSPEEDVALUE*1), 0 * COS(SINE / WALKSPEEDVALUE) +0+ 0 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 100, RAD(0), RAD(110 * COS(SINE / WALKSPEEDVALUE))), 0.15 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1 + 0.5 * SIN(SINE / WALKSPEEDVALUE) - 0.5 * COS(SINE / WALKSPEEDVALUE*1), 0 * COS(SINE / WALKSPEEDVALUE) +0+ 0 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 100, RAD(0), RAD(110 * COS(SINE / WALKSPEEDVALUE))), 0.15 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
elseif (ANIM ~= "Walk") and Equipped == false or (TORSOVELOCITY < 1) then
RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
elseif ANIM == "Walk" and Equipped == true and TORSOVELOCITY > 1 then
RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.2 * COS(SINE / (WALKSPEEDVALUE))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 100, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 25), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1 - 0.5 * SIN(SINE / WALKSPEEDVALUE) - 0.5 * COS(SINE / WALKSPEEDVALUE*1), 0 * COS(SINE / WALKSPEEDVALUE) +0+ 0 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 100, RAD(0), RAD(110 * COS(SINE / WALKSPEEDVALUE))), 0.15 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1 + 0.5 * SIN(SINE / WALKSPEEDVALUE) - 0.5 * COS(SINE / WALKSPEEDVALUE*1), 0 * COS(SINE / WALKSPEEDVALUE) +0+ 0 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 100, RAD(0), RAD(110 * COS(SINE / WALKSPEEDVALUE))), 0.15 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
elseif Equipped == true and (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
end
if TORSOVERTICALVELOCITY > 1 and ATTACK == false and Equipped == false and HITFLOOR == nil then
ANIM = "Jump"
RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed) RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
elseif TORSOVERTICALVELOCITY > 1 and ATTACK == false and Equipped == true and HITFLOOR == nil then
ANIM = "Jump"
RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed) RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
elseif TORSOVERTICALVELOCITY < -1 and ATTACK == false and Equipped == false and HITFLOOR == nil then
ANIM = "Fall"
RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
elseif TORSOVERTICALVELOCITY < -1 and ATTACK == false and Equipped == true and HITFLOOR == nil then
ANIM = "Fall"
RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
elseif TORSOVELOCITY < 1 and ATTACK == false and Equipped == false and HITFLOOR ~= nil then
ANIM = "Idle"
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.6+ 0.1 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(-12), RAD(10 + 10 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6 + 0.1 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(-12), RAD(-10 + -10 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
elseif TORSOVELOCITY < 1 and ATTACK == false and Equipped == true and HITFLOOR ~= nil then
ANIM = "Idle"
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4+ 0.2 * SIN(SINE / 12), 0) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.4 + 0.2 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
elseif TORSOVELOCITY > 1 and Equipped == false and HITFLOOR ~= nil then
ANIM = "Walk"
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.03) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5))* RIGHTSHOULDERC0, 0.25 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
elseif TORSOVELOCITY > 1 and Equipped == true and HITFLOOR ~= nil then
ANIM = "Walk"
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.03) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
end
end
unanchor()
