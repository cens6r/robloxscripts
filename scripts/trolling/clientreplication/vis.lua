-- Arian#4137 (434725017310330882)

--[[
Arian — 12/31/2021
Working vis with gui and modes. made by Kyutatsuki13.
]]

print([[
___________________________________

Kyutatsuki13's music player script
Build 0161
It's a music player of quality!

___________________________________
]])

player = game:GetService("Players").LocalPlayer
char = player.Character
hed = char:WaitForChild("Head")
root = char:WaitForChild("HumanoidRootPart")
rs = game:GetService("RunService").RenderStepped
mouse = player:GetMouse()
vismode = "rainbow"
firstrun = true
asdid = ""
asdtext = ""
asdtimeposition = 0
asdvolume = 0
asdpitch = 0
asdmax = 0
mode = "local"
asdhi=0
asdmi=0
asdlo=0
asddist=0
asdopen=false
asdcolor = false
synctarget = nil
foundsound = false

mathrandom={x=0;y=0;z=0;}

local rdmx = math.random(0,1)
local rdmy = math.random(0,1)
local rdmz = math.random(0,1)
if rdmx == 0 then mathrandom.x = math.random(40,60) else mathrandom.x = -math.random(40,60) end
if rdmy == 0 then mathrandom.y = math.random(40,60) else mathrandom.y = -math.random(40,60) end
if rdmz == 0 then mathrandom.z = math.random(40,60) else mathrandom.z = -math.random(40,60) end

local origcolor = BrickColor.new("Really red")
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
it = Instance.new
vt = Vector3.new
cf = CFrame.new
bc = BrickColor.new


local leftkey = false
local rightkey = false
local typerot = 1
local rotspeed = 1
local negrotspeed = -1
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end

local Create = LoadLibrary("RbxUtility").Create

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

function CreateSound(asd)
if synctarget == nil then
if mode == "local" then
soundparent=char:WaitForChild("Torso")
else
soundparent=char
end	
sound = Instance.new("Sound",soundparent)
sound.Name = "KyuSound"
sound.Looped = true
effect = Instance.new("EqualizerSoundEffect",sound)
coroutine.resume(coroutine.create(function()
distort = Instance.new("DistortionSoundEffect",sound)
end))
if asd ~= nil then 
sound.SoundId = asdid
sound.TimePosition = asdtimeposition
end
sound:Play()
end
end

function fetchName(id)
cast = false
coroutine.resume(coroutine.create(function() product = game:GetService("MarketplaceService"):GetProductInfo(id, Enum.InfoType.Asset) cast = true end))
if cast == true then
repeat rs:wait()
coroutine.resume(coroutine.create(function() product = game:GetService("MarketplaceService"):GetProductInfo(id, Enum.InfoType.Asset) end))
asdfname = product.Name
until asdfname ~= nil
else
asdfname = ""
end
return asdfname
end

function scan(instance)
if instance.ClassName == "Sound" then
if instance.TimeLength > 20 and instance.IsPlaying and foundsound == false then
asdid = instance.SoundId
sound = instance
foundsound = true
print("Sync to sound :)")
end
end
for _,children in pairs(instance:GetChildren()) do scan(children) end
end

function drawgui()

Prefix = "/"
function findPlayer(name)
for _, players in pairs(game:getService("Players"):GetPlayers()) do
if players.Name:lower():find(name:lower()) then
return players
end
end
end

