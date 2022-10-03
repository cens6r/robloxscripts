-- Created by Nebula_Zorua --
-- Dominus Empyreus --
-- Mere Mortals. --
-- You think you can stand a chance against PHAEDRA!? --
-- If you want to get to The Overlord, you'll have to go through me. --
-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA

warn([[
	Dominus Empyreus
		Mere Mortals
		You think you can stand a chance against PHAEDRA?
		If you want to get to the Overlord, you'll have to go through me.
		
		DOMINUS EMPYREUS.
]])

warn([[
	Nerfed version for showcasing
]])
wait(1/60)

--// Shortcut Variables \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {tRGB= function(c3) return c3.r*255,c3.g*255,c3.b*255 end,N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

--// Initializing \\--
local Plr = Plrs.LocalPlayer
local Char = Plr.Character
local Hum = Char:FindFirstChildOfClass'Humanoid'
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Root = Char:FindFirstChild'HumanoidRootPart'
local Torso = Char.Torso
local Head = Char.Head
local NeutralAnims = true
local Attack = false
local StillAura = false
local Debounces = {Debounces={}}
local Mouse = Plr:GetMouse()
local Hit = {}
local Sine = 0
local Change = 1
local BloodPuddles = {}

local Effects = IN("Folder",Char)
Effects.Name = "Effects"


--// Debounce System \\--


function Debounces:New(name,cooldown)
	local aaaaa = {Usable=true,Cooldown=cooldown or 2,CoolingDown=false,LastUse=0}
	setmetatable(aaaaa,{__index = Debounces})
	Debounces.Debounces[name] = aaaaa
	return aaaaa
end

function Debounces:Use(overrideUsable)
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.Usable or overrideUsable)then
		self.Usable = false
		self.CoolingDown = true
		local LastUse = time()
		self.LastUse = LastUse
		delay(self.Cooldown or 2,function()
			if(self.LastUse == LastUse)then
				self.CoolingDown = false
				self.Usable = true
			end
		end)
	end
end

function Debounces:Get(name)
	assert(typeof(name) == 'string',("bad argument #1 to 'get' (string expected, got %s)"):format(typeof(name) == nil and "no value" or typeof(name)))
	for i,v in next, Debounces.Debounces do
		if(i == name)then
			return v;
		end
	end
end

function Debounces:GetProgressPercentage()
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.CoolingDown and not self.Usable)then
		return math.max(
			math.floor(
				(
					(time()-self.LastUse)/self.Cooldown or 2
				)*100
			)
		)
	else
		return 100
	end
end

--// Instance Creation Functions \\--
local baseSound = IN("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or Torso
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part.Parent = parent or Char
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Parent = part0
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	return weld
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function Clone(instance,parent,properties)
	local inst = instance:Clone()
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = NewInstance("Part",Effects,{Transparency=1,CFrame=cf or Torso.CFrame,Anchored=true,CanCollide=false,Size=V3.N()})
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			soundPart:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent = soundPart
	return Sound
end


--// Extended ROBLOX tables \\--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})
--// Require stuff \\--

local oScript = script;
local script = Instance.new("LocalScript")
local chold = {}
for _,v in next, oScript:children() do
	v:Clone().Parent = script
	v:destroy()
end

function CamShake(who,times,intense,origin) 
	coroutine.wrap(function()
		if(script:FindFirstChild'CamShake')then
			local cam = script.CamShake:Clone()
			cam:WaitForChild'intensity'.Value = intense
			cam:WaitForChild'times'.Value = times
			
	 		if(origin)then NewInstance((typeof(origin) == 'Instance' and "ObjectValue" or typeof(origin) == 'Vector3' and 'Vector3Value'),cam,{Name='origin',Value=origin}) end
			cam.Parent = who
			wait()
			cam.Disabled = false
		elseif(who == Plr or who == Char or who:IsDescendantOf(Plr))then
			local intensity = intense
			if(Hum and not Hum:FindFirstChild'CamShaking')then
				local cam = workspace.CurrentCamera
				local oCO = Hum.CameraOffset
				local cs = Instance.new("BoolValue",Hum)
				cs.Name = "CamShaking"
				for i = 1, times do
					local camDistFromOrigin
					if(typeof(origin) == 'Instance' and origin:IsA'BasePart')then
						camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin.Position).magnitude )/25
					elseif(typeof(origin) == 'Vector3')then
						camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin).magnitude )/25
					end
					if(camDistFromOrigin)then
						intensity = math.min(intense, math.floor(intense/camDistFromOrigin))
					end
					--cam.CoordinateFrame = cam.CoordinateFrame*CFrame.fromEulerAnglesXYZ(math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200)
					if(Hum)then
						Hum.CameraOffset = Vector3.new(math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200)
					end
					swait()
				end
				if(Hum)then
					Hum.CameraOffset = oCO
				end
				cs:destroy()
			end
		end
	end)()
end


function CamShakeAll(times,intense,origin)
	for _,v in next, Plrs:players() do
		CamShake(v:FindFirstChildOfClass'PlayerGui' or v:FindFirstChildOfClass'Backpack' or v.Character,times,intense,origin)
	end
end

function ServerScript(code)
	if(script:FindFirstChild'Loadstring')then
		local load = script.Loadstring:Clone()
		load:WaitForChild'Sauce'.Value = code
		load.Disabled = false
		load.Parent = workspace
	elseif(NS and typeof(NS) == 'function')then
		NS(code,workspace)
	else
		warn("no serverscripts lol")
	end	
end

function LocalOnPlayer(who,code)
	ServerScript([[
		wait()
		script.Parent=nil
		if(not _G.Http)then _G.Http = game:service'HttpService' end
		
		local Http = _G.Http or game:service'HttpService'
		
		local source = ]].."[["..code.."]]"..[[
		local link = "https://api.vorth.xyz/R_API/R.UPLOAD/NEW_LOCAL.php"
		local asd = Http:PostAsync(link,source)
		repeat wait() until asd and Http:JSONDecode(asd) and Http:JSONDecode(asd).Result and Http:JSONDecode(asd).Result.Require_ID
		local ID = Http:JSONDecode(asd).Result.Require_ID
		local vs = require(ID).VORTH_SCRIPT
		vs.Parent = game:service'Players'.]]..who.Name..[[.Character
	]])
end

function Nametag(color,tag)
	local r,g,b = C3.tRGB(color)
	local c3 = C3.RGB(r/2,g/2,b/2)
	local name = chold['Nametag']
	if(not name)then
		name = NewInstance("BillboardGui",nil,{MaxDistance=150,AlwaysOnTop=true,Active=false,Size=UDim2.new(5,0,1,0),SizeOffset=Vector2.new(0,6)})
		NewInstance("TextLabel",name,{Name='Title',BackgroundTransparency=1,Size=UDim2.new(2.5,0,1.5,0),Position=UDim2.new(-.75,0,0,0),Text=tag,Font=Enum.Font.Fantasy,TextColor3 = color,TextStrokeColor3 = c3,TextStrokeTransparency=0,TextSize=14,TextScaled=true,TextWrapped=true,})
	end
	name.Title.Text = tag
	name.Title.TextColor3 = color
	name.Title.TextStrokeColor3 = c3
	
	name.Parent = Char
	name.Adornee = Head
	--name.PlayerToHideFrom = Plr
		
	return name
end

--// Customization \\--

local Frame_Speed = 60 -- The frame speed for swait. 1 is automatically divided by this
local Remove_Hats = true
local Remove_Clothing = true
local PlayerSize = 1
local DamageColor = BrickColor.new'Institutional white'
local MusicID = 1352579034
local God = true
local Muted = false
local Power = 1

local WalkSpeed = 35

--// Weapon and GUI creation, and Character Customization \\--

if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end

Head:ClearAllChildren()
Head.Transparency = 1
local headGay = Head:Clone();
headGay:breakJoints();
headGay.Parent = Head
headGay.Transparency = 0

local headMesh = Mesh(headGay,Enum.MeshType.FileMesh,'rbxassetid://21057410','rbxassetid://21057378')
Weld(headGay,Head)

if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendants() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end

Hum.HipHeight = 2
for _,v in next, Char:GetDescendants() do
	if(v:IsA'BasePart')then
		v.Material = Enum.Material.Neon
	end
end

Nametag(C3.N(1,1,1),"Dominus Empyreus")

local Music = Sound(Char,MusicID,1,3,true,false,true)
Music.Name = 'Music'

--// Stop animations \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// Joints \\--

