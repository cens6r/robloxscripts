-- loadstring: loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()

-- Objects

local ChatingGui = Instance.new("ScreenGui")
local ChatFrame = Instance.new("Frame")
local ChatBox = Instance.new("TextBox")
local ConfirmButton = Instance.new("TextButton")

-- Properties

ChatingGui.Name = "ChatingGui"
ChatingGui.Parent = game.CoreGui

ChatFrame.Name = "ChatFrame"
ChatFrame.Parent = ChatingGui
ChatFrame.Active = true
ChatFrame.BackgroundColor3 = Color3.new(0.0901961, 0.14902, 1)
ChatFrame.BackgroundTransparency = 0.20000000298023
ChatFrame.BorderSizePixel = 3
ChatFrame.Draggable = true
ChatFrame.Position = UDim2.new(0.704775691, 0, 0.604347825, 0)
ChatFrame.Size = UDim2.new(0.285817653, 0, 0.284057975, 0)

ChatBox.Name = "ChatBox"
ChatBox.Parent = ChatFrame
ChatBox.BackgroundColor3 = Color3.new(0.0901961, 0.14902, 1)
ChatBox.BackgroundTransparency = 0.30000001192093
ChatBox.BorderSizePixel = 3
ChatBox.Position = UDim2.new(0, 0, 0.200000003, 0)
ChatBox.Size = UDim2.new(1, 0, 0.550000012, 0)
ChatBox.Font = Enum.Font.SourceSans
ChatBox.FontSize = Enum.FontSize.Size14
ChatBox.Text = "Type something here to chat it anonymously!"
ChatBox.TextScaled = true
ChatBox.TextSize = 14
ChatBox.TextWrapped = true

ConfirmButton.Name = "ConfirmButton"
ConfirmButton.Parent = ChatFrame
ConfirmButton.BackgroundColor3 = Color3.new(0, 0.666667, 0)
ConfirmButton.BackgroundTransparency = 0.30000001192093
ConfirmButton.Position = UDim2.new(0, 0, 0.75, 0)
ConfirmButton.Selectable = false
ConfirmButton.Size = UDim2.new(1, 0, 0, 50)
ConfirmButton.Font = Enum.Font.SourceSansSemibold
ConfirmButton.FontSize = Enum.FontSize.Size14
ConfirmButton.Text = "Chat!"
ConfirmButton.TextScaled = true
ConfirmButton.TextSize = 14
ConfirmButton.TextWrapped = true

ConfirmButton.MouseButton1Click:connect(function()
	game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ChatBox.Text, "White")
	local bc = Color3.fromRGB(255,255,255)
	local xd = game.Players.LocalPlayer.Name
	game.StarterGui:SetCore("ChatMakeSystemMessage", {Text = "["..xd.."]: "..ChatBox.Text.."", Font = Enum.Font.SourceSansBold, Color = bc, FontSize = Enum.FontSize.Size96})
end)