if firstrun == true then
player.Chatted:connect(function(msg)
if msg:lower():sub(1,#Prefix+#'sync ')==Prefix..'sync ' then
local v = msg:sub(#Prefix+#'sync '+1)
foundsound = false
synctarget = findPlayer(v)
end
end)
end

naeeym2 = Instance.new("BillboardGui",root)
naeeym2.Size = UDim2.new(10, 0, 4, 0)
naeeym2.StudsOffset = Vector3.new(0, 7, 0)
naeeym2.Adornee = root
naeeym2.Name = "TalkingBillBoard"
tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
if firstrun == true then
tecks2.Text = ""
else
tecks2.Text = fetchName(tonumber(asdid:sub(#'rbxassetid://'+1)))
end
tecks2.Font = "Fantasy"
tecks2.TextSize = 25
tecks2.Size = UDim2.new(1,0,1,0)
tecks2.TextStrokeTransparency = 0
tecks2.TextTransparency = 0

parent = player.PlayerGui
ScreenGui0 = Instance.new("ScreenGui")
TextButton1 = Instance.new("TextButton")
Frame2 = Instance.new("Frame")
TextBox3 = Instance.new("TextBox")
TextButton4 = Instance.new("TextButton")
Frame5 = Instance.new("Frame")
Frame6 = Instance.new("Frame")
Frame7 = Instance.new("Frame")
TextLabel8 = Instance.new("TextLabel")
TextButton9 = Instance.new("TextButton")
Frame10 = Instance.new("Frame")
Frame11 = Instance.new("Frame")
TextLabel12 = Instance.new("TextLabel")
TextButton13 = Instance.new("TextButton")
TextButton14 = Instance.new("TextButton")
Frame15 = Instance.new("Frame")
Frame16 = Instance.new("Frame")
Frame17 = Instance.new("Frame")
TextButton18 = Instance.new("TextButton")
TextLabel19 = Instance.new("TextLabel")
Frame20 = Instance.new("Frame")
Frame21 = Instance.new("Frame")
TextButton22 = Instance.new("TextButton")
TextLabel23 = Instance.new("TextLabel")
Frame24 = Instance.new("Frame")
Frame25 = Instance.new("Frame")
TextButton26 = Instance.new("TextButton")
TextLabel27 = Instance.new("TextLabel")
Frame28 = Instance.new("Frame")
Frame29 = Instance.new("Frame")
TextButton30 = Instance.new("TextButton")
TextLabel31 = Instance.new("TextLabel")
Frame32 = Instance.new("Frame")
TextButton33 = Instance.new("TextButton")
TextButton34 = Instance.new("TextButton")
ScreenGui0.Name = "MusicPlayerKyu"
ScreenGui0.Parent = parent
TextButton1.AnchorPoint = Vector2.new(0, 0.5)
TextButton1.Name = "Open/Close"
TextButton1.Parent = ScreenGui0
TextButton1.Size = UDim2.new(0, 20, 0, 300)
TextButton1.Text = ">>"
TextButton1.Position = UDim2.new(0, 0, 0.5, 0)
TextButton1.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton1.SizeConstraint = Enum.SizeConstraint.RelativeXX
TextButton1.Font = Enum.Font.Code
Frame2.AnchorPoint = Vector2.new(0, 0.5)
Frame2.Name = "Core"
Frame2.Parent = ScreenGui0
Frame2.Size = UDim2.new(0, 500, 0, 300)
Frame2.Position = UDim2.new(0, 20, 0.5, 0)
Frame2.BackgroundColor3 = Color3.new(0.615686, 0.615686, 0.615686)
Frame2.SizeConstraint = Enum.SizeConstraint.RelativeXX
TextBox3.Name = "ID"
TextBox3.Parent = Frame2
TextBox3.Size = UDim2.new(0, 100, 0, 100)
if firstrun == true then
TextBox3.Text = "ID"
else
TextBox3.Text = asdtext
end
TextBox3.Position = UDim2.new(0, 50, 0, 20)
TextBox3.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox3.SizeConstraint = Enum.SizeConstraint.RelativeXX
TextBox3.Font = Enum.Font.SciFi
TextBox3.FontSize = Enum.FontSize.Size14
TextButton4.Name = "Play"
TextButton4.Parent = TextBox3
TextButton4.Size = UDim2.new(1, 0, 0, 20)
TextButton4.Text = "PLAY"
TextButton4.Position = UDim2.new(0.5, 0, 1, 0)
TextButton4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton4.Font = Enum.Font.SciFi
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.AnchorPoint = Vector2.new(0.5, 0)
Frame5.Name = "SettingsPanel"
Frame5.Parent = Frame2
Frame5.Size = UDim2.new(0, 300, 0, 150)
Frame5.Position = UDim2.new(1, -20, 0, 20)
Frame5.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
Frame5.AnchorPoint = Vector2.new(1, 0)
Frame6.Name = "Volume"
Frame6.Parent = Frame5
Frame6.Transparency = 0
Frame6.Size = UDim2.new(0, 100, 0, 100)
Frame6.Position = UDim2.new(0, 100, 0.5, 0)
Frame6.BackgroundColor3 = Color3.new(1, 1, 1)
Frame6.BackgroundTransparency = 1
Frame6.AnchorPoint = Vector2.new(0.5, 0.5)
Frame7.Name = "Line"
Frame7.Parent = Frame6
Frame7.Size = UDim2.new(0, 1, 1, 0)
Frame7.Position = UDim2.new(0.5, 0, 0, 0)
Frame7.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)
Frame7.BorderSizePixel = 0
Frame7.AnchorPoint = Vector2.new(0.5, 0)
TextLabel8.Name = "Text"
TextLabel8.Parent = Frame6
TextLabel8.Transparency = 0
TextLabel8.Text = "Volume"
TextLabel8.Position = UDim2.new(0.5, 0, 1, 10)
TextLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Font = Enum.Font.SourceSans
TextLabel8.FontSize = Enum.FontSize.Size10
TextLabel8.AnchorPoint = Vector2.new(0.5, 0)
TextButton9.Name = "DragVol"
TextButton9.Parent = Frame6
TextButton9.Size = UDim2.new(0, 20, 0, 10)
TextButton9.Text = ""
if firstrun == true then
TextButton9.Position = UDim2.new(0.5, 0, 0.5, 0)
else
TextButton9.Position = asdvolume
end
TextButton9.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextButton9.Font = Enum.Font.SourceSans
TextButton9.AnchorPoint = Vector2.new(0.5, 0.5)
Frame10.Name = "Pitch"
Frame10.Parent = Frame5
Frame10.Transparency = 0
Frame10.Size = UDim2.new(0, 100, 0, 100)
Frame10.Position = UDim2.new(0, 50, 0.5, 0)
Frame10.BackgroundColor3 = Color3.new(1, 1, 1)
Frame10.BackgroundTransparency = 1
Frame10.AnchorPoint = Vector2.new(0.5, 0.5)
Frame11.Name = "Line"
Frame11.Parent = Frame10
Frame11.Size = UDim2.new(0, 1, 1, 0)
Frame11.Position = UDim2.new(0.5, 0, 0, 0)
Frame11.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)
Frame11.BorderSizePixel = 0
Frame11.AnchorPoint = Vector2.new(0.5, 0)
TextLabel12.Name = "Text"
TextLabel12.Parent = Frame10
TextLabel12.Transparency = 0
TextLabel12.Text = "Pitch"
TextLabel12.Position = UDim2.new(0.5, 0, 1, 10)
TextLabel12.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Font = Enum.Font.SourceSans
TextLabel12.FontSize = Enum.FontSize.Size10
TextLabel12.AnchorPoint = Vector2.new(0.5, 0)
TextButton13.Name = "DragPitch"
TextButton13.Parent = Frame10
TextButton13.Size = UDim2.new(0, 20, 0, 10)
TextButton13.Text = ""
if firstrun == true then
TextButton13.Position = UDim2.new(0.5, 0, 0.5, 0)
else
TextButton13.Position = asdpitch
end
TextButton13.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextButton13.Font = Enum.Font.SourceSans
TextButton13.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton14.Name = "Reset"
TextButton14.Parent = Frame10
TextButton14.Size = UDim2.new(0, 20, 0, 20)
TextButton14.Text = ""
TextButton14.Position = UDim2.new(0.5, -15, 0.5, 0)
TextButton14.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextButton14.Font = Enum.Font.SourceSans
TextButton14.FontSize = Enum.FontSize.Size14
TextButton14.AnchorPoint = Vector2.new(1, 0.5)
Frame15.Name = "Others"
Frame15.Parent = Frame5
Frame15.Transparency = 0
Frame15.Size = UDim2.new(0, 100, 0, 100)
Frame15.Position = UDim2.new(0, 210, 0.5, 0)
Frame15.BackgroundColor3 = Color3.new(1, 1, 1)
Frame15.BackgroundTransparency = 1
Frame15.AnchorPoint = Vector2.new(0.5, 0.5)
Frame16.Name = "Low"
Frame16.Parent = Frame15
Frame16.Transparency = 0
Frame16.Size = UDim2.new(0, 0, 1, 0)
Frame16.BackgroundColor3 = Color3.new(1, 1, 1)
Frame16.BackgroundTransparency = 1
Frame17.Name = "Line"
Frame17.Parent = Frame16
Frame17.Size = UDim2.new(0, 1, 1, 0)
Frame17.Position = UDim2.new(0.5, 0, 0, 0)
Frame17.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)
Frame17.BorderSizePixel = 0
Frame17.AnchorPoint = Vector2.new(0.5, 0)
TextButton18.Name = "DragLow"
TextButton18.Parent = Frame16
TextButton18.Size = UDim2.new(0, 20, 0, 10)
TextButton18.Text = ""
if firstrun == true then
TextButton18.Position = UDim2.new(0.5, 0, 0.5, -25)
else
TextButton18.Position = asdlo
end
TextButton18.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextButton18.Font = Enum.Font.SourceSans
TextButton18.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel19.Name = "Text"
TextLabel19.Parent = Frame16
TextLabel19.Transparency = 0
TextLabel19.Text = "Low"
TextLabel19.Position = UDim2.new(0.5, 0, 1, 10)
TextLabel19.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel19.BackgroundTransparency = 1
TextLabel19.Font = Enum.Font.SourceSans
TextLabel19.FontSize = Enum.FontSize.Size10
TextLabel19.AnchorPoint = Vector2.new(0.5, 0)
Frame20.Name = "Medium"
Frame20.Parent = Frame15
Frame20.Transparency = 0
Frame20.Size = UDim2.new(0, 0, 1, 0)
Frame20.Position = UDim2.new(0, 40, 0, 0)
Frame20.BackgroundColor3 = Color3.new(1, 1, 1)
Frame20.BackgroundTransparency = 1
Frame21.Name = "Line"
Frame21.Parent = Frame20
Frame21.Size = UDim2.new(0, 1, 1, 0)
Frame21.Position = UDim2.new(0.5, 0, 0, 0)
Frame21.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)
Frame21.BorderSizePixel = 0
Frame21.AnchorPoint = Vector2.new(0.5, 0)
TextButton22.Name = "DragMed"
TextButton22.Parent = Frame20
TextButton22.Size = UDim2.new(0, 20, 0, 10)
TextButton22.Text = ""
if firstrun == true then
TextButton22.Position = UDim2.new(0.5, 0, 0.5, -25)
else
TextButton22.Position = asdmi
end
TextButton22.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextButton22.Font = Enum.Font.SourceSans
TextButton22.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel23.Name = "Text"
TextLabel23.Parent = Frame20
TextLabel23.Transparency = 0
TextLabel23.Text = "Medium"
TextLabel23.Position = UDim2.new(0.5, 0, 1, 10)
TextLabel23.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel23.BackgroundTransparency = 1
TextLabel23.Font = Enum.Font.SourceSans
TextLabel23.FontSize = Enum.FontSize.Size10
TextLabel23.AnchorPoint = Vector2.new(0.5, 0)
Frame24.Name = "High"
Frame24.Parent = Frame15
Frame24.Transparency = 0
Frame24.Size = UDim2.new(0, 0, 1, 0)
Frame24.Position = UDim2.new(0, 80, 0, 0)
Frame24.BackgroundColor3 = Color3.new(1, 1, 1)
Frame24.BackgroundTransparency = 1
Frame25.Name = "Line"
Frame25.Parent = Frame24
Frame25.Size = UDim2.new(0, 1, 1, 0)
Frame25.Position = UDim2.new(0.5, 0, 0, 0)
Frame25.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)
Frame25.BorderSizePixel = 0
Frame25.AnchorPoint = Vector2.new(0.5, 0)
TextButton26.Name = "DragHigh"
TextButton26.Parent = Frame24
TextButton26.Size = UDim2.new(0, 20, 0, 10)
TextButton26.Text = ""
if firstrun == true then
TextButton26.Position = UDim2.new(0.5, 0, 0.5, -25)
else
TextButton26.Position = asdhi
end
TextButton26.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextButton26.Font = Enum.Font.SourceSans
TextButton26.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel27.Name = "Text"
TextLabel27.Parent = Frame24
TextLabel27.Transparency = 0
TextLabel27.Text = "High"
TextLabel27.Position = UDim2.new(0.5, 0, 1, 10)
TextLabel27.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel27.BackgroundTransparency = 1
TextLabel27.Font = Enum.Font.SourceSans
TextLabel27.FontSize = Enum.FontSize.Size10
TextLabel27.AnchorPoint = Vector2.new(0.5, 0)
Frame28.Name = "Distortion"
Frame28.Parent = Frame15
Frame28.Transparency = 0
Frame28.Size = UDim2.new(0, 0, 1, 0)
Frame28.Position = UDim2.new(0, 120, 0, 0)
Frame28.BackgroundColor3 = Color3.new(1, 1, 1)
Frame28.BackgroundTransparency = 1
Frame29.Name = "Line"
Frame29.Parent = Frame28
Frame29.Size = UDim2.new(0, 1, 1, 0)
Frame29.Position = UDim2.new(0.5, 0, 0, 0)
Frame29.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)
Frame29.BorderSizePixel = 0
Frame29.AnchorPoint = Vector2.new(0.5, 0)
TextButton30.Name = "DragDist"
TextButton30.Parent = Frame28
TextButton30.Size = UDim2.new(0, 20, 0, 10)
TextButton30.Text = ""
if firstrun == true then
TextButton30.Position = UDim2.new(0.5, 0, 0.5, 50)
else
TextButton30.Position = asddist
end
TextButton30.BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextButton30.Font = Enum.Font.SourceSans
TextButton30.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel31.Name = "Text"
TextLabel31.Parent = Frame28
TextLabel31.Transparency = 0
TextLabel31.Text = "Dist"
TextLabel31.Position = UDim2.new(0.5, 0, 1, 10)
TextLabel31.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel31.BackgroundTransparency = 1
TextLabel31.Font = Enum.Font.SourceSans
TextLabel31.FontSize = Enum.FontSize.Size10
TextLabel31.AnchorPoint = Vector2.new(0.5, 0)
Frame32.Name = "Line"
Frame32.Parent = Frame5
Frame32.Size = UDim2.new(0, 1, 1, -20)
Frame32.Position = UDim2.new(0.5, -20, 0.5, 0)
Frame32.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Frame32.BorderSizePixel = 0
Frame32.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton33.Name = "Global/Local"
TextButton33.Parent = Frame2
TextButton33.Size = UDim2.new(0, 100, 0, 100)
if mode == "local" then
TextButton33.Text = "LOCAL"
else
TextButton33.Text = "GLOBAL"
end
TextButton33.Position = UDim2.new(0, 50, 0, 180)
TextButton33.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton33.Font = Enum.Font.SciFi
TextButton33.FontSize = Enum.FontSize.Size14
TextButton34.Name = "Style"
TextButton34.Parent = Frame2
TextButton34.Size = UDim2.new(0.5, 50, 0, 100)
TextButton34.Text = "Style: "..vismode
TextButton34.Position = UDim2.new(0.5, 80, 0, 180)
TextButton34.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
TextButton34.Font = Enum.Font.SciFi
TextButton34.FontSize = Enum.FontSize.Size14
TextButton34.TextColor3 = Color3.new(1, 1, 0)
TextButton34.AnchorPoint = Vector2.new(0.5, 0)
Frame2.Visible = asdopen