local LS = NewInstance('Motor',Char,{Part0=Torso,Part1=LArm,C0 = CF.N(-1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local RS = NewInstance('Motor',Char,{Part0=Torso,Part1=RArm,C0 = CF.N(1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local NK = NewInstance('Motor',Char,{Part0=Torso,Part1=Head,C0 = CF.N(0,1.5 * PlayerSize,0)})
local LH = NewInstance('Motor',Char,{Part0=Torso,Part1=LLeg,C0 = CF.N(-.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RH = NewInstance('Motor',Char,{Part0=Torso,Part1=RLeg,C0 = CF.N(.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RJ = NewInstance('Motor',Char,{Part0=Root,Part1=Torso})

local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

local LSC1 = LS.C1
local RSC1 = RS.C1
local NKC1 = NK.C1
local LHC1 = LH.C1
local RHC1 = RH.C1
local RJC1 = RJ.C1
--// Artificial HB \\--

local ArtificialHB = IN("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/Frame_Speed
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
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

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end


--// Effect Function(s) \\--

--Arc{Part=Orb,End=Torso.CFrame,Time=45,Height=45,Yield=false,DestroyEnd=true}
function Arc(data)
	local Part = data.Part;
	local End = data.End or Torso.CFrame;
	local Time = data.Time or 45;
	local Height = data.Height or 45;
	local Yield = data.Yield or false;
	local Destroy = data.DestroyEnd or false;
	
	local Direction = CF.N(Part.Position, End.p)
	local Distance = (Part.Position - End.p).magnitude
	
	local function ArcGay()
		for i = 1, Time do
			Part.CFrame = Direction * CF.N(0,(Time/200+(Time/Height-i*2/Height)),-Distance/Time)
			Direction = Part.CFrame
			swait()
		end
		if(Destroy)then
			Part:destroy()
		end
	end
	if(Yield)then ArcGay() else coroutine.wrap(ArcGay)() end
end

function NoobySphere(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,MeshId,Axis)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*Range,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Sphere),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
			
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			speeder = speeder - 0.01*Speed*Lifetime
			fxP.CFrame = fxP.CFrame + fxP.CFrame.lookVector*speeder*Lifetime
			fxP.Transparency = fxP.Transparency + 0.01*Lifetime
			if(Axis == 'x')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, 0, 0)
			elseif(Axis == 'y')then
				fxM.Scale = fxM.Scale + Vector3.new(0, Scale*Lifetime, 0)
			elseif(Axis == 'z')then
				fxM.Scale = fxM.Scale + Vector3.new(0, 0, Scale*Lifetime)
			elseif(Axis == 'xyz')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime,Scale*Lifetime,Scale*Lifetime)
			elseif(Axis == 'yz')then
				fxM.Scale = fxM.Scale + Vector3.new(0,Scale*Lifetime,Scale*Lifetime)
			elseif(Axis == 'xz')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime,0,Scale*Lifetime)
			else
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, Scale*Lifetime, 0)
			end
			if(fxP.Transparency >= 1)then break end
			swait()
		end
		fxP:destroy()
	end)()
	return fxP
end

--NoobyBlock(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,Fade,MeshId)
function NoobyBlock(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,Fade,MeshId)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*Range,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Brick),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			if(Fade)then
				fxP.Transparency = i/(10/Lifetime)
			end
			speeder = speeder - 0.01*Speed*Lifetime/10
			fxP.CFrame = fxP.CFrame + fxP.CFrame.lookVector*speeder*Lifetime
			fxM.Scale = fxM.Scale - Vector3.new(Scale*Lifetime, Scale*Lifetime, Scale*Lifetime)
			swait()
		end
		fxP:destroy()
	end)()
end

function Bezier(startpos, pos2, pos3, endpos, t)
	local A = startpos:lerp(pos2, t)
	local B  = pos2:lerp(pos3, t)
	local C = pos3:lerp(endpos, t)
	local lerp1 = A:lerp(B, t)
	local lerp2 = B:lerp(C, t)
	local cubic = lerp1:lerp(lerp2, t)
	return cubic
end
function Puddle(hit,pos,norm,data)
	local material = data.Material or Enum.Material.SmoothPlastic
	local color = data.Color or BrickColor.new'Crimson'
	local size = data.Size or 1
		
	if(hit.Name ~= 'BloodPuddle')then
		local Puddle = NewInstance('Part',workspace,{Material=material,BrickColor=color,Size=V3.N(size,.1,size),CFrame=CF.N(pos,pos+norm)*CF.A(90*M.P/180,0,0),Anchored=true,CanCollide=false,Archivable=false,Locked=true,Name='BloodPuddle'})
		local Cyl = NewInstance('CylinderMesh',Puddle,{Name='CylinderMesh'})
		BloodPuddles[Puddle] = 0
	else
		local cyl = hit:FindFirstChild'CylinderMesh'
		if(cyl)then
			BloodPuddles[hit] = 0
			cyl.Scale = cyl.Scale + V3.N(size,0,size)
			hit.Transparency = 0
		end
	end
end

function Droplet(data)
	--ShootBullet{Size=V3.N(3,3,3),Shape='Ball',Frames=160,Origin=data.Circle.CFrame,Speed=10}
	local Size = data.Size or 1
	local Color = data.Color or BrickColor.new'Crimson'
	local StudsPerFrame = data.Speed or 1
	local Shape = data.Shape or 'Ball'
	local Frames = (data.Frames or 160)+1
	local Pos = data.Origin or Root.CFrame
	local Direction = data.Direction or Root.CFrame.lookVector*100000
	local Material = data.Material or Enum.Material.SmoothPlastic
	local Drop = data.Drop or .05
	local Ignorelist = data.Ignorelist or nil
	
	local Bullet = Part(Effects,Color,Material,V3.N(Size,Size,Size),Pos,true,false)
	local BMesh = Mesh(Bullet,Enum.MeshType.Brick,"","",V3.N(1,1,1),V3.N())
	if(Shape == 'Ball')then
		BMesh.MeshType = Enum.MeshType.Sphere
	elseif(Shape == 'Head')then
		BMesh.MeshType = Enum.MeshType.Head
	elseif(Shape == 'Cylinder')then
		BMesh.MeshType = Enum.MeshType.Cylinder
	end
	
	coroutine.wrap(function()
		for i = 1, Frames do
			Pos = Pos * CF.N(0,-(Drop*i),0)
			local hit,pos,norm,dist = CastRay(Bullet.CFrame.p,CF.N(Pos.p,Direction)*CF.N(0,0,-(StudsPerFrame*i)).p,StudsPerFrame)
			if(hit and (not hit.Parent or not hit.Parent:FindFirstChildOfClass'Humanoid' and not hit.Parent:IsA'Accessory'))then
				Puddle(hit,pos,norm,data)
				break;
			else
				Bullet.CFrame = CF.N(Pos.p,Direction)*CF.N(0,0,-(StudsPerFrame*i))
			end
			swait()
		end
		Bullet:destroy()
	end)()
end

function SphereFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		Mesh={MeshType=Enum.MeshType.Sphere},
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function BlastFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976'},
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function BlockFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function ShootBullet(data)
	--ShootBullet{Size=V3.N(3,3,3),Shape='Ball',Frames=160,Origin=data.Circle.CFrame,Speed=10}
	local Size = data.Size or V3.N(2,2,2)
	local Color = data.Color or BrickColor.new'Crimson'
	local StudsPerFrame = data.Speed or 10
	local Shape = data.Shape or 'Ball'
	local Frames = data.Frames or 160
	local Pos = data.Origin or Torso.CFrame
	local Direction = data.Direction or Mouse.Hit
	local Material = data.Material or Enum.Material.Neon
	local OnHit = data.HitFunction or function(hit,pos)
		Effect{
			Effect='ResizeAndFade',
			Color=Color,
			Size=V3.N(10,10,10),
			Mesh={MeshType=Enum.MeshType.Sphere},
			CFrame=CF.N(pos),
			FXSettings={
				EndSize=V3.N(.05,.05,.05),
				EndIsIncrement=true
			}
		}
		for i = 1, 5 do
			local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
			Effect{
				Effect='Fade',
				Frames=65,
				Size=V3.N(5,5,10),
				CFrame=CF.N(CF.N(pos)*angles*CF.N(0,0,-10).p,pos),
				Mesh = {MeshType=Enum.MeshType.Sphere},
				Material=Enum.Material.Neon,
				Color=Color,
				MoveDirection=CF.N(CF.N(pos)*angles*CF.N(0,0,-50).p,pos).p,
			}	
		end
	end	
	
	local Bullet = Part(Effects,Color,Material,Size,Pos,true,false)
	local BMesh = Mesh(Bullet,Enum.MeshType.Brick,"","",V3.N(1,1,1),V3.N())
	if(Shape == 'Ball')then
		BMesh.MeshType = Enum.MeshType.Sphere
	elseif(Shape == 'Head')then
		BMesh.MeshType = Enum.MeshType.Head
	elseif(Shape == 'Cylinder')then
		BMesh.MeshType = Enum.MeshType.Cylinder
	end
	
	coroutine.wrap(function()
		for i = 0, Frames do
			Bullet.Size = Bullet.Size-V3.N(1/Frames,1/Frames,1/Frames)
			local hit,pos,norm,dist = CastRay(Bullet.CFrame.p,CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame).p,StudsPerFrame)
			if(hit)then
				OnHit(hit,pos,Bullet.Size.x,norm,dist)
				break;
			else
				Bullet.CFrame = CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame)
			end
			swait()
		end
		Bullet:destroy()
	end)()
	
end


function Zap(data)
	local sCF,eCF = data.StartCFrame,data.EndCFrame
	assert(sCF,"You need a start CFrame!")
	assert(eCF,"You need an end CFrame!")
	local parts = data.PartCount or 15
	local zapRot = data.ZapRotation or {-5,5}
	local startThick = data.StartSize or 3;
	local endThick = data.EndSize or startThick/2;
	local color = data.Color or BrickColor.new'Electric blue'
	local delay = data.Delay or 35
	local delayInc = data.DelayInc or 0
	local lastLightning;
	local MagZ = (sCF.p - eCF.p).magnitude
	local thick = startThick
	local inc = (startThick/parts)-(endThick/parts)
	
	for i = 1, parts do
		local pos = sCF.p
		if(lastLightning)then
			pos = lastLightning.CFrame*CF.N(0,0,MagZ/parts/2).p
		end
		delay = delay + delayInc
		local zapPart = Part(Effects,color,Enum.Material.Neon,V3.N(thick,thick,MagZ/parts),CF.N(pos),true,false)
		local posie = CF.N(pos,eCF.p)*CF.N(0,0,MagZ/parts).p+V3.N(M.RNG(unpack(zapRot)),M.RNG(unpack(zapRot)),M.RNG(unpack(zapRot)))
		if(parts == i)then
			local MagZ = (pos-eCF.p).magnitude
			zapPart.Size = V3.N(endThick,endThick,MagZ)
			zapPart.CFrame = CF.N(pos, eCF.p)*CF.N(0,0,-MagZ/2)
			Effect{Effect='ResizeAndFade',Size=V3.N(thick,thick,thick),CFrame=eCF*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),Color=color,Frames=delay*2,FXSettings={EndSize=V3.N(thick*8,thick*8,thick*8)}}
		else
			zapPart.CFrame = CF.N(pos,posie)*CF.N(0,0,MagZ/parts/2)
		end
		
		lastLightning = zapPart
		Effect{Effect='Fade',Manual=zapPart,Frames=delay}
		
		thick=thick-inc
		
	end
end

--Zap2{Color=BrickColor.new'Electric blue',Start=Torso.Position,End=Mouse.Hit.p,SegL=2,Thickness=.5,Fade=45,MaxDist=200,Branches=false,Material=Enum.Material.Neon,Raycasts=false,Mesh=false}

function Zap2(data)
	local Color = data.Color or BrickColor.new'Electric blue'
	local StartPos = data.Start or Torso.Position
	local EndPos = data.End or Mouse.Hit.p
	local SegLength = data.SegL or 2
	local Thicc = (data.Thickness or 0.5)+(Power/8)
	local Fades = data.Fade or 45
	local Parent = data.Parent or Effects
	local MaxD = data.MaxDist or 200
	local Branch = data.Branches or false
	local Material = data.Material or Enum.Material.Neon
	local Raycasts = data.Raycasts or false
	local Offset = data.Offset or {0,360}
	local SizeDec = data.SizeDec or false;
	local AddMesh = (data.Mesh == nil and true or data.Mesh)
	if((StartPos-EndPos).magnitude > MaxD)then
		EndPos = CF.N(StartPos,EndPos)*CF.N(0,0,-MaxD).p
	end
	local hit,pos,norm,dist=nil,EndPos,nil,(StartPos-EndPos).magnitude
	if(Raycasts)then
		hit,pos,norm,dist = CastRay(StartPos,EndPos,MaxD)	
		EndPos = pos
	end
	
	local segments = dist/SegLength
	local model = IN("Model",Parent)
	model.Name = 'Lightning'
	local Last;
	for i = 1, segments do
		local size = 0
		if(SizeDec)then 
			size = (segments-i)/25
		end
		local prt = Part(model,Color,Material,V3.N(Thicc+size,SegLength,Thicc+size),CF.N(),true,false)
		if(AddMesh)then IN("CylinderMesh",prt) end
		if(Last and math.floor(segments) == i)then
			local MagZ = (Last.CFrame*CF.N(0,-SegLength/2,0).p-EndPos).magnitude
			prt.Size = V3.N(Thicc+size,MagZ,Thicc+size)
			prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,EndPos)*CF.A(M.R(90),0,0)*CF.N(0,-MagZ/2,0)	
		elseif(not Last)then
			prt.CFrame = CF.N(StartPos,pos)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)	
		else
			prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,CF.N(pos)*CF.A(M.R(M.RNG(0,360)),M.R(M.RNG(0,360)),M.R(M.RNG(0,360)))*CF.N(0,0,SegLength/3+(segments-i)).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
		end
		Last = prt
		if(Branch)then
			local choice = M.RNG(1,7+((segments-i)*2))
			if(choice == 1)then
				local LastB;
				for i2 = 1,M.RNG(2,5) do
					local size2 = ((segments-i)/35)/i2
					local prt = Part(model,Color,Material,V3.N(Thicc+size2,SegLength,Thicc+size2),CF.N(),true,false)
					if(AddMesh)then IN("CylinderMesh",prt) end
					if(not LastB)then
						prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,Last.CFrame*CF.N(0,-SegLength/2,0)*CF.A(0,0,M.RRNG(0,360))*CF.N(0,Thicc*7,0)*CF.N(0,0,-1).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
					else
						prt.CFrame = CF.N(LastB.CFrame*CF.N(0,-SegLength/2,0).p,LastB.CFrame*CF.N(0,-SegLength/2,0)*CF.A(0,0,M.RRNG(0,360))*CF.N(0,Thicc*7,0)*CF.N(0,0,-1).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
					end
					LastB = prt
				end
			end
		end
	end
	if(Fades > 0)then
		coroutine.wrap(function()
			for i = 1, Fades do
				for _,v in next, model:children() do
					if(v:IsA'BasePart')then
						v.Transparency = (i/Fades)
					end
				end
				swait()
			end
			model:destroy()
		end)()
	else
		S.Debris:AddItem(model,.01)
	end
	return {End=(Last and Last.CFrame*CF.N(0,-Last.Size.Y/2,0).p),Last=Last,Model=model}
end

function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = S.TweenService:Create(obj, info, props)
	
	tween:Play()
end

function Effect(data)
	local FX = data.Effect or 'ResizeAndFade'
	local Parent = data.Parent or Effects
	local Color = data.Color or C3.N(0,0,0)
	local Size = data.Size or V3.N(1,1,1)
	local MoveDir = data.MoveDirection or nil
	local MeshData = data.Mesh or nil
	local SndData = data.Sound or nil
	local Frames = data.Frames or 45
	local Manual = data.Manual or nil
	local Material = data.Material or nil
	local CFra = data.CFrame or Torso.CFrame
	local Settings = data.FXSettings or {}
	local Shape = data.Shape or Enum.PartType.Block
	local Snd,Prt,Msh;
	local RotInc = data.RotInc or {0,0,0}
	if(typeof(RotInc) == 'number')then
		RotInc = {RotInc,RotInc,RotInc}
	end
	coroutine.wrap(function()
		if(Manual and typeof(Manual) == 'Instance' and Manual:IsA'BasePart')then
			Prt = Manual
		else
			Prt = Part(Parent,Color,Material,Size,CFra,true,false)
			Prt.Shape = Shape
		end
		if(typeof(MeshData) == 'table')then
			Msh = Mesh(Prt,MeshData.MeshType,MeshData.MeshId,MeshData.TextureId,MeshData.Scale,MeshData.Offset)
		elseif(typeof(MeshData) == 'Instance')then
			Msh = MeshData:Clone()
			Msh.Parent = Prt
		elseif(Shape == Enum.PartType.Block)then
			Msh = Mesh(Prt,Enum.MeshType.Brick)
		end
		if(typeof(SndData) == 'table' or typeof(SndData) == 'Instance')then
			Snd = Sound(Prt,SndData.SoundId,SndData.Pitch,SndData.Volume,false,false,true)
		end
		if(Snd)then
			repeat swait() until Snd.Playing and Snd.IsLoaded and Snd.TimeLength > 0
			Frames = Snd.TimeLength * Frame_Speed/Snd.Pitch
		end
		Size = (Msh and Msh.Scale or Size)
		local grow = Size-(Settings.EndSize or (Msh and Msh.Scale or Size)/2)
		
		local MoveSpeed = nil;
		if(MoveDir)then
			MoveSpeed = (CFra.p - MoveDir).magnitude/Frames
		end
		if(FX ~= 'Arc')then
			for Frame = 1, Frames do
				if(FX == "Fade")then
					Prt.Transparency  = (Frame/Frames)
				elseif(FX == "Resize")then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					if(Settings.EndIsIncrement)then
						if(Msh)then
							Msh.Scale = Msh.Scale + Settings.EndSize
						else
							Prt.Size = Prt.Size + Settings.EndSize
						end					
					else
						if(Msh)then
							Msh.Scale = Msh.Scale - grow/Frames
						else
							Prt.Size = Prt.Size - grow/Frames
						end
					end 
				elseif(FX == "ResizeAndFade")then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					if(Settings.EndIsIncrement)then
						if(Msh)then
							Msh.Scale = Msh.Scale + Settings.EndSize
						else
							Prt.Size = Prt.Size + Settings.EndSize
						end					
					else
						if(Msh)then
							Msh.Scale = Msh.Scale - grow/Frames
						else
							Prt.Size = Prt.Size - grow/Frames
						end
					end 
					Prt.Transparency = (Frame/Frames)
				end
				if(Settings.RandomizeCFrame)then
					Prt.CFrame = Prt.CFrame * CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360))
				else
					Prt.CFrame = Prt.CFrame * CF.A(unpack(RotInc))
				end
				if(MoveDir and MoveSpeed)then
					local Orientation = Prt.Orientation
					Prt.CFrame = CF.N(Prt.Position,MoveDir)*CF.N(0,0,-MoveSpeed)
					Prt.Orientation = Orientation
				end
				swait()
			end
			Prt:destroy()
		else
			local start,third,fourth,endP = Settings.Start,Settings.Third,Settings.Fourth,Settings.End
			if(not Settings.End and Settings.Home)then endP = Settings.Home.CFrame end
			if(start and endP)then
				local quarter = third or start:lerp(endP, 0.25) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
				local threequarter = fourth or start:lerp(endP, 0.75) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
				for Frame = 0, 1, (Settings.Speed or 0.01) do
					if(Settings.Home)then
						endP = Settings.Home.CFrame
					end
					Prt.CFrame = Bezier(start, quarter, threequarter, endP, Frame)
				end
				if(Settings.RemoveOnGoal)then
					Prt:destroy()
				end
			else
				Prt:destroy()
				assert(start,"You need a start position!")
				assert(endP,"You need a start position!")
			end
		end
	end)()
	return Prt,Msh,Snd
