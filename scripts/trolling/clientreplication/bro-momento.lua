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
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Weld3 = Instance.new("Weld")
Weld4 = Instance.new("Weld")
Weld5 = Instance.new("Weld")
Part6 = Instance.new("Part")
SpecialMesh7 = Instance.new("SpecialMesh")
Part8 = Instance.new("Part")
SpecialMesh9 = Instance.new("SpecialMesh")
Part10 = Instance.new("Part")
LocalScript11 = Instance.new("LocalScript")
Tool0.Name = "bro momento"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(0, -0, 0, -0.98480773, 0, -0.173648223, 0, 1, 0, 0.173648223, 0, -0.98480773)
Tool0.GripForward = Vector3.new(0.17364822328091, -0, 0.98480772972107)
Tool0.GripRight = Vector3.new(-0.98480772972107, 0, 0.17364822328091)
Part1.Name = "Sizer"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(-0.71662581, 1.66360652, -1.44113588, -0.999744713, -9.87748994e-10, 0.0225970782, 2.88248171e-15, 1, 4.37114878e-08, -0.0225970782, 4.37003287e-08, -0.999744713)
Part1.Orientation = Vector3.new(0, 178.71000671387, 0)
Part1.Position = Vector3.new(-0.71662580966949, 1.6636065244675, -1.4411358833313)
Part1.Rotation = Vector3.new(-180, 1.289999961853, 180)
Part1.Color = Color3.new(1, 0, 0)
Part1.Size = Vector3.new(0.59999996423721, 0.12640000879765, 0.12110000103712)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Really red")
Part1.CanCollide = false
Part1.Material = Enum.Material.SmoothPlastic
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Really red")
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshType = Enum.MeshType.Sphere
Weld3.Name = "BTWeld"
Weld3.Parent = Part1
Weld3.C1 = CFrame.new(-0.242927551, -0.355499744, 0.0276489258, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld3.Part0 = Part1
Weld3.Part1 = Part8
Weld3.part1 = Part8
Weld4.Name = "BTWeld"
Weld4.Parent = Part1
Weld4.C1 = CFrame.new(0.231071472, -0.355499744, 0.0276489258, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld4.Part0 = Part1
Weld4.Part1 = Part6
Weld4.part1 = Part6
Weld5.Name = "BTWeld"
Weld5.Parent = Part1
Weld5.C1 = CFrame.new(0, -0.126400471, 0.75050354, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld5.Part0 = Part1
Weld5.Part1 = Part10
Weld5.part1 = Part10
Part6.Parent = Tool0
Part6.CFrame = CFrame.new(-0.486238122, 2.01910639, -1.4082725, -0.999744713, -9.87748994e-10, 0.0225970782, 2.88248171e-15, 1, 4.37114878e-08, -0.0225970782, 4.37003287e-08, -0.999744713)
Part6.Orientation = Vector3.new(0, 178.71000671387, 0)
Part6.Position = Vector3.new(-0.48623812198639, 2.019106388092, -1.4082725048065)
Part6.Rotation = Vector3.new(-180, 1.289999961853, 180)
Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part6.Size = Vector3.new(0.13825000822544, 0.12640000879765, 0.071100004017353)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.BrickColor = BrickColor.new("Really black")
Part6.CanCollide = false
Part6.Material = Enum.Material.SmoothPlastic
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.brickColor = BrickColor.new("Really black")
SpecialMesh7.Parent = Part6
SpecialMesh7.MeshType = Enum.MeshType.Sphere
Part8.Parent = Tool0
Part8.CFrame = CFrame.new(-0.960116148, 2.01910639, -1.41898346, -0.999744713, -9.87748994e-10, 0.0225970782, 2.88248171e-15, 1, 4.37114878e-08, -0.0225970782, 4.37003287e-08, -0.999744713)
Part8.Orientation = Vector3.new(0, 178.71000671387, 0)
Part8.Position = Vector3.new(-0.960116147995, 2.019106388092, -1.4189834594727)
Part8.Rotation = Vector3.new(-180, 1.289999961853, 180)
Part8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part8.Size = Vector3.new(0.13825000822544, 0.12640000879765, 0.071100004017353)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.BrickColor = BrickColor.new("Really black")
Part8.CanCollide = false
Part8.Material = Enum.Material.SmoothPlastic
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.brickColor = BrickColor.new("Really black")
SpecialMesh9.Parent = Part8
SpecialMesh9.MeshType = Enum.MeshType.Sphere
Part10.Name = "Handle"
Part10.Parent = Tool0
Part10.CFrame = CFrame.new(-0.733585, 1.790007, -0.690823972, -0.999744713, -9.87748994e-10, 0.0225970782, 2.88248171e-15, 1, 4.37114878e-08, -0.0225970782, 4.37003287e-08, -0.999744713)
Part10.Orientation = Vector3.new(0, 178.71000671387, 0)
Part10.Position = Vector3.new(-0.73358500003815, 1.7900069952011, -0.69082397222519)
Part10.Rotation = Vector3.new(-180, 1.289999961853, 180)
Part10.Color = Color3.new(0.996078, 0.952941, 0.733333)
Part10.Size = Vector3.new(1.5800001621246, 1.5800001621246, 1.5800001621246)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("Buttermilk")
Part10.CanCollide = false
Part10.Material = Enum.Material.SmoothPlastic
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.brickColor = BrickColor.new("Buttermilk")
Part10.Shape = Enum.PartType.Ball
LocalScript11.Parent = Tool0
table.insert(cors,sandbox(LocalScript11,function()
local TweenService = game:GetService("TweenService")

local Tool = script.Parent

local Handle = Tool and Tool:FindFirstChild("Handle") or Tool:WaitForChild("Handle")
local Sizer = Tool and Tool:FindFirstChild("Sizer") or Tool:WaitForChild("Sizer")

local Sound

local Equipped = false

Tool.Equipped:Connect(function()
	Sound = Instance.new("Sound", Handle)
	Sound.SoundId = "rbxassetid://3505275212"
	Sound.Volume = 3
	
	Sound.Looped = true
	Sound:Play()
	
	Equipped = true
end)

Tool.Unequipped:Connect(function()
	if Sound then
		Sound:Destroy()
	end
	
	Equipped = false
end)

while wait() do
	if Equipped and Sound then
		local Args = {Sizer, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = Vector3.new(0.6, Sound.PlaybackLoudness/500, 0.121)}}
		
		local Tween = TweenService:Create(table.unpack(Args))
		
		Tween:Play()
		--Tween.Completed:Wait()
	end
end


end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