draggable = {TextButton9;TextButton13;TextButton18;TextButton22;TextButton26;TextButton30}
held = false
trigger = nil
base = UDim2.new(0,0,0,0)

TextButton1.MouseButton1Click:connect(function()
if Frame2.Visible == true then
Frame2.Visible = false
asdopen = false
TextButton1.Text = ">>"
else
Frame2.Visible = true
asdopen = true
TextButton1.Text = "<<"
end
end)

TextButton4.MouseButton1Click:connect(function()
if mode == "local" then
if not char:WaitForChild("Torso"):FindFirstChild("KyuSound") then CreateSound() end
else
if not char:FindFirstChild("KyuSound") then CreateSound() end
end
synctarget = nil
sound:Stop()
soundname = fetchName(TextBox3.Text)
tecks2.Text = soundname
asdid = "rbxassetid://"..TextBox3.Text
sound:Play()
end)

TextButton14.MouseButton1Click:connect(function()
TextButton13.Position = UDim2.new(0.5, 0, 0.5, 0)
end)

TextButton33.MouseButton1Click:connect(function()
if synctarget == nil then
if mode == "local" then
mode = "global"
TextButton33.Text = "GLOBAL"
if char:WaitForChild("Torso"):FindFirstChild("KyuSound") then
sound:Pause()
sound.Parent = char
sound:Resume()
end
else
mode = "local"
TextButton33.Text = "LOCAL"
if char:FindFirstChild("KyuSound") then
sound:Pause()
sound.Parent = char:WaitForChild("Torso")
sound:Resume()
end
end
end
end)

function changemode()
if vismode == "nothing" then
vismode = "rainbow"
local rdmx = math.random(0,1)
local rdmy = math.random(0,1)
local rdmz = math.random(0,1)
if rdmx == 0 then mathrandom.x = math.random(40,60) else mathrandom.x = -math.random(40,60) end
if rdmy == 0 then mathrandom.y = math.random(40,60) else mathrandom.y = -math.random(40,60) end
if rdmz == 0 then mathrandom.z = math.random(40,60) else mathrandom.z = -math.random(40,60) end
elseif vismode == "rainbow" then
vismode = "classic"
bp.Position = char.Head.Position+Vector3.new(0,2,0)
Main.Position = char.Head.Position+Vector3.new(0,2,0)
part:Destroy()
elseif vismode == "classic" then
vismode = "trail"
local rdmx = math.random(0,1)
local rdmy = math.random(0,1)
local rdmz = math.random(0,1)
if rdmx == 0 then mathrandom.x = math.random(40,60) else mathrandom.x = -math.random(40,60) end
if rdmy == 0 then mathrandom.y = math.random(40,60) else mathrandom.y = -math.random(40,60) end
if rdmz == 0 then mathrandom.z = math.random(40,60) else mathrandom.z = -math.random(40,60) end
elseif vismode == "trail" then
part:Destroy()
vismode = "nooby"
elseif vismode == "nooby" then
vismode = "trail kyu"
centralpart:Destroy()
local rdmx = math.random(0,1)
local rdmy = math.random(0,1)
local rdmz = math.random(0,1)
if rdmx == 0 then mathrandom.x = math.random(40,60) else mathrandom.x = -math.random(40,60) end
if rdmy == 0 then mathrandom.y = math.random(40,60) else mathrandom.y = -math.random(40,60) end
if rdmz == 0 then mathrandom.z = math.random(40,60) else mathrandom.z = -math.random(40,60) end
elseif vismode == "trail kyu" then
part:Destroy()
vismode = "nothing"
end
end