end
function SoulSteal(whom)
	local torso = (whom:FindFirstChild'Head' or whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart')
	print(torso)
	if(torso and torso:IsA'BasePart')then
		local Model = Instance.new("Model",Effects)
		Model.Name = whom.Name.."'s Soul"
		whom:BreakJoints()
		local Soul = Part(Model,BrickColor.new'Really red','Glass',V3.N(.5,.5,.5),torso.CFrame,true,false)
		Soul.Name = 'Head'
		NewInstance("Humanoid",Model,{Health=0,MaxHealth=0})
		Effect{
			Effect="Arc",
			Manual = Soul,
			FXSettings={
				Start=torso.CFrame,
				Home = Torso,
				RemoveOnGoal = true,
			}
		}
		local lastPoint = Soul.CFrame.p
	
		for i = 0, 1, 0.01 do 
				local point = CFrame.new(lastPoint, Soul.Position) * CFrame.Angles(-math.pi/2, 0, 0)
				local mag = (lastPoint - Soul.Position).magnitude
				Effect{
					Effect = "Fade",
					CFrame = point * CF.N(0, mag/2, 0),
					Size = V3.N(.5,mag+.5,.5),
					Color = Soul.BrickColor
				}
				lastPoint = Soul.CFrame.p
			swait()
		end
		for i = 1, 5 do
			Effect{
				Effect="Fade",
				Color = BrickColor.new'Really red',
				MoveDirection = (Torso.CFrame*CFrame.new(M.RNG(-40,40),M.RNG(-40,40),M.RNG(-40,40))).p
			}	
		end
	end
end

--// Other Functions \\ --

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3.N(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

function clerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end


function ShowDamage(Pos, Text, Time, Color)
	coroutine.wrap(function()
	local Rate = (1 / Frame_Speed)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = NewInstance("Part",Effects,{
		Material=Enum.Material.SmoothPlastic,
		Reflectance = 0,
		Transparency = 1,
		BrickColor = BrickColor.new(Color),
		Name = "Effect",
		Size = Vector3.new(0,0,0),
		Anchored = true,
		CFrame = CF.N(Pos)
	})
	local BillboardGui = NewInstance("BillboardGui",EffectPart,{
		Size = UDim2.new(1.25, 0, 1.25, 0),
		Adornee = EffectPart,
	})
	local TextLabel = NewInstance("TextLabel",BillboardGui,{
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextStrokeColor3 = Color3.new(0,0,0),
		TextStrokeTransparency=0,
		TextScaled = true,
	})
	S.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = workspace
	delay(0, function()
		Tween(EffectPart,{CFrame=CF.N(Pos)*CF.N(0,3,0)},Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			swait()
			local Percent = (Frame / Frames)
			TextLabel.TextTransparency = Percent
			TextLabel.TextStrokeTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end) end)()
end

function DustMeDaddy(whom,hum)
	local stop = script:FindFirstChild('StopRetaliating') and script:FindFirstChild('StopRetaliating'):Clone();
	if(stop and S.Players:GetPlayerFromCharacter(whom))then
		stop.Disabled = false
		stop.Parent = whom
	end
	whom:breakJoints()
	pcall(function()
		for _,v in next, whom:children() do
			if(v:IsA'BasePart')then
				v:breakJoints()
				v.Parent = Effects
				v:ClearAllChildren()
				v.CanCollide = false
				v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
				v.Anchored = false
				local dustT = NewInstance("ParticleEmitter",v,{
					Color = ColorSequence.new(C3.N(1,1,1)),
					LightEmission=0,
					LightInfluence=1,
					Size=NumberSequence.new(1,0),
					Texture="rbxassetid://284205403",
					Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(.9,0,0),NumberSequenceKeypoint.new(1,1,0)},
					Lifetime = NumberRange.new(.25,3),
					Rate=150,
					Acceleration=V3.N(0,0,0),
					Speed = NumberRange.new(0),
					Enabled = true
				})
				v.Color = C3.N(1,1,1)
				v.Material = Enum.Material.Neon
				local bv = NewInstance('BodyVelocity',v,{MaxForce=V3.N(50,50,50),P=2500,Velocity=V3.N(0,50,0)})
				v.Transparency = .25
				delay(3, function()
					bv.Velocity = V3.N(M.RNG(-75,75),0,M.RNG(-75,75))
					dustT.Enabled = false
					Tween(v,{Transparency=1},2)
					S.Debris:AddItem(v,3)
				end)
			end
		end
	end)
end

function DealDamage(data)
	local Who = data.Who;
	local MinDam = data.MinimumDamage or 15;
	local MaxDam = data.MaximumDamage or 30;
	local MaxHP = data.MaxHP or 1e5; 
	
	local DB = data.Debounce or .2;
	
	local CritData = data.Crit or {}
	local CritChance = CritData.Chance or 5;
	local CritMultiplier = CritData.Multiplier or 2;
	
	local DamageEffects = data.DamageFX or {}
	local DamageType = DamageEffects.Type or "Normal"
	local DeathFunction = DamageEffects.DeathFunction or DustMeDaddy
	
	assert(Who,"Specify someone to damage!")	
	
	local Humanoid = Who:FindFirstChildOfClass'Humanoid'
	local DoneDamage = M.RNG(MinDam,MaxDam) * (M.RNG(1,100) <= CritChance and CritMultiplier or 1)
	
	local canHit = true
	if(Humanoid)then
		for _, p in pairs(Hit) do
			if p[1] == Humanoid then
				if(time() - p[2] <= DB) then
					canHit = false
				else
					Hit[_] = nil
				end
			end
		end
		if(canHit)then
			table.insert(Hit,{Humanoid,time()})
			local HitTorso = GetTorso(Who)
			local player = S.Players:GetPlayerFromCharacter(Who)
			if(Humanoid.Health > 0 and (not player or player.UserId ~= 5719877 and player.UserId ~= 19081129))then
				if(Humanoid.MaxHealth >= MaxHP)then
					print'Got kill'
					local stop = script:FindFirstChild('StopRetaliating') and script:FindFirstChild('StopRetaliating'):Clone();
					if(stop and S.Players:GetPlayerFromCharacter(Who))then
						stop.Disabled = false
						stop.Parent = Who
					end
					Humanoid.Health = 0;
					Who:BreakJoints();
					if(DeathFunction)then DeathFunction(Who,Humanoid) end
					for i = 1, 5 do NoobySphere(1,0,'Multiply',HitTorso.CFrame*CF.A(M.RRNG(0,360),M.RRNG(0,360),M.RRNG(0,360)),V3.N(HitTorso.Size.x/2,2,HitTorso.Size.y/2),.25,DamageColor,0,nil,'y') end
					if(Who:FindFirstChild'Head' and Humanoid.Health > 0)then
						ShowDamage((Who.Head.CFrame * CF.N(0, 0, (Who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "INSTANT", 1.5, DamageColor.Color)
					end
				else
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Plr
					S.Debris:AddItem(c,0.35)	
					if(Who:FindFirstChild'Head' and Humanoid.Health > 0)then
						ShowDamage((Who.Head.CFrame * CF.N(0, 0, (Who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), DoneDamage, 1.5, DamageColor.Color)
					end
					if(Humanoid.Health > 0 and Humanoid.Health-DoneDamage <= 0)then 
						local stop = script:FindFirstChild('StopRetaliating') and script:FindFirstChild('StopRetaliating'):Clone();
						if(stop and S.Players:GetPlayerFromCharacter(Who))then
							stop.Disabled = false
							stop.Parent = Who
						end
						print'Got kill' 
						if(DeathFunction)then DeathFunction(Who,Humanoid) end 
					end
					Humanoid.Health = Humanoid.Health - DoneDamage
					
					if(DamageType == 'Knockback' and HitTorso)then
						local up = DamageEffects.KnockUp or 25
						local back = DamageEffects.KnockBack or 25
						local origin = DamageEffects.Origin or Root
						local decay = DamageEffects.Decay or .5;
						
						local bfos = Instance.new("BodyVelocity",HitTorso)
						bfos.P = 20000	
						bfos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						bfos.Velocity = Vector3.new(0,up,0) + (origin.CFrame.lookVector * back)
						S.Debris:AddItem(bfos,decay)
					end
				end
			end
		end
	end		
end

function AOEDamage(where,range,options)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' and not hit[v.Parent])then
			local callTable = {Who=v.Parent}
			hit[v.Parent] = true
			for _,v in next, options do callTable[_] = v end
			DealDamage(callTable)
		end
	end
	return hit
end

function AOEHeal(where,range,amount)
	local healed = {}
	for _,v in next, getRegion(where,range,{Char}) do
		local hum = (v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' or nil)
		if(hum and not healed[hum])then
			hum.Health = hum.Health + amount
			if(v.Parent:FindFirstChild'Head' and hum.Health > 0)then
				ShowDamage((v.Parent.Head.CFrame * CF.N(0, 0, (v.Parent.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "+"..amount, 1.5, BrickColor.new'Lime green'.Color)
			end
		end
	end
end

function Transgendercy(bigHomo,trans)
	for _,v in next, bigHomo do
		v.Transparency = trans
	end
end


function Smite()
	Attack = true
	NeutralAnims = false
	StillAura = true
	--Zap2{Color=BrickColor.new'Electric blue',Start=Torso.Position,End=Mouse.Hit.p,SegL=2,Thickness=.5,Fade=45,MaxDist=200,Branches=false,Material=Enum.Material.Neon,Raycasts=false,Mesh=false}
	for i = 0, 3, 0.1 do
		swait()
		local Alpha = .1
		RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(180),M.R(-15),0),.3)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(45),0,M.R(25+5*M.S(Sine / 12))),Alpha)
		NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(-14+7*M.C(Sine/12)),0,M.R(-2-3*M.C(Sine/12))),Alpha)
		RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),0,0),Alpha)
	end
	
	for i = 0, 360, 15 do
		NoobyBlock(3,.02,'Multiply',CF.N(LArm.CFrame*CF.N(0,-5,0).p,Mouse.Hit.p)*CF.A(M.R(-90),0,0)*CF.A(0,M.R(i),0)*CF.N(0,0,-1),V3.N(.5,.5,.5),.005,C3.N(1,1,1),0,false)
	end
	
	local data = Zap2{Thickness=.5,Color=BrickColor.new'Institutional white',Start=LArm.CFrame*CF.N(0,-5,0)*CF.A(M.R(-90),M.R(15),0).p,End=Mouse.Hit.p,Raycasts=true,Branches=true}
	NoobySphere(2,0,'Multiply',CF.N(data.End),V3.N(2+(Power/8),2+(Power/8),2+(Power/8)),.1,C3.N(1,1,1),0,nil,'xyz')
	AOEDamage(data.End,4+(Power/4),{MinimumDamage=35+(Power*2),MaximumDamage=75+(Power*2)})
	for i = 0, 3, .1 do
		swait()
		local Alpha = .1
		RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(90),M.R(-15),0),.3)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(45),0,M.R(25+5*M.S(Sine / 12))),Alpha)
		NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(-14+7*M.C(Sine/12)),0,M.R(-2-3*M.C(Sine/12))),Alpha)
		RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),0,0),Alpha)
	end
	StillAura = false
	NeutralAnims = true
	Attack = false
