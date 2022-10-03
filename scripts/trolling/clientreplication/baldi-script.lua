-- baldi script by theamazingnater enjoy peeps
plr = game.Players.LocalPlayer
char = plr.Character

wait(1)
local slap = Instance.new("Sound",char)
slap.SoundId = "rbxassetid://1841427728"
slap.Volume = 10
for i,v in pairs(char:GetChildren()) do
	if v.ClassName == "Part" then
		v.Transparency = 1
	end
end
for i,v in pairs(char:GetChildren()) do
	if v.ClassName == "Accessory" then
		v.Handle.Transparency = 1
	end
end
char.Head.face.Transparency = 1
local sweep = Instance.new("Part")
local sweepdecal1 = Instance.new("Decal",sweep)
local sweepdecal2 = Instance.new("Decal",sweep)
local weld = Instance.new("Weld",sweep)
sweepdecal1.Face = "Back"
sweepdecal1.Texture = "rbxassetid://1814499405"
sweepdecal2.Face = "Front"
sweepdecal2.Texture = "rbxassetid://1814499405"
sweep.Name = "gotta sweep sweep sweep"
sweep.Size = Vector3.new(4.2, 8.4, 0.114)
sweep.Transparency = 1
sweep.CanCollide = false
weld.Part0 = char.Torso
weld.Part1 = sweep
weld.C0 = CFrame.new(-0.466694832, 1.18746996, -0.594377518, -0.999195099, 0, 0.0401160046, 0, 1, 0, -0.0401160046, 0, -0.999195099)
sweep.Parent = char
char.Humanoid.HipHeight = 0.3
slapspeed = 2
walkSpeed = 20.3
char.Humanoid.WalkSpeed = 20.3
anger = 1 -- 1 is normal.
coroutine.wrap(function()
	while true do
		wait()
		if anger == 1 then
			slapspeed = 2 -- Normal speed.
		end
		if anger == 2 then
			slapspeed = 1
		end
		if anger == 3 then
			slapspeed = 0.5
		end
		if anger == 4 then
			slapspeed = 0.1
		end
	end
end)()
sweep.Touched:connect(function(part)
	local human = part.Parent:FindFirstChildOfClass("Humanoid")
	if human and human.Parent.Name ~= char.Name then
		anger = anger + 1
		human.Health = 0
	end 
end)
while true do
	wait(slapspeed)
	sweepdecal1.Texture = "http://www.roblox.com/asset/?id=1814500416"
	sweepdecal2.Texture = "http://www.roblox.com/asset/?id=1814500416"
	slap:Play()
	wait(0.4)
	sweepdecal1.Face = "Back"
    sweepdecal1.Texture = "rbxassetid://1814499405"
    sweepdecal2.Face = "Front"
    sweepdecal2.Texture = "rbxassetid://1814499405"
end