TextButton34.MouseButton1Click:connect(function()
changemode()
end)

for i,v in pairs(draggable) do
v.MouseButton1Down:connect(function()
	trigger = v
	base = UDim2.new(0.5,0,0.5,mouse.y) - trigger.Position
	held = true
end)
v.MouseButton1Up:connect(function()
	base = UDim2.new(0.5,0,0.5,0)
	trigger = nil
	held = false
end)
end

mouse.Button1Up:connect(function()
	base = UDim2.new(0.5,0,0.5,0)
	trigger = nil
	held = false
end)

mouse.Move:connect(function()
	if held then
		trigger.Position = UDim2.new(0.5,0,0.5,mouse.y) - base
        if trigger.Position.Y.Offset > 50 then
        trigger.Position = UDim2.new(0.5, 0,0.5, 50)
        end
        if trigger.Position.Y.Offset < -50 then
        trigger.Position = UDim2.new(0.5, 0,0.5, -50)
        end
        if trigger.Position.X.Offset ~= 0 then
        trigger.Position = UDim2.new(0.5, 0,0.5, trigger.Position.Y.Offset)
        end
	end
end)
max = asdmax
Visualiser = Instance.new("Model",char)
Visualiser2 = Instance.new("Model",Visualiser)
Visualiser2.Name = "VisualiserK"
Main = Instance.new("Part",Visualiser)
Main.Name = "VisualiserClassic"
Main.Position = char.Head.Position+Vector3.new(0,2,0)
Main.CanCollide = false
Main.Size = Vector3.new(1,1,1)
Main.Transparency = 1
Visualiserpos = Instance.new("Attachment",Main)
Visualiserpos.Position = Vector3.new(5,0,0)
Visualiserpos2 = Instance.new("Attachment",Main)
Visualiserpos2.Position = Vector3.new(-5,0,0)
bp = Instance.new("BodyPosition",Main)
bp.P = 3500
ba = Instance.new("BodyAngularVelocity",Main)
firstrun = false
end

local i = 0

while rs:wait() do

script.Parent = nil
char = player.Character
root = char:WaitForChild("HumanoidRootPart")

if not player.PlayerGui:FindFirstChild("MusicPlayerKyu") then
drawgui()
CreateSound("BACKUP")
end

if not (foundsound == true or char:FindFirstChild("KyuSound") or char:WaitForChild("Torso"):FindFirstChild("KyuSound")) then
CreateSound("BACKUP")
end

if foundsound == true or char:FindFirstChild("KyuSound") or char:WaitForChild("Torso"):FindFirstChild("KyuSound") then
asdvolume = sound.Volume
asdtimeposition = sound.TimePosition
end