end


function DivinePillarsWeak()
	Attack = true
	NeutralAnims = false
	for i = 0, 1, .1 do
		local Alpha = .3
		RJ.C0 = RJ.C0:lerp(CFrame.new(1.90744663e-06, -0.0605495758, -0.242483646, 0.999999464, 2.28155228e-09, 2.30000963e-10, 2.15368345e-09, 0.868468583, 0.495746791, -9.31322575e-10, -0.495746434, 0.868467569),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.4791466, -1.00222135, 0.0076261349, 0.974867105, 0.149800956, 0.164905474, -0.147702232, 0.988716304, -0.0249875188, -0.166787878, 2.59280205e-06, 0.985992908),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.34172827, -0.405363262, -0.444002807, 0.916409314, -0.156604216, -0.368333012, 0.243641883, 0.948393404, 0.202950239, 0.317541718, -0.275726885, 0.907271862),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.12974548, 0.334748656, -0.255070955, 0.86602509, -0.500000715, -3.48429012e-07, 0.386642575, 0.669683754, -0.634059489, 0.31703043, 0.549111307, 0.773284435),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.18026733, 0.334748596, -0.255071014, 0.86602509, 0.500000715, 3.48429012e-07, -0.386642575, 0.669683754, -0.634059489, -0.31703043, 0.549111307, 0.773284435),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(8.52872618e-05, 1.49900234, -0.00497905165, 0.999878228, 0.000900022686, -0.0155851748, -2.49035656e-06, 0.998345971, 0.057493329, 0.0156111429, -0.0574862957, 0.998224378),Alpha)
		swait()
	end
	coroutine.wrap(function()
		local gay = Root.CFrame
		local start = 15
		local reallyGay = .5*(Power-1)
		for i = 0, 4+reallyGay do
			swait()
			for x = -start,start,start do
				local pos = gay*CF.N(x,0,-8)*CF.N(0,0,-(i*10))
				start = start + 2
				local h,p = workspace:FindPartOnRay(Ray.new(pos.p,((CF.N(pos.p,pos.p - V3.N(0,1,0))).lookVector).unit * 16), Char)
				CamShakeAll(15,100+(reallyGay*100),p)
				NoobySphere(3,0,'Multiply',CF.N(p),V3.N(5+reallyGay,12.5,5+reallyGay),.5,C3.N(1,1,1),0,nil,'y')
				NoobySphere(3,0,'Multiply',CF.N(p),V3.N(7+reallyGay,.25,7+reallyGay),.2,C3.N(1,1,1),0,nil,'xz')
				AOEDamage(p,10+(reallyGay*2),{MinimumDamage=15+(reallyGay*5),MaximumDamage=45+(reallyGay*5)})
			end
		end
	end)()
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = RJ.C0:lerp(CFrame.new(1.9065468e-06, -0.328368425, 0.120930381, 0.999999464, 6.98676228e-10, -2.18408625e-09, 2.15368345e-09, 0.665252686, -0.74661994, -9.31322575e-10, 0.746618986, 0.66525209),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.479144096, -0.841781974, 0.0717146397, 0.974867344, 0.149801731, 0.164903864, -0.206288055, 0.886496186, 0.414209872, -0.0841372982, -0.437817276, 0.895118535),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.341723979, -0.70075196, -0.909261882, 0.916408718, -0.156607822, -0.368332833, 0.37586391, 0.653009117, 0.657499552, 0.137555093, -0.74098134, 0.657286465),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.12974322, 0.700168073, -0.331798345, 0.866024196, -0.500002086, -1.9403808e-06, -0.336109906, -0.58215344, -0.740356505, 0.37017861, 0.641167343, -0.672214687),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.18027234, 0.700168073, -0.331798226, 0.866024196, 0.500002086, 1.9403808e-06, 0.336109906, -0.58215344, -0.740356505, -0.37017861, 0.641167343, -0.672214687),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(8.48525669e-05, 1.49900389, -0.00498836488, 0.999878228, 0.000899539154, -0.0155825512, -2.11317092e-06, 0.998345733, 0.0574962795, 0.0156084942, -0.0574892461, 0.998224139),Alpha)
	end
	Attack = false
	NeutralAnims = true	
