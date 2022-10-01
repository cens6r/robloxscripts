wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Welcome"; -- the title (ofc)
Text = "Script by Thebigbebra"; -- what the text says (ofc)
Icon = ""; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})





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
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
Frame2 = Instance.new("Frame")
TextBox3 = Instance.new("TextBox")
LocalScript4 = Instance.new("LocalScript")
TextLabel5 = Instance.new("TextLabel")
Frame6 = Instance.new("Frame")
TextLabel7 = Instance.new("TextLabel")
TextLabel8 = Instance.new("TextLabel")
TextBox9 = Instance.new("TextBox")
TextLabel10 = Instance.new("TextLabel")
TextBox11 = Instance.new("TextBox")
TextButton12 = Instance.new("TextButton")
LocalScript13 = Instance.new("LocalScript")
LocalScript14 = Instance.new("LocalScript")
LocalScript15 = Instance.new("LocalScript")
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.096632503, 0, 0.648711979, 0)
Frame1.Size = UDim2.new(0, 438, 0, 179)
Frame1.BackgroundColor = BrickColor.new("Really black")
Frame1.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Frame1.BorderSizePixel = 0
Frame2.Name = "pt1"
Frame2.Parent = Frame1
Frame2.Position = UDim2.new(0, 0, 0.114857376, 0)
Frame2.Size = UDim2.new(0, 438, 0, 9)
Frame2.BackgroundColor = BrickColor.new("Dark blue")
Frame2.BackgroundColor3 = Color3.new(0, 0.215686, 0.65098)
Frame2.BorderSizePixel = 0
TextBox3.Parent = Frame2
TextBox3.Position = UDim2.new(0.098173514, 0, 1.66666675, 0)
TextBox3.Size = UDim2.new(0, 224, 0, 28)
TextBox3.BackgroundColor = BrickColor.new("Black metallic")
TextBox3.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
TextBox3.BorderSizePixel = 0
TextBox3.Font = Enum.Font.SourceSans
TextBox3.FontSize = Enum.FontSize.Size24
TextBox3.Text = ""
TextBox3.TextColor = BrickColor.new("Institutional white")
TextBox3.TextColor3 = Color3.new(1, 1, 1)
TextBox3.TextSize = 23
TextBox3.TextXAlignment = Enum.TextXAlignment.Left
TextBox3.TextYAlignment = Enum.TextYAlignment.Top
TextBox3.ClearTextOnFocus = false
LocalScript4.Parent = Frame2
table.insert(cors,sandbox(LocalScript4,function()
local order = { --Order Of Colors
	Color3.new(1,0,0),
	Color3.new(1,0.5,0),
	Color3.new(1,1,0),
	Color3.new(0.5,1,0),
	Color3.new(0,1,0),
	Color3.new(0,0.5,1),
	Color3.new(0,0,1),
	Color3.new(0.5,0,1),
	Color3.new(1,0,1)
}

local currentcolor = order[1]
while true do
	for i=1,#order do
		local currentcolor = order[i]
		local nextcolor = order[i+1] or order[1]
		for i = 0,1,0.03 do
			wait()
			local color = currentcolor:lerp(nextcolor,i) --Smoothly Changes Color
			script.Parent.BackgroundColor3 = color
		end
		currentcolor = order[i+1] or order[1]
	end
	wait()
end
end))
TextLabel5.Parent = Frame1
TextLabel5.Size = UDim2.new(0, 243, 0, 21)
TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel5.BackgroundTransparency = 1
TextLabel5.BorderSizePixel = 0
TextLabel5.Font = Enum.Font.SourceSans
TextLabel5.FontSize = Enum.FontSize.Size14
TextLabel5.Text = "FE Chat Hax | Made by LeoVeremUA"
TextLabel5.TextColor = BrickColor.new("Institutional white")
TextLabel5.TextColor3 = Color3.new(1, 1, 1)
TextLabel5.TextScaled = true
TextLabel5.TextSize = 14
TextLabel5.TextWrap = true
TextLabel5.TextWrapped = true
Frame6.Name = "pt2"
Frame6.Parent = Frame1
Frame6.Position = UDim2.new(0, 0, 0.401840836, 0)
Frame6.Size = UDim2.new(0, 438, 0, 9)
Frame6.BackgroundColor = BrickColor.new("Dark blue")
Frame6.BackgroundColor3 = Color3.new(0, 0.211765, 0.647059)
Frame6.BorderSizePixel = 0
TextLabel7.Parent = Frame6
TextLabel7.Position = UDim2.new(0, 0, -4, 0)
TextLabel7.Size = UDim2.new(0, 49, 0, 20)
TextLabel7.BackgroundColor = BrickColor.new("Institutional white")
TextLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Font = Enum.Font.SourceSans
TextLabel7.FontSize = Enum.FontSize.Size14
TextLabel7.Text = "You:"
TextLabel7.TextColor = BrickColor.new("Institutional white")
TextLabel7.TextColor3 = Color3.new(1, 1, 1)
TextLabel7.TextScaled = true
TextLabel7.TextSize = 14
TextLabel7.TextWrap = true
TextLabel7.TextWrapped = true
TextLabel8.Parent = Frame6
TextLabel8.Position = UDim2.new(0, 0, 6.77777767, 0)
TextLabel8.Size = UDim2.new(0, 76, 0, 33)
TextLabel8.BackgroundColor = BrickColor.new("Institutional white")
TextLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Font = Enum.Font.SourceSans
TextLabel8.FontSize = Enum.FontSize.Size14
TextLabel8.Text = "ChatHaxx:"
TextLabel8.TextColor = BrickColor.new("Institutional white")
TextLabel8.TextColor3 = Color3.new(1, 1, 1)
TextLabel8.TextScaled = true
TextLabel8.TextSize = 14
TextLabel8.TextWrap = true
TextLabel8.TextWrapped = true
TextBox9.Name = "Usernamee"
TextBox9.Parent = Frame6
TextBox9.Position = UDim2.new(0.194063917, 0, 3.66666651, 0)
TextBox9.Size = UDim2.new(0, 224, 0, 28)
TextBox9.BackgroundColor = BrickColor.new("Black metallic")
TextBox9.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
TextBox9.BorderSizePixel = 0
TextBox9.Font = Enum.Font.SourceSans
TextBox9.FontSize = Enum.FontSize.Size24
TextBox9.Text = ""
TextBox9.TextColor = BrickColor.new("Institutional white")
TextBox9.TextColor3 = Color3.new(1, 1, 1)
TextBox9.TextSize = 23
TextBox9.TextXAlignment = Enum.TextXAlignment.Left
TextBox9.TextYAlignment = Enum.TextYAlignment.Top
TextBox9.ClearTextOnFocus = false
TextLabel10.Parent = Frame6
TextLabel10.Position = UDim2.new(0, 0, 3.11111116, 0)
TextLabel10.Size = UDim2.new(0, 76, 0, 33)
TextLabel10.BackgroundColor = BrickColor.new("Institutional white")
TextLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Font = Enum.Font.SourceSans
TextLabel10.FontSize = Enum.FontSize.Size14
TextLabel10.Text = "Username:"
TextLabel10.TextColor = BrickColor.new("Institutional white")
TextLabel10.TextColor3 = Color3.new(1, 1, 1)
TextLabel10.TextScaled = true
TextLabel10.TextSize = 14
TextLabel10.TextWrap = true
TextLabel10.TextWrapped = true
TextBox11.Name = "Chathaxxx"
TextBox11.Parent = Frame6
TextBox11.Position = UDim2.new(0.194063917, 0, 7.33333302, 0)
TextBox11.Size = UDim2.new(0, 224, 0, 28)
TextBox11.BackgroundColor = BrickColor.new("Black metallic")
TextBox11.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
TextBox11.BorderSizePixel = 0
TextBox11.Font = Enum.Font.SourceSans
TextBox11.FontSize = Enum.FontSize.Size24
TextBox11.Text = ""
TextBox11.TextColor = BrickColor.new("Institutional white")
TextBox11.TextColor3 = Color3.new(1, 1, 1)
TextBox11.TextSize = 23
TextBox11.TextXAlignment = Enum.TextXAlignment.Left
TextBox11.TextYAlignment = Enum.TextYAlignment.Top
TextBox11.ClearTextOnFocus = false
TextButton12.Name = "Send"
TextButton12.Parent = Frame6
TextButton12.Position = UDim2.new(0.746575356, 0, 5.11111116, 0)
TextButton12.Size = UDim2.new(0, 82, 0, 40)
TextButton12.BackgroundColor = BrickColor.new("Black metallic")
TextButton12.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
TextButton12.BorderSizePixel = 0
TextButton12.Font = Enum.Font.Oswald
TextButton12.FontSize = Enum.FontSize.Size14
TextButton12.Text = "Send"
TextButton12.TextColor = BrickColor.new("Really black")
TextButton12.TextColor3 = Color3.new(0, 0, 0)
TextButton12.TextScaled = true
TextButton12.TextSize = 14
TextButton12.TextWrap = true
TextButton12.TextWrapped = true
LocalScript13.Parent = TextButton12
table.insert(cors,sandbox(LocalScript13,function()
script.Parent.MouseButton1Click:Connect(function()

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..script.Parent.Parent.Parent.pt1.TextBox.Text.."                                                                                                   " ..
		"                                                ["..script.Parent.Parent.Usernamee.Text.."]: "..script.Parent.Parent.Chathaxxx.Text.."","All")
end)
end))
LocalScript14.Parent = Frame6
table.insert(cors,sandbox(LocalScript14,function()
local order = { --Order Of Colors
	Color3.new(1,0,0),
	Color3.new(1,0.5,0),
	Color3.new(1,1,0),
	Color3.new(0.5,1,0),
	Color3.new(0,1,0),
	Color3.new(0,0.5,1),
	Color3.new(0,0,1),
	Color3.new(0.5,0,1),
	Color3.new(1,0,1)
}

local currentcolor = order[1]
while true do
	for i=1,#order do
		local currentcolor = order[i]
		local nextcolor = order[i+1] or order[1]
		for i = 0,1,0.03 do
			wait()
			local color = currentcolor:lerp(nextcolor,i) --Smoothly Changes Color
			script.Parent.BackgroundColor3 = color
		end
		currentcolor = order[i+1] or order[1]
	end
	wait()
end
end))
LocalScript15.Name = "Dragify"
LocalScript15.Parent = Frame1
table.insert(cors,sandbox(LocalScript15,function()
local UIS = game:GetService("UserInputService")
function dragify(Frame)
    dragToggle = nil
    local dragSpeed = 0.50
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

dragify(script.Parent)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game.CoreGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