if sound.SoundId ~= asdid and synctarget == nil then
sound:Stop()
sound.SoundId = asdid
soundname = fetchName(tonumber(asdid:sub(#'rbxassetid://'+1)))
sound.TimePosition = asdtimeposition
sound:Play()
end

if foundsound == true or char:FindFirstChild("KyuSound") or char:WaitForChild("Torso"):FindFirstChild("KyuSound") then
if max < sound.PlaybackLoudness then
max = sound.PlaybackLoudness
end
if max > 0 then
max = max -1
end
if not sound:FindFirstChild("EqualizerSoundEffect") then
effect = Instance.new("EqualizerSoundEffect",sound)
end
if not sound:FindFirstChild("DistortionSoundEffect") then
coroutine.resume(coroutine.create(function()
distort = Instance.new("DistortionSoundEffect",sound)
end))
end
sound.Volume = 5-(TextButton9.Position.Y.Offset/10)
sound.PlaybackSpeed = math.ceil((1-(TextButton13.Position.Y.Offset/50))*40)/40
coroutine.resume(coroutine.create(function()
distort.Level = 0.5+(-TextButton30.Position.Y.Offset/50)
end))
effect.HighGain = -(TextButton26.Position.Y.Offset*1.2)
effect.MidGain = -(TextButton22.Position.Y.Offset*1.2)
effect.LowGain = -(TextButton18.Position.Y.Offset*1.2)
for i,v in pairs(Visualiser:FindFirstChild("VisualiserK"):GetChildren()) do
local change = 0.1+(max/5000)
v.Mesh.Scale = v.Mesh.Scale+Vector3.new(change,change,change)
v.Transparency = v.Transparency + 0.05
local light = v:FindFirstChildOfClass("PointLight")
light.Brightness = 2+sound.PlaybackLoudness/25
light.Range = 5+sound.PlaybackLoudness/10
if v.Transparency >= 1 then
v:Destroy()
end
end
else
for i,v in pairs(Visualiser:FindFirstChild("VisualiserK"):GetChildren()) do
local change = 0.1
v.Mesh.Scale = v.Mesh.Scale+Vector3.new(change,change,change)
v.Transparency = v.Transparency + 0.05
if v.Transparency >= 1 then
v:Destroy()
end
end
end
if vismode == "classic" then
block = Instance.new("Part",Visualiser:FindFirstChild("VisualiserK"))
blockm = Instance.new("BlockMesh",block)
if foundsound == true or char:FindFirstChild("KyuSound") or char:WaitForChild("Torso"):FindFirstChild("KyuSound") then
change = sound.PlaybackLoudness/80
blockm.Scale = Vector3.new(1+change,1+change,1+change)
end
block.Anchored = true
block.CanCollide = false
block.Material = Enum.Material.Neon
block.Size = Vector3.new(1,1,1)
light = Instance.new("PointLight",block)
light.Color = Color3.fromHSV(0,0,1)
light.Brightness = 2+sound.PlaybackLoudness/25
light.Range = 5+sound.PlaybackLoudness/10
block.CFrame = CFrame.new(Visualiserpos.WorldPosition,Vector3.new(math.random(0,3600)/10,math.random(0,3600)/10,math.random(0,3600)/10))
--------------
block = Instance.new("Part",Visualiser:FindFirstChild("VisualiserK"))
blockm = Instance.new("BlockMesh",block)
if foundsound == true or char:FindFirstChild("KyuSound") or char:WaitForChild("Torso"):FindFirstChild("KyuSound") then
change = sound.PlaybackLoudness/80
blockm.Scale = Vector3.new(1+change,1+change,1+change)
end
block.Anchored = true
block.CanCollide = false
block.Material = Enum.Material.Neon
block.Size = Vector3.new(1,1,1)
light = Instance.new("PointLight",block)
light.Color = Color3.fromHSV(0,0,1)
light.Brightness = 2+sound.PlaybackLoudness/25
light.Range = 5+sound.PlaybackLoudness/10
block.CFrame = CFrame.new(Visualiserpos2.WorldPosition,Vector3.new(math.random(0,3600)/10,math.random(0,3600)/10,math.random(0,3600)/10))

ba.AngularVelocity = Vector3.new(0,0.2+(max/100),0)
bp.Position = char.Head.Position+Vector3.new(0,2,0)
tecks2.TextColor3 = Color3.fromHSV(0,0,0)
tecks2.TextStrokeColor3 = Color3.fromHSV(0,0,1)
elseif vismode == "rainbow" then
if not char:FindFirstChild("VisualiserRGB") then
part=Instance.new("Part",char)
part.Name="VisualiserRGB"
part.Position=root.Position + Vector3.new(0,10,0)
part.CFrame = CFrame.new(part.Position)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
blockmesh=Instance.new("BlockMesh",part)
end
if not part:FindFirstChildOfClass("BodyPosition") then
bp2=Instance.new("BodyPosition",part)
end
if not part:FindFirstChildOfClass("BodyAngularVelocity") then
ba2=Instance.new("BodyAngularVelocity",part)
end
if not part:FindFirstChildOfClass("PointLight") then
light=Instance.new("PointLight",part)
end
part.Color = Color3.fromHSV(i,1,1)
light.Color = Color3.fromHSV(i,1,1)
light.Brightness = 2+sound.PlaybackLoudness/25
light.Range = 5+sound.PlaybackLoudness/10
part:BreakJoints()
part.CanCollide = false
part.Material = Enum.Material.Neon
blockmesh.Scale= Vector3.new(1+(sound.PlaybackLoudness/150),1+(sound.PlaybackLoudness/150),1+(sound.PlaybackLoudness/150))
part.Size = Vector3.new(1,1,1)
bp2.Position = root.Position + Vector3.new(0,10,0)
ba2.AngularVelocity = Vector3.new((mathrandom.x/100)+(sound.PlaybackLoudness/mathrandom.x),(mathrandom.y/100)+(sound.PlaybackLoudness/mathrandom.y),(mathrandom.z/100)+(sound.PlaybackLoudness/mathrandom.z))
tecks2.TextColor3 = Color3.fromHSV(0,0,1)
tecks2.TextStrokeColor3 = Color3.fromHSV(i,1,1)

if i >= 1 then
i = 0
else
i = i + 0.005
end

elseif vismode == "trail" then

if not char:FindFirstChild("VisualiserRGB") then
local function createtrail(part0,part1,parent)
local trail = Instance.new("Trail",parent)
trail.Attachment0 = part0
trail.Attachment1 = part1
trail.MinLength = 0
trail.Lifetime = 0.05
trail.LightEmission = 1
trail.LightInfluence = 0
trail.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(0,1,1))
--trail.Transparency = NumberSequence.new(0,1)
end
part=Instance.new("Part",char)
part.Name="VisualiserRGB"
part.Position=root.Position + Vector3.new(0,10,0)
part.CFrame = CFrame.new(part.Position)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
blockmesh=Instance.new("BlockMesh",part)
A = Instance.new("Attachment",part)
B = Instance.new("Attachment",part)
C = Instance.new("Attachment",part)
D = Instance.new("Attachment",part)
E = Instance.new("Attachment",part)
F = Instance.new("Attachment",part)
G = Instance.new("Attachment",part)
H = Instance.new("Attachment",part)
A.Position = Vector3.new(1,1,1)
B.Position = Vector3.new(1,-1,1)
C.Position = Vector3.new(-1,1,1)
D.Position = Vector3.new(-1,-1,1)

E.Position = Vector3.new(1,1,-1)
F.Position = Vector3.new(1,-1,-1)
G.Position = Vector3.new(-1,1,-1)
H.Position = Vector3.new(-1,-1,-1)
createtrail(A,E,part)
createtrail(B,F,part)
createtrail(C,G,part)
createtrail(D,H,part)
createtrail(A,B,part)
createtrail(C,D,part)
createtrail(E,F,part)
createtrail(G,H,part)
createtrail(A,C,part)
createtrail(B,D,part)
createtrail(E,G,part)
createtrail(F,H,part)
end
if not part:FindFirstChildOfClass("BodyPosition") then
bp2=Instance.new("BodyPosition",part)
end
if not part:FindFirstChildOfClass("BodyAngularVelocity") then
ba2=Instance.new("BodyAngularVelocity",part)
end
if not part:FindFirstChildOfClass("PointLight") then
light=Instance.new("PointLight",part)
end
part.Color = Color3.fromHSV(i,1,1)
light.Color = Color3.fromHSV(i,1,1)
light.Brightness = 2+sound.PlaybackLoudness/25
light.Range = 5+sound.PlaybackLoudness/10
part:BreakJoints()
part.CanCollide = false
part.Material = Enum.Material.Neon
local asd = 1+(sound.PlaybackLoudness/150)
blockmesh.Scale= Vector3.new(asd/2,asd/2,asd/2)
part.Size = Vector3.new(1,1,1)
bp2.Position = root.Position + Vector3.new(0,10,0)
ba2.AngularVelocity = Vector3.new((mathrandom.x/100)+(sound.PlaybackLoudness/mathrandom.x),(mathrandom.y/100)+(sound.PlaybackLoudness/mathrandom.y),(mathrandom.z/100)+(sound.PlaybackLoudness/mathrandom.z))
tecks2.TextColor3 = Color3.fromHSV(i,1,0.8)
tecks2.TextStrokeColor3 = Color3.fromHSV(i,1,1)
A.Position = Vector3.new(asd/2,asd/2,asd/2)
B.Position = Vector3.new(asd/2,-asd/2,asd/2)
C.Position = Vector3.new(-asd/2,asd/2,asd/2)
D.Position = Vector3.new(-asd/2,-asd/2,asd/2)

E.Position = Vector3.new(asd/2,asd/2,-asd/2)
F.Position = Vector3.new(asd/2,-asd/2,-asd/2)
G.Position = Vector3.new(-asd/2,asd/2,-asd/2)
H.Position = Vector3.new(-asd/2,-asd/2,-asd/2)

if i >= 0.8 then
asdcolor = true
elseif i <= 0.5 then
asdcolor = false
end

if asdcolor == true then
i = i - 0.001
else
i = i + 0.001
end
elseif vismode == "trail kyu" then

if not char:FindFirstChild("VisualiserRGB") then
local function createtrail(part0,part1,parent)
local trail = Instance.new("Trail",parent)
trail.Attachment0 = part0
trail.Attachment1 = part1
trail.MinLength = 0
trail.Lifetime = 0.05
trail.LightEmission = 1
trail.LightInfluence = 0
trail.Color = ColorSequence.new(Color3.new(1,0,1),Color3.new(0,1,1))
--trail.Transparency = NumberSequence.new(0,1)
end
part=Instance.new("Part",char)
part.Name="VisualiserRGB"
part.Position=root.Position + Vector3.new(0,10,0)
part.CFrame = CFrame.new(part.Position)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
blockmesh=Instance.new("BlockMesh",part)
part2=part:Clone()
part2.Parent = part
part2.Transparency = 1
part2.CFrame = CFrame.new(part2.Position)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))

A = Instance.new("Attachment",part)
B = Instance.new("Attachment",part)
C = Instance.new("Attachment",part)
D = Instance.new("Attachment",part)
E = Instance.new("Attachment",part)
F = Instance.new("Attachment",part)
G = Instance.new("Attachment",part)
H = Instance.new("Attachment",part)
A2 = Instance.new("Attachment",part2)
B2 = Instance.new("Attachment",part2)
C2 = Instance.new("Attachment",part2)
D2 = Instance.new("Attachment",part2)
E2 = Instance.new("Attachment",part2)
F2 = Instance.new("Attachment",part2)
G2 = Instance.new("Attachment",part2)
H2 = Instance.new("Attachment",part2)

A.Position = Vector3.new(1,1,1)
B.Position = Vector3.new(1,-1,1)
C.Position = Vector3.new(-1,1,1)
D.Position = Vector3.new(-1,-1,1)