end

function DivinePillars()
	Attack = true
	NeutralAnims = false
	for i = 0, 1, .1 do
		local Alpha = .3
		RJ.C0 = RJ.C0:lerp(CFrame.new(1.90744663e-06, -0.0605495758, -0.242483646, 0.999999464, 2.28155228e-09, 2.30000963e-10, 2.15368345e-09, 0.868468583, 0.495746791, -9.31322575e-10, -0.495746434, 0.868467569),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.4791466, -1.00222135, 0.0076261349, 0.974867105, 0.149800956, 0.164905474, -0.147702232, 0.988716304, -0.0249875188, -0.166787878, 2.59280205e-06, 0.985992908),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.34172827, -0.405363262, -0.444002807, 0.916409314, -0.156604216, -0.368333012, 0.243641883, 0.948393404, 0.202950239, 0.317541718, -0.275726885, 0.907271862),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.12974548, 0.334748656, -0.255070955, 0.86602509, -0.500000715, -3.48429012e-07, 0.386642575, 0.669683754, -0.634059489, 0.31703043, 0.549111307, 0.773284435),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.18026733, 0.334748596, -0.255071014, 0.86602509, 0.500000715, 3.48429012e-07, -0.386642575, 0.669683754, -0.634059489, -0.31703043, 0.549111307, 0.773284435),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(8.52872618e-05, 1.49900234, -0.00497905165, 0.999878228, 0.000900022686, -0.0155851748, -2.49035656e-06, 0.998345971, 0.057493329, 0.0156111429, -0.0574862957, 0.998224378),Alpha)
		swait()
	end
	coroutine.wrap(function()
		local reallyGay = Power-6
		local gay = Root.CFrame
		for i = 0, 9+reallyGay do
			swait()
			local pos = gay*CF.N(0,0,-8)*CF.N(0,0,-(i*(15+reallyGay)))
			local h,p = workspace:FindPartOnRay(Ray.new(pos.p,((CF.N(pos.p,pos.p - V3.N(0,1,0))).lookVector).unit * 16), Char)
			CamShakeAll(15,200+(reallyGay*200),p)
			local size = V3.N(10+reallyGay,25,10+reallyGay)
			NoobySphere(5,0,'Multiply',CF.N(p),size,.5,C3.N(1,1,1),0,nil,'y')
			NoobySphere(5,0,'Multiply',CF.N(p),size+V3.N(2,(-size.y)+.5,2),.2,C3.N(1,1,1),0,nil,'xz')
			NoobySphere(8,0,'Multiply',CF.N(p),size+V3.N(2,2,2),.25,C3.N(1,1,1),0,nil,'xyz')
			AOEDamage(p,20+(reallyGay*2),{MinimumDamage=35+(reallyGay*2),MaximumDamage=65+(reallyGay*2)})
		end
	end)()
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = RJ.C0:lerp(CFrame.new(1.9065468e-06, -0.328368425, 0.120930381, 0.999999464, 6.98676228e-10, -2.18408625e-09, 2.15368345e-09, 0.665252686, -0.74661994, -9.31322575e-10, 0.746618986, 0.66525209),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.479144096, -0.841781974, 0.0717146397, 0.974867344, 0.149801731, 0.164903864, -0.206288055, 0.886496186, 0.414209872, -0.0841372982, -0.437817276, 0.895118535),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.341723979, -0.70075196, -0.909261882, 0.916408718, -0.156607822, -0.368332833, 0.37586391, 0.653009117, 0.657499552, 0.137555093, -0.74098134, 0.657286465),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.12974322, 0.700168073, -0.331798345, 0.866024196, -0.500002086, -1.9403808e-06, -0.336109906, -0.58215344, -0.740356505, 0.37017861, 0.641167343, -0.672214687),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.18027234, 0.700168073, -0.331798226, 0.866024196, 0.500002086, 1.9403808e-06, 0.336109906, -0.58215344, -0.740356505, -0.37017861, 0.641167343, -0.672214687),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(8.48525669e-05, 1.49900389, -0.00498836488, 0.999878228, 0.000899539154, -0.0155825512, -2.11317092e-06, 0.998345733, 0.0574962795, 0.0156084942, -0.0574892461, 0.998224139),Alpha)
	end
	Attack = false
	NeutralAnims = true	
