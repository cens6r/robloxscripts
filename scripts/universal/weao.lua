local a,b = pcall(function()
    game:GetService("CoreGui"):FindFirstChild("WhatExploitsAreOnline"):Destroy()
end)

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Template = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Signal = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Signal2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Updated = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(33, 36, 37)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.375388443, 0, 0.234393403, 0)
Main.Size = UDim2.new(0.248601615, 0, 0.530035317, 0)

ImageLabel.Parent = Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.30250001, 0, 0.0177777782, 0)
ImageLabel.Size = UDim2.new(0.395000011, 0, 0.300000012, 0)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner.Parent = Main

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.102499999, 0, 0.364444435, 0)
ScrollingFrame.Size = UDim2.new(0.795000017, 0, 0.555555582, 0)
ScrollingFrame.ScrollBarThickness = 4

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Template.Name = "Template"
Template.Parent = ScrollingFrame
Template.BackgroundColor3 = Color3.fromRGB(37, 40, 42)
Template.BorderSizePixel = 0
Template.Position = UDim2.new(0, 0, 1.22070318e-07, 0)
Template.Size = UDim2.new(0.940220177, 0, 0.114463046, 0)

UICorner_2.Parent = Template

Signal.Name = "Signal"
Signal.Parent = Template
Signal.BackgroundColor3 = Color3.fromRGB(59, 234, 87)
Signal.BorderSizePixel = 0
Signal.Position = UDim2.new(0.877449453, 0, 0.0874652416, 0)
Signal.Size = UDim2.new(0.102482893, 0, 0.218880758, 0)

UICorner_3.Parent = Signal

Signal2.Name = "Signal2"
Signal2.Parent = Template
Signal2.BackgroundColor3 = Color3.fromRGB(59, 234, 87)
Signal2.BorderSizePixel = 0
Signal2.Size = UDim2.new(0.0310558993, 0, 1, 0)

UICorner_4.Parent = Signal2

Title.Name = "Title"
Title.Parent = Template
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0683230758, 0, 0, 0)
Title.Size = UDim2.new(0.762793183, 0, 0.385714293, 0)
Title.Font = Enum.Font.Ubuntu
Title.Text = "Exploit Name"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint.Parent = Title
UITextSizeConstraint.MaxTextSize = 20

Updated.Name = "Updated"
Updated.Parent = Template
Updated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Updated.BackgroundTransparency = 1.000
Updated.BorderSizePixel = 0
Updated.Position = UDim2.new(0.0683230758, 0, 0.514285862, 0)
Updated.Size = UDim2.new(0.762793124, 0, 0.385714293, 0)
Updated.Font = Enum.Font.Ubuntu
Updated.Text = "Last Updated"
Updated.TextColor3 = Color3.fromRGB(255, 255, 255)
Updated.TextScaled = true
Updated.TextSize = 14.000
Updated.TextWrapped = true
Updated.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_2.Parent = Updated
UITextSizeConstraint_2.MaxTextSize = 20
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = 'WhatExploitsAreOnline'



local reqqq = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

local req = reqqq({
	Url = 'https://api.whatexploitsare.online/status',
	Method = 'GET'
})

local getasset = getcustomasset or getsynasset
local isfolder = isfolder or syn_isfolder or is_folder
local makefolder = makefolder or make_folder or createfolder or create_folder

if not isfolder("WhatExploitsAreOnline") then
    local icon = reqqq({
        Url = 'https://raw.githubusercontent.com/sunkenball/pics/main/image_2022-10-01_150808818.png',
        Method = 'GET'
    })
    makefolder("WhatExploitsAreOnline")
    writefile("WhatExploitsAreOnline/Logo.png", icon.Body)
end

local Body = game:GetService("HttpService"):JSONDecode(req.Body)
ImageLabel.Image = getasset("WhatExploitsAreOnline/Logo.png")

local Cloneage = Template:Clone()
Template.Visible = false
Cloneage.Parent = Template.Parent
Cloneage:FindFirstChild("Title").Text = tostring("ROBLOX")
Cloneage:FindFirstChild("Updated").Text = tostring(Body[1].Synapse.roblox_version)

for i,v in next, Body do
	for i2,v2 in next, v do
		local Cloneage = Template:Clone()
        Cloneage.Parent = Template.Parent
        Cloneage.Visible = true
        Cloneage.Name = tostring(i2)
        Cloneage:FindFirstChild("Signal").BackgroundColor3 = (v2.updated == true and Color3.fromRGB(59, 234, 87) or Color3.fromRGB(237, 58, 71))
        Cloneage:FindFirstChild("Signal2").BackgroundColor3 = (v2.updated == true and Color3.fromRGB(59, 234, 87) or Color3.fromRGB(237, 58, 71))
        Cloneage:FindFirstChild("Title").Text = i2 .. ' - ' .. tostring(v2.exploit_version == "Unknown" and "Unknown Version" or v2.exploit_version)
        if v2.updated then
            Cloneage:FindFirstChild("Updated").Text = tostring(v2.last_update):gsub('-', "/")
            Cloneage:FindFirstChild("Updated").Text = Cloneage:FindFirstChild("Updated").Text .. " - Working"
        else
            Cloneage:FindFirstChild("Updated").Text = tostring(v2.last_update):gsub('-', "/")
            Cloneage:FindFirstChild("Updated").Text = Cloneage:FindFirstChild("Updated").Text .. " - Not Working"
        end
    end
end

for i,v in next, game:GetService("CoreGui").WhatExploitsAreOnline:GetChildren() do
    v.Name = game:GetService("HttpService"):GenerateGUID()
end

game:GetService("UserInputService").InputBegan:Connect(function(x)
    if x.KeyCode == Enum.KeyCode.RightShift then
        ScreenGui.Enabled = not ScreenGui.Enabled
    end
end)