E.Position = Vector3.new(1,1,-1)
F.Position = Vector3.new(1,-1,-1)
G.Position = Vector3.new(-1,1,-1)
H.Position = Vector3.new(-1,-1,-1)

createtrail(A,E,part)
createtrail(B,F,part)
createtrail(C,G,part)
createtrail(D,H,part)
createtrail(A,B,part)
createtrail(C,D,part)
createtrail(E,F,part)
createtrail(G,H,part)
createtrail(A,C,part)
createtrail(B,D,part)
createtrail(E,G,part)
createtrail(F,H,part)

A2.Position = Vector3.new(1,1,1)
B2.Position = Vector3.new(1,-1,1)
C2.Position = Vector3.new(-1,1,1)
D2.Position = Vector3.new(-1,-1,1)

E2.Position = Vector3.new(1,1,-1)
F2.Position = Vector3.new(1,-1,-1)
G2.Position = Vector3.new(-1,1,-1)
H2.Position = Vector3.new(-1,-1,-1)
createtrail(A2,E2,part)
createtrail(B2,F2,part)
createtrail(C2,G2,part)
createtrail(D2,H2,part)
createtrail(A2,B2,part)
createtrail(C2,D2,part)
createtrail(E2,F2,part)
createtrail(G2,H2,part)
createtrail(A2,C2,part)
createtrail(B2,D2,part)
createtrail(E2,G2,part)
createtrail(F2,H2,part)

end
if not part:FindFirstChildOfClass("BodyPosition") then
bp2=Instance.new("BodyPosition",part)
end
if not part:FindFirstChildOfClass("BodyAngularVelocity") then
ba2=Instance.new("BodyAngularVelocity",part)
end
if not part:FindFirstChildOfClass("PointLight") then
light=Instance.new("PointLight",part)
end
if not part2:FindFirstChildOfClass("BodyPosition") then
bp3=Instance.new("BodyPosition",part2)
end
if not part2:FindFirstChildOfClass("BodyAngularVelocity") then
ba3=Instance.new("BodyAngularVelocity",part2)
end
part.Color = Color3.fromHSV(i,1,1)
light.Color = Color3.fromHSV(i,1,1)
light.Brightness = 2+sound.PlaybackLoudness/25
light.Range = 5+sound.PlaybackLoudness/10
part:BreakJoints()
part.Material = Enum.Material.Neon
local asd = 1+(sound.PlaybackLoudness/150)
blockmesh.Scale= Vector3.new(asd/2,asd/2,asd/2)
part.Size = Vector3.new(1,1,1)
part2.Size = Vector3.new(1,1,1)
part.CanCollide = false
part2.CanCollide = false
bp2.Position = root.Position + Vector3.new(0,10,0)
ba2.AngularVelocity = Vector3.new((mathrandom.x/100)+(sound.PlaybackLoudness/mathrandom.x),(mathrandom.y/100)+(sound.PlaybackLoudness/mathrandom.y),(mathrandom.z/100)+(sound.PlaybackLoudness/mathrandom.z))
bp3.Position = root.Position + Vector3.new(0,10,0)
ba3.AngularVelocity = Vector3.new(-(mathrandom.x/100)-(sound.PlaybackLoudness/mathrandom.x),-(mathrandom.y/100)-(sound.PlaybackLoudness/mathrandom.y),-(mathrandom.z/100)-(sound.PlaybackLoudness/mathrandom.z))
tecks2.TextColor3 = Color3.fromHSV(i,1,0.8)
tecks2.TextStrokeColor3 = Color3.fromHSV(i,1,1)
A.Position = Vector3.new(asd/2,asd/2,asd/2)
B.Position = Vector3.new(asd/2,-asd/2,asd/2)
C.Position = Vector3.new(-asd/2,asd/2,asd/2)
D.Position = Vector3.new(-asd/2,-asd/2,asd/2)

E.Position = Vector3.new(asd/2,asd/2,-asd/2)
F.Position = Vector3.new(asd/2,-asd/2,-asd/2)
G.Position = Vector3.new(-asd/2,asd/2,-asd/2)
H.Position = Vector3.new(-asd/2,-asd/2,-asd/2)

A2.Position = Vector3.new(asd,asd,asd)
B2.Position = Vector3.new(asd,-asd,asd)
C2.Position = Vector3.new(-asd,asd,asd)
D2.Position = Vector3.new(-asd,-asd,asd)

E2.Position = Vector3.new(asd,asd,-asd)
F2.Position = Vector3.new(asd,-asd,-asd)
G2.Position = Vector3.new(-asd,asd,-asd)
H2.Position = Vector3.new(-asd,-asd,-asd)

if i >= 0.8 then
asdcolor = true
elseif i <= 0.5 then
asdcolor = false
end

if asdcolor == true then
i = i - 0.001
else
i = i + 0.001
end

elseif vismode == "nothing" then

tecks2.Text = ""

elseif vismode == "nooby" then
if not char:FindFirstChild("noobyvis") then
centralpart = it("Part",char)
centralpart.Name = "noobyvis"
centralpart.CFrame = hed.CFrame + Vector3.new(0,-2.5,0)
centralpart.Anchored = true
centralpart.Size = vt(1,1,1)
centralpart.Transparency = 1
centralpart.CanCollide = false
centralpart2a = it("Part",centralpart)
centralpart2a.CFrame = centralpart.CFrame
centralpart2a.Anchored = true
centralpart2a.Transparency = 0
centralpart2a.BrickColor = origcolor
centralpart2a.Material = "Neon"
centralpart2a.Size = vt(1,1,1)
centralpart2a.CanCollide = false

meshy = Instance.new("SpecialMesh", centralpart2a)
meshy.Scale = vt(1.05,1.05,1.05)
meshy.MeshType = "Sphere"

centralpart2 = it("Part",centralpart)
centralpart2.CFrame = centralpart.CFrame
centralpart2.Anchored = true
centralpart2.Transparency = 0.65
centralpart2.BrickColor = BrickColor.new("Really black")
centralpart2.Material = "Neon"
centralpart2.Size = vt(1,1,1)
centralpart2.CanCollide = false

meshy2 = Instance.new("SpecialMesh", centralpart2)
meshy2.Scale = vt(1.075,1.075,1.075)
meshy2.MeshType = "Sphere"


centralpart3 = it("Part",centralpart)
centralpart3.CFrame = centralpart.CFrame
centralpart3.Anchored = true
centralpart3.Transparency = 0.5
centralpart3.BrickColor = origcolor
centralpart3.Material = "Neon"
centralpart3.Size = vt(0.5,1,0.5)
centralpart3.CanCollide = false

meshy3 = Instance.new("SpecialMesh", centralpart3)
meshy3.Scale = vt(1,0.035,1.075)
meshy3.MeshType = "Brick"

centralpart4 = it("Part",centralpart)
centralpart4.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(15),0)
centralpart4.Anchored = true
centralpart4.Transparency = 0.5
centralpart4.BrickColor = origcolor
centralpart4.Material = "Neon"
centralpart4.Size = vt(0.5,1,0.5)
centralpart4.CanCollide = false

meshy4 = Instance.new("SpecialMesh", centralpart4)
meshy4.Scale = vt(1,0.035,1.075)
meshy4.MeshType = "Brick"

centralpart5 = it("Part",centralpart)
centralpart5.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(30),0)
centralpart5.Anchored = true
centralpart5.Transparency = 0.5
centralpart5.BrickColor = origcolor
centralpart5.Material = "Neon"
centralpart5.Size = vt(0.5,1,0.5)
centralpart5.CanCollide = false

meshy5 = Instance.new("SpecialMesh", centralpart5)
meshy5.Scale = vt(1,0.035,1.075)
meshy5.MeshType = "Brick"