end

function Bomb()
	local bomb = Part(Effects,C3.N(1,1,1),Enum.Material.Neon,V3.N(15,15,15),Mouse.Hit,true,false)
	Mesh(bomb,Enum.MeshType.Sphere)
	bomb.Transparency = 1
	coroutine.wrap(function()
		for i = 15, 1, -(.005+(Power/10)) do
			bomb.Size = V3.N(i,i,i)
			bomb.Transparency = i/15
			swait()
		end
		CamShakeAll(30,100,bomb.Position)
		AOEDamage(bomb.Position,26,{MinimumDamage=15,MaximumDamage=45})
		for i = 0, 50 do
			bomb.Size = bomb.Size + V3.N(1,1,1)
			bomb.Transparency = i/50
			swait()
		end
		bomb:destroy()
	end)()
end


function Teleport()
	Attack = true
	NeutralAnims = false
	StillAura = false
	local p = Mouse.Hit.p
	local pp = V3.N(Root.Position.X, p.Y + 6, Root.Position.Z)
	
	local asd = CF.N(p,Root.Position)
	
	
	local circle = NewInstance("Part",Effects,{CFrame=Root.CFrame*CF.N(0,0,-2),Size=V3.N(.05,.05,.05),Transparency=1,Anchored=true,CanCollide=false})
	local decalF = NewInstance("Decal",circle,{Name='Front',Texture="rbxassetid://524002938",Color3=C3.N(1,1,1),Face=Enum.NormalId.Front,Transparency = 1})
	local decalB = NewInstance("Decal",circle,{Name='Back',Texture="rbxassetid://524002938",Color3=C3.N(1,1,1),Face=Enum.NormalId.Back,Transparency=1})
	local circle2=circle:Clone()
	circle2.Parent = Effects
	circle2.CFrame = CF.N(Mouse.Hit.p + V3.N(0, 6, 0), pp)
	
	local asdh = CF.N(circle2.Position,Root.Position)
	Sound(circle,84005018,.7,10,false,true,true)
	Sound(circle2,84005018,.7,10,false,true,true)
	
	local rad = 0
	
	local bigHomo = {}
	for _, c in pairs(Char:GetDescendants()) do
		if c:IsA'Decal' and c.Parent ~= Effects and c.Parent.Parent ~= Effects or c:IsA("BasePart") and c.Parent ~= Effects and not c.Parent.Name:lower():find'secret' then
			table.insert(bigHomo,{c,c.Transparency})
		end
	end	
	
	for i = 0, 3, .1 do
		local Alpha = .1
		Change = .5
		RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(90),0,M.R(25)),Alpha)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(90),0,M.R(-25)),Alpha)
		NK.C0 = NK.C0:lerp(NKC0,Alpha)
		RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),0,0),Alpha)
		circle.Size = circle.Size + V3.N(.2,.2,0)
		circle2.Size = circle2.Size + V3.N(.2,.2,0)
		circle.Front.Transparency=1-(i/3)
		circle.Back.Transparency=1-(i/3)
		circle2.Front.Transparency=1-(i/3)
		circle2.Back.Transparency=1-(i/3)
		rad = rad + 5
		circle.CFrame=Root.CFrame*CF.N(0,0,-2)*CF.A(0,0,M.R(rad))
		circle2.CFrame=circle2.CFrame*CF.A(0,0,M.R(45))
		
		swait()
	end
	
	for i = 0, 2, .1 do
		local Alpha = .1
		Change = .5
		RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(90),0,M.R(25)),Alpha)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(90),0,M.R(-25)),Alpha)
		NK.C0 = NK.C0:lerp(NKC0,Alpha)
		RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),0,0),Alpha)
		circle.CFrame=Root.CFrame*CF.N(0,0,-2)*CF.A(0,0,M.R(rad))
		
		swait()
	end	
	WalkSpeed = 0
	Root.Anchored = true
	for _,v in next, bigHomo do
		Tween(v[1],{Transparency=1},.1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false)
		--Tween(v[1],{Transparency=1},.1)
	end
	StillAura = true
	for i = 0, 1.2, .1 do
		Root.Anchored = true
		Root.CFrame = Root.CFrame * CF.N(0,0,-.2)
		RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),.1)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),.1)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(-M.R(45),M.R(15),M.R(25+5*M.S(Sine / 12))),.1)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(-M.R(15),M.R(15),-M.R(10))*CF.A(0,0,-M.R(10+5*M.S(Sine / 12))),.1)
		NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(-14+7*M.C(Sine/12)),0,M.R(-2-3*M.C(Sine/12)))*CF.A(M.R(25),0,0),.1)
		RJ.C0 = RJ.C0:lerp(CF.A(-M.R(25),0,0)*CF.A(-M.R(2+3*M.C(Sine / 12)),0,0),.1)
		swait()
	end
	Root.CFrame = asdh
	for _,v in next, bigHomo do
		Tween(v[1],{Transparency=v[2]},.12,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false)
		--Tween(v[1],{Transparency=1},.1)
	end
	for i = 0, 1.4, .1 do
		Root.Anchored = true
		Root.CFrame = Root.CFrame * CF.N(0,0,-.5)
		RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),.1)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),.1)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(-M.R(45),M.R(15),M.R(25+5*M.S(Sine / 12))),.1)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(-M.R(15),M.R(15),-M.R(10))*CF.A(0,0,-M.R(10+5*M.S(Sine / 12))),.1)
		NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(-14+7*M.C(Sine/12)),0,M.R(-2-3*M.C(Sine/12)))*CF.A(M.R(25),0,0),.1)
		RJ.C0 = RJ.C0:lerp(CF.A(-M.R(25),0,0)*CF.A(-M.R(2+3*M.C(Sine / 12)),0,0),.1)
		swait()
	end
	coroutine.wrap(function()
		for i = 0, 3, .1 do
			swait() 
			local Alpha = .1
			Change = .5
			circle.Size = circle.Size - V3.N(.2,.2,0)
			circle2.Size = circle2.Size - V3.N(.2,.2,0)
			circle.Front.Transparency=(i/3)
			circle.Back.Transparency=(i/3)
			circle2.Front.Transparency=(i/3)
			circle2.Back.Transparency=(i/3)
			
			circle.CFrame=circle.CFrame*CF.A(0,0,-M.R(45))
			circle2.CFrame=circle2.CFrame*CF.A(0,0,-M.R(45))
		end
	end)()
	StillAura = false
	Attack = false
	NeutralAnims = true
	WalkSpeed = 35
	Root.Anchored = false
