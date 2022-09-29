-- found on rip discord
-- https://discord.gg/KMS85xNSsg

-- credits: BonelessHat#5794 (id: 992132584928714873)
-- search discord ids on https://discord.id

--[[ desc:
The t pose script, Fly around and scare others. (Only works for r6, and There is no flying script in there... Use an admin script to fly well tposed)
]]
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Pose = Instance.new("TextButton")
local Coming Soon = Instance.new("TextButton")
local HIDE = Instance.new("TextButton")
local OPEN = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(9, 9, 9)
Frame.Position = UDim2.new(0.166156977, 0, 0, 0)
Frame.Size = UDim2.new(0, 163, 0, 454)


Pose.Name = "Pose"
Pose.Parent = ScreenGui
Pose.BackgroundColor3 = Color3.new(9, 9, 9)
Pose.Position = UDim2.new(0.166156977, 0, 0.105935514, 0)
Pose.Size = UDim2.new(0, 163, 0, 50)
Pose.Font = Enum.Font.SourceSans
Pose.Text = "Pose"
Pose.TextColor3 = Color3.new(0, 0, 0)
Pose.TextScaled = true
Pose.TextSize = 14
Pose.TextWrapped = true


HIDE.Name = "HIDE"
HIDE.Parent = ScreenGui
HIDE.BackgroundColor3 = Color3.new(9, 9, 9)
HIDE.Position = UDim2.new(0.166156977, 0, 0.724320531, 0)
HIDE.Size = UDim2.new(0, 163, 0, 56)
HIDE.Font = Enum.Font.SourceSans
HIDE.Text = "HIDE"
HIDE.TextColor3 = Color3.new(0, 0, 0)
HIDE.TextScaled = true
HIDE.TextSize = 14
HIDE.TextWrapped = true

OPEN.Name = "OPEN"
OPEN.Parent = ScreenGui
OPEN.Active = false
OPEN.BackgroundColor3 = Color3.new(9, 9, 9)
OPEN.Position = UDim2.new(0, 0, 0.0418502204, 0)
OPEN.Size = UDim2.new(0, 116, 0, 19)
OPEN.Visible = false
OPEN.Font = Enum.Font.SourceSans
OPEN.Text = "OPEN"
OPEN.TextColor3 = Color3.new(0, 0, 0)
OPEN.TextScaled = true
OPEN.TextSize = 14
OPEN.TextWrapped = true


local function XVGFY_fake_script() -- ScreenGui.LocalScript
local script = Instance.new('LocalScript', ScreenGui)




script.Parent.Pose.MouseButton1Down:connect(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://27432691"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1.473)
k:AdjustSpeed(0)
wait(100000)
k:stop()
end)

script.Parent.Pose.MouseButton1Down:connect(function()
wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "Script Activated!"; -- the title 
Text = "Tposing..."; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})
end)

script.Parent.Pose.MouseButton1Down:connect(function()
wait(2)
game.StarterGui:SetCore("SendNotification", {
Title = "READ!"; -- the title 
Text = "To Stop The Anim Just Reset."; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})
end)


script.Parent.HIDE.MouseButton1Down:connect(function()
for i, v in pairs(script.Parent:children()) do
if v.Name ~= "OPEN" then
v.Visible = false
v.Active = false

else
v.Active = true
v.Visible = true
end
end
end)



script.Parent.OPEN.MouseButton1Down:connect(function()
for i, v in pairs(script.Parent:children()) do
if v.Name ~= "OPEN" then
v.Visible = true
v.Active = true

else
v.Active = false
v.Visible = false
end
end
end)

script.Parent.OPEN.MouseButton1Down:connect(function()
wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "OPENING THE GUI!"; -- the title 
Text = "SUCCESSFULLY"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})
end)


script.Parent.HIDE.MouseButton1Down:connect(function()
wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "CLOSING THE GUI!"; -- the title 
Text = "SUCCESSFULLY!"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})
end)


end
coroutine.wrap(XVGFY_fake_script)()

wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Subscribe For More Gui!"; -- the title 
Text = "Subscribe To Balligusapo YT"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})

wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Credits!"; -- the title 
Text = "Made By Real Creator & Balligusapo YT"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})

wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "READ!"; -- the title 
Text = "Working At R6 Games Only! & Script Is FE"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})

wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Thanks For Using The Script!"; -- the title 
Text = "You Successfully Activated The Tpose GUI!"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})