centralpart6 = it("Part",centralpart)
centralpart6.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(45),0)
centralpart6.Anchored = true
centralpart6.Transparency = 0.5
centralpart6.BrickColor = origcolor
centralpart6.Material = "Neon"
centralpart6.Size = vt(0.5,1,0.5)
centralpart6.CanCollide = false

meshy6 = Instance.new("SpecialMesh", centralpart6)
meshy6.Scale = vt(1,0.035,1.075)
meshy6.MeshType = "Brick"

centralpart7 = it("Part",centralpart)
centralpart7.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(60),0)
centralpart7.Anchored = true
centralpart7.Transparency = 0.5
centralpart7.BrickColor = origcolor
centralpart7.Material = "Neon"
centralpart7.Size = vt(0.5,1,0.5)
centralpart7.CanCollide = false

meshy7 = Instance.new("SpecialMesh", centralpart7)
meshy7.Scale = vt(1,0.035,1.075)
meshy7.MeshType = "Brick"

centralpart8 = it("Part",centralpart)
centralpart8.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(75),0)
centralpart8.Anchored = true
centralpart8.Transparency = 0.5
centralpart8.BrickColor = origcolor
centralpart8.Material = "Neon"
centralpart8.Size = vt(0.5,1,0.5)
centralpart8.CanCollide = false

meshy8 = Instance.new("SpecialMesh", centralpart8)
meshy8.Scale = vt(1,0.035,1.075)
meshy8.MeshType = "Brick"

centralpart9 = it("Part",centralpart)
centralpart9.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(90),0)
centralpart9.Anchored = true
centralpart9.Transparency = 0.5
centralpart9.BrickColor = origcolor
centralpart9.Material = "Neon"
centralpart9.Size = vt(0.5,1,0.5)
centralpart9.CanCollide = false

meshy9 = Instance.new("SpecialMesh", centralpart9)
meshy9.Scale = vt(1,0.035,1.075)
meshy9.MeshType = "Brick"

centralpart10 = it("Part",centralpart)
centralpart10.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(105),0)
centralpart10.Anchored = true
centralpart10.Transparency = 0.5
centralpart10.BrickColor = origcolor
centralpart10.Material = "Neon"
centralpart10.Size = vt(0.5,1,0.5)
centralpart10.CanCollide = false

meshy10 = Instance.new("SpecialMesh", centralpart10)
meshy10.Scale = vt(1,0.035,1.075)
meshy10.MeshType = "Brick"

centralpart11 = it("Part",centralpart)
centralpart11.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(120),0)
centralpart11.Anchored = true
centralpart11.Transparency = 0.5
centralpart11.BrickColor = origcolor
centralpart11.Material = "Neon"
centralpart11.Size = vt(0.5,1,0.5)
centralpart11.CanCollide = false

meshy11 = Instance.new("SpecialMesh", centralpart11)
meshy11.Scale = vt(1,0.035,1.075)
meshy11.MeshType = "Brick"

centralpart12 = it("Part",centralpart)
centralpart12.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(135),0)
centralpart12.Anchored = true
centralpart12.Transparency = 0.5
centralpart12.BrickColor = origcolor
centralpart12.Material = "Neon"
centralpart12.Size = vt(0.5,1,0.5)
centralpart12.CanCollide = false

meshy12 = Instance.new("SpecialMesh", centralpart12)
meshy12.Scale = vt(1,0.035,1.075)
meshy12.MeshType = "Brick"

centralpart13 = it("Part",centralpart)
centralpart13.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(150),0)
centralpart13.Anchored = true
centralpart13.Transparency = 0.5
centralpart13.BrickColor = origcolor
centralpart13.Material = "Neon"
centralpart13.Size = vt(0.5,1,0.5)
centralpart13.CanCollide = false

meshy13 = Instance.new("SpecialMesh", centralpart13)
meshy13.Scale = vt(1,0.035,1.075)
meshy13.MeshType = "Brick"

centralpart14 = it("Part",centralpart)
centralpart14.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(165),0)
centralpart14.Anchored = true
centralpart14.Transparency = 0.5
centralpart14.BrickColor = origcolor
centralpart14.Material = "Neon"
centralpart14.Size = vt(0.5,1,0.5)
centralpart14.CanCollide = false

meshy14 = Instance.new("SpecialMesh", centralpart14)
meshy14.Scale = vt(1,0.035,1.075)
meshy14.MeshType = "Brick"

centralpart15 = it("Part",centralpart)
centralpart15.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(180),0)
centralpart15.Anchored = true
centralpart15.Transparency = 0.5
centralpart15.BrickColor = origcolor
centralpart15.Material = "Neon"
centralpart15.Size = vt(0.5,1,0.5)
centralpart15.CanCollide = false

meshy15 = Instance.new("SpecialMesh", centralpart15)
meshy15.Scale = vt(1,0.035,1.075)
meshy15.MeshType = "Brick"

centralparto = it("Part",centralpart)
centralparto.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(0),0)
centralparto.Anchored = true
centralparto.Transparency = 0.5
centralparto.BrickColor = BrickColor.new("Really black")
centralparto.Material = "Neon"
centralparto.Size = vt(0.5,1,0.5)
centralparto.CanCollide = false

meshyo = Instance.new("SpecialMesh", centralparto)
meshyo.Scale = vt(1.05,0.05,0.25)
meshyo.MeshType = "Sphere"

centralparto2 = it("Part",centralpart)
centralparto2.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(90),0)
centralparto2.Anchored = true
centralparto2.Transparency = 0.5
centralparto2.BrickColor = BrickColor.new("Really black")
centralparto2.Material = "Neon"
centralparto2.Size = vt(0.5,1,0.5)
centralparto2.CanCollide = false

meshyo2 = Instance.new("SpecialMesh", centralparto2)
meshyo2.Scale = vt(1.05,0.05,0.25)
meshyo2.MeshType = "Sphere"

centralparto3 = it("Part",centralpart)
centralparto3.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(45),0)
centralparto3.Anchored = true
centralparto3.Transparency = 0.5
centralparto3.BrickColor = BrickColor.new("Maroon")
centralparto3.Material = "Neon"
centralparto3.Size = vt(0.5,1,0.5)
centralparto3.CanCollide = false

meshyo3 = Instance.new("SpecialMesh", centralparto3)
meshyo3.Scale = vt(1.05,0.075,0.25)
meshyo3.MeshType = "Sphere"

centralparto4 = it("Part",centralpart)
centralparto4.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(135),0)
centralparto4.Anchored = true
centralparto4.Transparency = 0.5
centralparto4.BrickColor = BrickColor.new("Maroon")
centralparto4.Material = "Neon"
centralparto4.Size = vt(0.5,1,0.5)
centralparto4.CanCollide = false

meshyo4 = Instance.new("SpecialMesh", centralparto4)
meshyo4.Scale = vt(1.05,0.075,0.25)
meshyo4.MeshType = "Sphere"

eff = Instance.new("ParticleEmitter",centralpart)
eff.Texture = "http://www.roblox.com/asset/?id=243664672"
eff.LightEmission = 0.75
eff.Color = ColorSequence.new(Color3.new(255,0,0))
eff.Lifetime = NumberRange.new(2.5)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.45,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Acceleration = Vector3.new(0,-75,0)
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 90
eff.RotSpeed = NumberRange.new(-500,500)