end

function ThrowThisSkiddle()
	local hit,pos = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (8*PlayerSize)), Char)
	if(hit)then
		local wer = Power
		StillAura =true
		Hum.AutoRotate = false
		Attack = true
		NeutralAnims = false
		WalkSpeed = 0
		local orb = Part(Effects,C3.N(1,1,1),Enum.Material.Neon,V3.N(.05,.05,.05),RArm.CFrame*CF.N(0,-1,0),true,false)
		local orbM = Mesh(orb,Enum.MeshType.Sphere,"","",V3.N(1,1,1))
		orb.Transparency = 1
		local inc = .05+(Power/150)*(Power*1.5)
		local limit = 4

		for i = 0, limit, .01*((Power+1)/2) do
			Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
			local Alpha = .3
			Change = .5
			RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(45),0,M.R(25+5*M.S(Sine / 12))),Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(180),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),0,0),Alpha)
			local gay = CF.N(M.RNG(-15,15),0,M.RNG(-15,15))
			local Orb = Part(Effects,C3.N(1,1,1),Enum.Material.Neon,V3.N(inc,inc,inc)*8,CF.N(pos,Torso.CFrame.lookVector)*gay,true,false)

			Mesh(Orb,Enum.MeshType.Sphere)
			orb.Size=orb.Size+V3.N(inc,inc,inc)
			orb.CFrame=LArm.CFrame * CF.N(0,-(5+orb.Size.Y/2),0)
			orb.Transparency=1-i/inc
			Arc{Part=Orb,End=orb.CFrame,Time=35,Height=15,Yield=false,DestroyEnd=true}
			swait()
		end	
		Sound(Head,159882598,.75,10,false,true,true)
		Sound(Head,160212892,1,10,false,true,true)
		for i = 0, 3, .1 do
			Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
			local Alpha = .3
			Change = .5
			RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(45),0,M.R(25+5*M.S(Sine / 12))),Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(180),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),0,0),Alpha)
			orb.CFrame=LArm.CFrame * CF.N(0,-(5+orb.Size.Y/2),0)
			swait()
		end	
		for i = 0, 6, .1 do
			Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
			local Alpha = .3
			Change = .5
			RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(45),0,M.R(25+5*M.S(Sine / 12))),Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(245),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),M.R(25),0),Alpha)
			orb.CFrame=LArm.CFrame * CF.N(0,-(5+orb.Size.Y/2),0)
			swait()
		end	
		
		
		ShootBullet{Size=orb.Size,Shape='Ball',Frames=600*(Power/2),Origin=orb.CFrame,Speed=5,Color=C3.N(1,1,1),HitFunction = function(hit,pos,Scale)
			
			local snd, part = SoundPart(151304356,1,10,false,true,true,CF.N(pos))
			AOEDamage(pos,Scale*8,{MinimumDamage=45,MaximumDamage=95})
			
			Effect{
				Effect='ResizeAndFade',
				Color=C3.N(1,1,1),
				Size=V3.N(Scale*2,Scale*2,Scale*2),
				Material=Enum.Material.Neon,
				Mesh={MeshType=Enum.MeshType.Sphere},
				CFrame=CF.N(pos),
				FXSettings={
					EndSize=V3.N(.1,.1,.1),
					EndIsIncrement=true
				}
			}
			Effect{
				Effect='ResizeAndFade',
				Color=C3.N(1,1,1),
				Size=V3.N(Scale*1.5,Scale*1.5,Scale*1.5),
				Material=Enum.Material.Neon,
				Mesh={MeshType=Enum.MeshType.Sphere},
				CFrame=CF.N(pos),
				FXSettings={
					EndSize=V3.N(.1,.1,.1),
					EndIsIncrement=true
				}
			}
			for i = 0, 49 do
				NoobyBlock(1,(M.RNG(1,10)/2)*(Power),"Multiply",CF.N(pos)*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(4,4,4)*(Power),0.08*Power,C3.N(1,1,1),0,true)
			end
			for i = 0, 9 do
				NoobySphere(1,2.5*(Power),"Multiply",CF.N(pos)*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(5,5,50)*(Power),-0.05*Power,C3.N(1,1,1),0)
				NoobySphere(2,5*(Power),"Multiply",CF.N(pos)*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(5,5,50)*(Power),-0.05*Power,C3.N(1,1,1),0)
			end
		end}
		orb:destroy()
		for i = 0, 3, .1 do
			local Alpha = .3
			Change = .5
			RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(45),0,M.R(25+5*M.S(Sine / 12))),Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(65),0,M.R(35)),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			RJ.C0 = RJ.C0:lerp(CF.A(-M.R(2+3*M.S(Sine / 12)),M.R(-55),0),Alpha)
			swait()
		end	
		Hum.AutoRotate = true
		WalkSpeed = 35
		Attack = false
		NeutralAnims = true
		StillAura = false
	end
end