ogsize = meshy.Scale
ogsize2 = meshy2.Scale
ogsize3 = meshy3.Scale
ogsize4 = meshy4.Scale
ogsize5 = meshy5.Scale
ogsize6 = meshy6.Scale
ogsize7 = meshy7.Scale
ogsize8 = meshy8.Scale
ogsize9 = meshy9.Scale
ogsize10 = meshy10.Scale
ogsize11 = meshy11.Scale
ogsize12 = meshy12.Scale
ogsize13 = meshy13.Scale
ogsize14 = meshy14.Scale
ogsize15 = meshy15.Scale

ogsizeo = meshyo.Scale
ogsizeo2 = meshyo2.Scale
ogsizeo3 = meshyo3.Scale
ogsizeo4 = meshyo4.Scale
end
meshy.Scale = meshy.Scale:lerp(Vector3.new(ogsize.X+sound.PlaybackLoudness/600*3.5,ogsize.Y+sound.PlaybackLoudness/600*3.5,ogsize.Z+sound.PlaybackLoudness/525*3.5),0.8)
meshy2.Scale = meshy2.Scale:lerp(Vector3.new(ogsize2.X+sound.PlaybackLoudness/500*3.5,ogsize2.Y+sound.PlaybackLoudness/500*3.5,ogsize2.Z+sound.PlaybackLoudness/500*3.5),0.8)
meshy3.Scale = meshy3.Scale:lerp(Vector3.new(1,0.035,ogsize3.Z+sound.PlaybackLoudness/100*7),0.8)
meshy4.Scale = meshy4.Scale:lerp(Vector3.new(1,0.035,ogsize4.Z+sound.PlaybackLoudness/100*7.25),0.8)
meshy5.Scale = meshy5.Scale:lerp(Vector3.new(1,0.035,ogsize5.Z+sound.PlaybackLoudness/100*7.5),0.8)
meshy6.Scale = meshy6.Scale:lerp(Vector3.new(1,0.035,ogsize6.Z+sound.PlaybackLoudness/100*7.75),0.8)
meshy7.Scale = meshy7.Scale:lerp(Vector3.new(1,0.035,ogsize7.Z+sound.PlaybackLoudness/100*8),0.8)
meshy8.Scale = meshy8.Scale:lerp(Vector3.new(1,0.035,ogsize8.Z+sound.PlaybackLoudness/100*8.25),0.8)
meshy9.Scale = meshy9.Scale:lerp(Vector3.new(1,0.035,ogsize9.Z+sound.PlaybackLoudness/100*8.5),0.8)
meshy10.Scale = meshy10.Scale:lerp(Vector3.new(1,0.035,ogsize10.Z+sound.PlaybackLoudness/100*8.75),0.8)
meshy11.Scale = meshy11.Scale:lerp(Vector3.new(1,0.035,ogsize11.Z+sound.PlaybackLoudness/100*9),0.8)
meshy12.Scale = meshy12.Scale:lerp(Vector3.new(1,0.035,ogsize12.Z+sound.PlaybackLoudness/100*9.25),0.8)
meshy13.Scale = meshy13.Scale:lerp(Vector3.new(1,0.035,ogsize13.Z+sound.PlaybackLoudness/100*9.5),0.8)
meshy14.Scale = meshy14.Scale:lerp(Vector3.new(1,0.035,ogsize14.Z+sound.PlaybackLoudness/100*9.75),0.8)
meshy15.Scale = meshy15.Scale:lerp(Vector3.new(1,0.035,ogsize15.Z+sound.PlaybackLoudness/100*10),0.8)

meshyo.Scale = meshyo.Scale:lerp(Vector3.new(ogsizeo.X+sound.PlaybackLoudness/250*7.5,0.15,ogsizeo.Z+sound.PlaybackLoudness/1000*250),0.8)
meshyo2.Scale = meshyo2.Scale:lerp(Vector3.new(ogsizeo2.X+sound.PlaybackLoudness/250*7.5,0.15,ogsizeo2.Z+sound.PlaybackLoudness/1000*250),0.8)
meshyo3.Scale = meshyo3.Scale:lerp(Vector3.new(ogsizeo3.X+sound.PlaybackLoudness/250*5,0.225,ogsizeo3.Z+sound.PlaybackLoudness/500*100),0.8)
meshyo4.Scale = meshyo4.Scale:lerp(Vector3.new(ogsizeo4.X+sound.PlaybackLoudness/250*5,0.225,ogsizeo4.Z+sound.PlaybackLoudness/500*100),0.8)
centralpart.Position = root.Position + Vector3.new(0,5,0)
centralpart3.Position = centralpart.Position
centralpart3.CFrame = centralpart3.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart4.Position = centralpart.Position
centralpart4.CFrame = centralpart4.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart5.Position = centralpart.Position
centralpart5.CFrame = centralpart5.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart6.Position = centralpart.Position
centralpart6.CFrame = centralpart6.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart7.Position = centralpart.Position
centralpart7.CFrame = centralpart7.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart8.Position = centralpart.Position
centralpart8.CFrame = centralpart8.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart9.Position = centralpart.Position
centralpart9.CFrame = centralpart9.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart10.Position = centralpart.Position
centralpart10.CFrame = centralpart10.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart11.Position = centralpart.Position
centralpart11.CFrame = centralpart11.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart12.Position = centralpart.Position
centralpart12.CFrame = centralpart12.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart13.Position = centralpart.Position
centralpart13.CFrame = centralpart13.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart14.Position = centralpart.Position
centralpart14.CFrame = centralpart14.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)
centralpart15.Position = centralpart.Position
centralpart15.CFrame = centralpart15.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/750*25),0)

centralparto.Position = centralpart.Position
centralparto.CFrame = centralparto.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/1000*75),0)
centralparto2.Position = centralpart.Position
centralparto2.CFrame = centralparto2.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/1000*75),0)
centralparto3.Position = centralpart.Position
centralparto3.CFrame = centralparto3.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/1000*15),0)
centralparto4.Position = centralpart.Position
centralparto4.CFrame = centralparto4.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/1000*15),0)
centralpart.CFrame = centralpart.CFrame
centralpart2.CFrame = centralpart.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/250),0)
centralpart2a.CFrame = centralpart2.CFrame*CFrame.Angles(0,math.rad(sound.PlaybackLoudness/250),0)
eff.Rate = sound.PlaybackLoudness/3
eff.Speed = NumberRange.new(sound.PlaybackLoudness/5)
eff.Color = ColorSequence.new(Color3.new(sound.PlaybackLoudness/255,0,0))
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,sound.PlaybackLoudness/75,0),NumberSequenceKeypoint.new(1,0,0)})
centralpart2a.Color = Color3.new(sound.PlaybackLoudness/400,0,0)
centralparto3.Color = Color3.new(sound.PlaybackLoudness/375,0,0)
centralparto4.Color = Color3.new(sound.PlaybackLoudness/375,0,0)

tecks2.TextColor3 = Color3.fromRGB(255,0,0)
tecks2.TextStrokeColor3 = Color3.fromHSV(0,0,0)
end
Visualiserpos.Position = Vector3.new(5+(max/10),0,0)
Visualiserpos2.Position = Vector3.new(-5-(max/10),0,0)
Main:BreakJoints()
Main.Anchored = false
TextButton14.Text = math.ceil((1-(TextButton13.Position.Y.Offset/50))*40)/40
TextButton34.Text = "Style: "..vismode
asdmax = max
asdvolume = TextButton9.Position
asdpitch = TextButton13.Position
asddist = TextButton30.Position
asdhi = TextButton26.Position
asdmi = TextButton22.Position
asdlo = TextButton18.Position
asdtext = TextBox3.Text
if synctarget == nil then
foundsound = false
else
if foundsound == false then
print("Trying to Sync...")
scan(synctarget.Character)
else
asdid = sound.SoundId
end
end
end