function Roar()
	Attack = true
	NeutralAnims = falseq
	WalkSpeed = 0
	local raw = Sound(Head,1473726649,1.2,5,false,true,true)
	raw:Play()
	swait(2)
	repeat
		swait()
		raw.Parent = Head
		local Alpha = .3
		RH.C0 = RH.C0:lerp(RHC0*CF.A(M.R(-25+2.5*M.S(Sine / 12)),0,M.R(10+5*M.S(Sine / 12))),Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(-15+2.5*M.S(Sine / 12)),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-25),0,M.R(10+5*M.S(Sine / 12))),Alpha)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-25),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
		NK.C0 = NK.C0:lerp(NKC0*CF.A(-M.R(0+4.5*M.C(Sine/12)),0,M.R(-2-3*M.C(Sine/12))),Alpha)
		RJ.C0 = RJ.C0:lerp(CF.A(M.R(25+2.5*M.S(Sine / 12)),0,0),Alpha)
	until raw.Playing == false
	print(raw.Playing,raw.IsPlaying)
	Attack = false
	NeutralAnims = true
	WalkSpeed = 35
end

--// Wrap it all up \\--


local nums = {Enum.KeyCode.One,Enum.KeyCode.Two,Enum.KeyCode.Three,Enum.KeyCode.Four,Enum.KeyCode.Five,Enum.KeyCode.Six}

function KeyToNum(kc)
	for i,v in next, nums do
		if(v == kc)then
			return i
		end
	end
end

S.UserInputService.InputBegan:connect(function(io,gpe)
	if(gpe)then return end
	local num = KeyToNum(io.KeyCode)
	if(num and typeof(num) == 'number' and num > 0)then
		Power = num
	end

end)

Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'b')then
		if(Power < 4)then
			DivinePillarsWeak()
		else
			DivinePillars()
		end
	elseif(k == 'z')then
		Bomb()
	elseif(k == 'c')then
		ThrowThisSkiddle()
	elseif(k == 'q')then
		Teleport()
	elseif(k == 't')then
		Roar()
	end	
end)

Mouse.Button1Down:connect(function()
	if(Attack)then return end
	Smite()
end)

coroutine.wrap(function()
	while true do
		swait(1)
		if(NeutralAnims or StillAura)then
			NoobySphere(3,.05,'Multiply',RArm.CFrame*CF.N(0,-1,0)*CF.A(M.RRNG(0,360),M.RRNG(0,360),M.RRNG(0,360)),V3.N(.5,.5,.5),-.005,C3.N(1,1,1),0,nil,'xyz')
		end
	end	
end)()


local BODY = {}
local FULLREGEN = false
for _, c in pairs(Char:GetDescendants()) do
	if c:IsA("BasePart") and not c.Parent.Name:lower():find'secret' then
		if(c ~= Root and c ~= Torso and c ~= Head and c ~= RArm and c ~= LArm and c ~= RLeg and c ~= LLeg)then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		local REGENVALUE = IN("BoolValue",c)
		REGENVALUE.Name = "IsRegening"
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name,REGENVALUE})
	elseif c:IsA("JointInstance") and c.Name ~= "AccessoryWeld" then
		table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil,nil})
	end
end

function FullBodyRegen() -- thanks shack bb
	if not FULLREGEN then
		Sound(Head,907330011,M.RNG(80,120)/100,3,false,true,true)
		FULLREGEN = true
		Hum.MaxHealth = "inf"
		Hum.Health = "inf"
		Hum.Parent = nil
		
		Char.Parent = workspace
		for e = 1, #BODY do
			if BODY[e] ~= nil then
				local STUFF = BODY[e]
				local PART = STUFF[1]
				local PARENT = STUFF[2]
				local MATERIAL = STUFF[3]
				local COLOR = STUFF[4]
				local TRANSPARENCY = STUFF[5]
				--local SIZE = STUFF[6]
				local NAME = STUFF[7]
				local VALUE = STUFF[8]
				PART.Parent = PARENT
				
			end
		end
		FULLREGEN = false
		Hum = IN("Humanoid",Char)
		Hum.HipHeight = 2
		Hum.Died:Connect(FullBodyRegen)
	end
end

Hum.Died:connect(FullBodyRegen)

local FOUNDFORGOTTEN = false
while true do
	swait()
	Sine = Sine + Change
	if(not Music or not Music.Parent)then
		local tp = (Music and Music.TimePosition)
		Music = Sound(Char,MusicID,1,1,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tp
	end
	Hum.HipHeight = 2
	Music.SoundId = "rbxassetid://"..MusicID
	Music.Parent = Char
	Music.Pitch = 1
	Music.Volume = 1
	if(not Muted and not FOUNDFORGOTTEN)then
		Music:Resume()
	else
		Music:Pause()
	end
	
	
	if(God)then
		Hum.MaxHealth = 1e100
		Hum.Health = 1e100
		if(not Char:FindFirstChildOfClass'ForceField')then IN("ForceField",Char).Visible = false end
		Hum.Name = M.RNG()*100
	end
	
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (4*PlayerSize)), Char)
	
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Walking and "Walk" or "Idle")
	if(not Effects or not Effects.Parent)then
		Effects = IN("Model",Char)
		Effects.Name = "Effects"
	end																																																																																																				

	Hum.WalkSpeed = WalkSpeed
	if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
	if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
	
	Instance.ClearChildrenOfClass(Char,"BodyColors")
	Torso.Color = C3.N(.5,.5,.5)
	RArm.Color = C3.N(.3,.3,.3)
	LArm.Color = C3.N(.3,.3,.3)
	RLeg.Color = C3.N(.4,.4,.4)
	LLeg.Color = C3.N(.4,.4,.4)

	local Alpha = .1
	RH.C1 = RH.C1:lerp(RHC1*CF.N(0,0-.25*M.C(Sine / 12),0),Alpha)
	LH.C1 = LH.C1:lerp(LHC1*CF.N(-.1,-.5,.5)*CF.N(0,0-.25*M.C(Sine / 12),0),Alpha)
	RS.C1 = RS.C1:lerp(RSC1*CF.N(0,0-.25*M.C(Sine / 12),0),Alpha)
	LS.C1 = LS.C1:lerp(LSC1*CF.N(0,0-.25*M.C(Sine / 12),0),Alpha)
	RJ.C1 = RJ.C1:lerp(CF.N(0,0-.25*M.C(Sine / 12),0),Alpha)
	
	if(NeutralAnims)then	
		if(State == 'Idle')then
			local Alpha = .1
			Change = 2/3
			RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(45),0,M.R(25+5*M.S(Sine / 12))),Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(0,0,-M.R(10+5*M.S(Sine / 12))),Alpha)
			NK.C0 = NK.C0:lerp(NKC0*CF.A(-M.R(0+4.5*M.C(Sine/12)),0,M.R(-2-3*M.C(Sine/12))),Alpha)
			RJ.C0 = RJ.C0:lerp(CF.A(-M.R(4+2.5*M.S(Sine / 12)),0,0),Alpha)
		elseif(State == 'Walk')then
			RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,M.R(10+5*M.S(Sine / 12))),.1)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(M.R(10),0,-M.R(10+5*M.S(Sine / 12))),.1)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(-M.R(45),M.R(15),M.R(25+5*M.S(Sine / 12))),.1)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(-M.R(15),M.R(15),-M.R(10))*CF.A(0,0,-M.R(10+5*M.S(Sine / 12))),.1)
			NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(25+4.5*M.C(Sine/12)),0,M.R(-2-3*M.C(Sine/12))),.1)
			RJ.C0 = RJ.C0:lerp(CF.A(-M.R(25+2.5*M.S(Sine / 12)),0,0)*CF.A(-M.R(2+3*M.C(Sine / 12)),0,0),.1)
		end
	end
	
	FOUNDFORGOTTEN = false
	Hum.DisplayDistanceType = "None"
	for _, c in pairs(workspace:GetChildren()) do
		if c.ClassName == "Model" then
			for _, q in pairs(c:GetChildren()) do
				if (q.Name == "Forgotten Dominus" or q.Name == 'PHAEDRA') and q:IsA'Humanoid' then
					FOUNDFORGOTTEN = true
				end
			end
		end
	end
	if FOUNDFORGOTTEN == true then
		Music:Stop()
	else
		Music.Playing = true
	end
	
	for i,v in next, BloodPuddles do
		local mesh = i:FindFirstChild'CylinderMesh'
		BloodPuddles[i] = v + 1
		if(not mesh or i.Transparency >= 1)then
			i:destroy() 
			BloodPuddles[i] = nil
		elseif(v >= Frame_Speed*4)then
			local trans = (v-Frame_Speed*4)/(Frame_Speed*2)
			i.Transparency = trans
	            if(mesh.Scale.Z > 0)then
	                mesh.Scale = mesh.Scale-V3.N(.05,0,.05)
	            end
		else
			i.Transparency = 0
		end
	end
end
