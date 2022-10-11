local library = {
	["icons"] = {
		["aim"] = 4839912908,
		["palette"] = 4851430904,
		["visual"] = 4840131686,
		["character"] = 4896993168,
		["money"] = 4896998441,
		["gun"] = 4897002291,
	}
}

do local obj = game:GetService('CoreGui'):FindFirstChild('gameover') if obj then obj:Destroy() end end

local gameover = Instance.new("ScreenGui")
local prefabs = Instance.new("Frame")
local subtabbutton = Instance.new("ImageButton")
local icon = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local tabbutton = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local keybind = Instance.new("ImageButton")
local title = Instance.new("TextLabel")
local back = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local slider = Instance.new("ImageButton")
local button = Instance.new("TextButton")
local line = Instance.new("ImageLabel")
local fill = Instance.new("ImageLabel")
local UIGradient_4 = Instance.new("UIGradient")
local circle = Instance.new("ImageLabel")
local UIGradient_5 = Instance.new("UIGradient")
local title_2 = Instance.new("TextLabel")
local val = Instance.new("TextLabel")
local textbox = Instance.new("ImageButton")
local TextBox = Instance.new("TextBox")
local title_3 = Instance.new("TextLabel")
local toggle = Instance.new("ImageButton")
local button_2 = Instance.new("TextButton")
local back_2 = Instance.new("ImageLabel")
local fill_2 = Instance.new("ImageLabel")
local UIGradient_6 = Instance.new("UIGradient")
local title_4 = Instance.new("TextLabel")
local label = Instance.new("Frame")
local label_2 = Instance.new("TextLabel")
local UIGradient_7 = Instance.new("UIGradient")
local button_3 = Instance.new("ImageButton")
local title_5 = Instance.new("TextLabel")
local color = Instance.new("ImageLabel")
local button_4 = Instance.new("TextButton")
local back_3 = Instance.new("ImageLabel")
local fill_3 = Instance.new("ImageLabel")
local UIGradient_8 = Instance.new("UIGradient")
local title_6 = Instance.new("TextLabel")
local dropdown = Instance.new("ImageButton")
local dropframe = Instance.new("ImageButton")
local dropscroll = Instance.new("ScrollingFrame")
local list = Instance.new("UIListLayout")
local title_7 = Instance.new("TextLabel")
local button_5 = Instance.new("TextButton")
local selected = Instance.new("ImageLabel")
local icon_2 = Instance.new("ImageButton")
local UIGradient_9 = Instance.new("UIGradient")
local value = Instance.new("TextLabel")
local UIGradient_10 = Instance.new("UIGradient")
local section = Instance.new("ImageLabel")
local stuff = Instance.new("ImageLabel")
local UIListLayout = Instance.new("UIListLayout")
local subtab = Instance.new("Frame")
local mainholder1 = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local mainholder2 = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local mainholder3 = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local tab = Instance.new("Frame")
local colorpicker = Instance.new("ImageLabel")
local sat = Instance.new("ImageLabel")
local indicator = Instance.new("ImageLabel")
local hue = Instance.new("ImageLabel")
local indicator_2 = Instance.new("ImageButton")
local UIGradient_11 = Instance.new("UIGradient")
local title2 = Instance.new("TextLabel")
local UIGradient_12 = Instance.new("UIGradient")
local title1 = Instance.new("TextLabel")
local UIGradient_13 = Instance.new("UIGradient")
local rgbholder = Instance.new("Frame")
local r = Instance.new("ImageLabel")
local title_8 = Instance.new("TextLabel")
local list_2 = Instance.new("UIListLayout")
local g = Instance.new("ImageLabel")
local title_9 = Instance.new("TextLabel")
local b = Instance.new("ImageLabel")
local title_10 = Instance.new("TextLabel")
local stab_tab = Instance.new("Frame")
local list_3 = Instance.new("UIListLayout")
local main = Instance.new("ImageLabel")
local barup = Instance.new("ImageLabel")
local title1_2 = Instance.new("TextLabel")
local UIGradient_14 = Instance.new("UIGradient")
local title2_2 = Instance.new("TextLabel")
local UIGradient_15 = Instance.new("UIGradient")
local bardown = Instance.new("ImageLabel")
local mtabholder = Instance.new("Frame")
local list_4 = Instance.new("UIListLayout")
local stabholder = Instance.new("Frame")
local holder = Instance.new("Frame")
local circle_2 = Instance.new("ImageLabel")
local dropdownelement = Instance.new("TextButton")
local UIGradient_16 = Instance.new("UIGradient")

--Properties:

gameover.Name = "gameover"
gameover.Parent = game:GetService('CoreGui')
gameover.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

prefabs.Name = "prefabs"
prefabs.Parent = gameover
prefabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
prefabs.Size = UDim2.new(0, 100, 0, 100)
prefabs.Visible = false

subtabbutton.Name = "subtabbutton"
subtabbutton.Parent = prefabs
subtabbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtabbutton.BackgroundTransparency = 1.000
subtabbutton.Position = UDim2.new(0, 12, 0, 61)
subtabbutton.Size = UDim2.new(0, 30, 0, 30)
subtabbutton.Image = "rbxassetid://4641149554"
subtabbutton.ImageColor3 = Color3.fromRGB(28, 28, 28)
subtabbutton.ScaleType = Enum.ScaleType.Slice
subtabbutton.SliceCenter = Rect.new(4, 4, 296, 296)

icon.Name = "icon"
icon.Parent = subtabbutton
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 1.000
icon.Position = UDim2.new(0, 6, 0, 6)
icon.Size = UDim2.new(1, -12, 1, -12)
icon.Image = "rbxassetid://4839912908"
icon.ImageTransparency = 0.200
icon.SliceCenter = Rect.new(4, 4, 296, 296)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(88, 88, 88))}
UIGradient.Rotation = 70
UIGradient.Parent = icon

tabbutton.Name = "tabbutton"
tabbutton.Parent = prefabs
tabbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tabbutton.BackgroundTransparency = 1.000
tabbutton.Size = UDim2.new(0, 40, 0, 20)
tabbutton.Font = Enum.Font.GothamSemibold
tabbutton.Text = "Game"
tabbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
tabbutton.TextSize = 12.000
tabbutton.TextTransparency = 0.200

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = tabbutton

keybind.Name = "keybind"
keybind.Parent = prefabs
keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keybind.BackgroundTransparency = 1.000
keybind.Size = UDim2.new(1, 0, 0, 30)
keybind.Image = "rbxassetid://4641149554"
keybind.ImageColor3 = Color3.fromRGB(28, 28, 28)
keybind.ScaleType = Enum.ScaleType.Slice
keybind.SliceCenter = Rect.new(4, 4, 296, 296)

title.Name = "title"
title.Parent = keybind
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0, 10, 0, -1)
title.Size = UDim2.new(1, -10, 1, 0)
title.Font = Enum.Font.GothamSemibold
title.Text = "Keybind"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 12.000
title.TextTransparency = 0.300
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

back.Name = "back"
back.Parent = keybind
back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
back.BackgroundTransparency = 1.000
back.Position = UDim2.new(1, -64, 0.5, -10)
back.Size = UDim2.new(0, 54, 0, 20)
back.Image = "rbxassetid://4840201589"
back.ImageColor3 = Color3.fromRGB(24, 24, 24)
back.ScaleType = Enum.ScaleType.Slice
back.SliceCenter = Rect.new(2, 2, 298, 298)

TextLabel.Parent = back
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "RightShift"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 10.000

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_3.Rotation = 90
UIGradient_3.Parent = TextLabel

slider.Name = "slider"
slider.Parent = prefabs
slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
slider.BackgroundTransparency = 1.000
slider.Size = UDim2.new(1, 0, 0, 60)
slider.Image = "rbxassetid://4641149554"
slider.ImageColor3 = Color3.fromRGB(28, 28, 28)
slider.ScaleType = Enum.ScaleType.Slice
slider.SliceCenter = Rect.new(4, 4, 296, 296)

button.Name = "button"
button.Parent = slider
button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundTransparency = 1.000
button.Position = UDim2.new(0, 10, 0, 34)
button.Size = UDim2.new(1, -20, 0, 16)
button.Font = Enum.Font.SourceSans
button.Text = ""
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.TextSize = 14.000

line.Name = "line"
line.Parent = button
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BackgroundTransparency = 1.000
line.Position = UDim2.new(0, 0, 0.5, -2)
line.Size = UDim2.new(1, 0, 0, 5)
line.Image = "rbxassetid://4840201589"
line.ImageColor3 = Color3.fromRGB(36, 36, 36)
line.ScaleType = Enum.ScaleType.Slice
line.SliceCenter = Rect.new(2, 2, 298, 298)

fill.Name = "fill"
fill.Parent = line
fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fill.BackgroundTransparency = 1.000
fill.Size = UDim2.new(0.5, 0, 1, 0)
fill.Image = "rbxassetid://4840201589"
fill.ImageColor3 = Color3.fromRGB(255, 90, 90)
fill.ScaleType = Enum.ScaleType.Slice
fill.SliceCenter = Rect.new(2, 2, 298, 298)

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(103, 103, 103))}
UIGradient_4.Rotation = 90
UIGradient_4.Parent = fill

circle.Name = "circle"
circle.Parent = fill
circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circle.BackgroundTransparency = 1.000
circle.Position = UDim2.new(1, -6, 0.5, -6)
circle.Size = UDim2.new(0, 12, 0, 12)
circle.Image = "rbxassetid://4648597655"
circle.ScaleType = Enum.ScaleType.Slice
circle.SliceCenter = Rect.new(6, 6, 294, 294)

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(157, 157, 157))}
UIGradient_5.Rotation = 90
UIGradient_5.Parent = circle

title_2.Name = "title"
title_2.Parent = slider
title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_2.BackgroundTransparency = 1.000
title_2.Position = UDim2.new(0, 10, 0, 4)
title_2.Size = UDim2.new(1, -10, 0, 24)
title_2.Font = Enum.Font.GothamSemibold
title_2.Text = "Slider"
title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
title_2.TextSize = 12.000
title_2.TextTransparency = 0.300
title_2.TextWrapped = true
title_2.TextXAlignment = Enum.TextXAlignment.Left

val.Name = "val"
val.Parent = slider
val.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
val.BackgroundTransparency = 1.000
val.Position = UDim2.new(0.462500006, -25, 0, 4)
val.Size = UDim2.new(0, 101, 0, 24)
val.Font = Enum.Font.Gotham
val.Text = "50"
val.TextColor3 = Color3.fromRGB(255, 255, 255)
val.TextSize = 12.000
val.TextTransparency = 0.300
val.TextWrapped = true
val.TextXAlignment = Enum.TextXAlignment.Right

textbox.Name = "textbox"
textbox.Parent = prefabs
textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textbox.BackgroundTransparency = 1.000
textbox.Size = UDim2.new(1, 0, 0, 60)
textbox.Image = "rbxassetid://4641149554"
textbox.ImageColor3 = Color3.fromRGB(28, 28, 28)
textbox.ScaleType = Enum.ScaleType.Slice
textbox.SliceCenter = Rect.new(4, 4, 296, 296)

TextBox.Parent = textbox
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.ClipsDescendants = true
TextBox.Position = UDim2.new(0, 10, 0, 34)
TextBox.Size = UDim2.new(1, -20, 0, 16)
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderColor3 = Color3.fromRGB(60, 60, 60)
TextBox.PlaceholderText = "Input ..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 12.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left

title_3.Name = "title"
title_3.Parent = textbox
title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_3.BackgroundTransparency = 1.000
title_3.Position = UDim2.new(0, 10, 0, 4)
title_3.Size = UDim2.new(1, -10, 0, 24)
title_3.Font = Enum.Font.GothamSemibold
title_3.Text = "Textbox"
title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
title_3.TextSize = 12.000
title_3.TextTransparency = 0.300
title_3.TextWrapped = true
title_3.TextXAlignment = Enum.TextXAlignment.Left

toggle.Name = "toggle"
toggle.Parent = prefabs
toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggle.BackgroundTransparency = 1.000
toggle.Size = UDim2.new(1, 0, 0, 30)
toggle.Image = "rbxassetid://4641149554"
toggle.ImageColor3 = Color3.fromRGB(28, 28, 28)
toggle.ScaleType = Enum.ScaleType.Slice
toggle.SliceCenter = Rect.new(4, 4, 296, 296)

button_2.Name = "button"
button_2.Parent = toggle
button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button_2.BackgroundTransparency = 1.000
button_2.Size = UDim2.new(1, 0, 1, 0)
button_2.Font = Enum.Font.SourceSans
button_2.Text = ""
button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
button_2.TextSize = 14.000

back_2.Name = "back"
back_2.Parent = button_2
back_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
back_2.BackgroundTransparency = 1.000
back_2.Position = UDim2.new(1, -24, 0.5, -8)
back_2.Size = UDim2.new(0, 16, 0, 16)
back_2.Image = "rbxassetid://4840201589"
back_2.ImageColor3 = Color3.fromRGB(24, 24, 24)
back_2.ScaleType = Enum.ScaleType.Slice
back_2.SliceCenter = Rect.new(2, 2, 298, 298)

fill_2.Name = "fill"
fill_2.Parent = back_2
fill_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fill_2.BackgroundTransparency = 1.000
fill_2.Position = UDim2.new(0, 2, 0, 2)
fill_2.Size = UDim2.new(1, -4, 1, -4)
fill_2.Image = "rbxassetid://4840201589"
fill_2.ImageColor3 = Color3.fromRGB(255, 90, 90)
fill_2.ScaleType = Enum.ScaleType.Slice
fill_2.SliceCenter = Rect.new(2, 2, 298, 298)

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(103, 103, 103))}
UIGradient_6.Rotation = 90
UIGradient_6.Parent = fill_2

title_4.Name = "title"
title_4.Parent = toggle
title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_4.BackgroundTransparency = 1.000
title_4.Position = UDim2.new(0, 10, 0, -1)
title_4.Size = UDim2.new(1, -10, 1, 0)
title_4.Font = Enum.Font.GothamSemibold
title_4.Text = "Toggle"
title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
title_4.TextSize = 12.000
title_4.TextTransparency = 0.300
title_4.TextWrapped = true
title_4.TextXAlignment = Enum.TextXAlignment.Left

label.Name = "label"
label.Parent = prefabs
label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1.000
label.Size = UDim2.new(1, 0, 0, 24)

label_2.Name = "label"
label_2.Parent = label
label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label_2.BackgroundTransparency = 1.000
label_2.Position = UDim2.new(0, 4, 0, 0)
label_2.Size = UDim2.new(1, -16, 0, 24)
label_2.Font = Enum.Font.GothamSemibold
label_2.Text = "Section 2"
label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
label_2.TextSize = 12.000
label_2.TextWrapped = true
label_2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_7.Rotation = 90
UIGradient_7.Parent = label_2

button_3.Name = "button"
button_3.Parent = prefabs
button_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button_3.BackgroundTransparency = 1.000
button_3.Size = UDim2.new(1, 0, 0, 30)
button_3.Image = "rbxassetid://4641149554"
button_3.ImageColor3 = Color3.fromRGB(28, 28, 28)
button_3.ScaleType = Enum.ScaleType.Slice
button_3.SliceCenter = Rect.new(4, 4, 296, 296)

title_5.Name = "title"
title_5.Parent = button_3
title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_5.BackgroundTransparency = 1.000
title_5.Position = UDim2.new(0, 10, 0, -1)
title_5.Size = UDim2.new(1, -10, 1, 0)
title_5.Font = Enum.Font.GothamSemibold
title_5.Text = "Button"
title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
title_5.TextSize = 12.000
title_5.TextTransparency = 0.300
title_5.TextWrapped = true
title_5.TextXAlignment = Enum.TextXAlignment.Left

color.Name = "color"
color.Parent = prefabs
color.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
color.BackgroundTransparency = 1.000
color.Position = UDim2.new(0, 0, 0, 102)
color.Size = UDim2.new(1, 0, 0, 30)
color.Image = "rbxassetid://4641149554"
color.ImageColor3 = Color3.fromRGB(28, 28, 28)
color.ScaleType = Enum.ScaleType.Slice
color.SliceCenter = Rect.new(4, 4, 296, 296)

button_4.Name = "button"
button_4.Parent = color
button_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button_4.BackgroundTransparency = 1.000
button_4.Position = UDim2.new(1, -46, 0.5, -9)
button_4.Size = UDim2.new(0, 36, 0, 18)
button_4.Font = Enum.Font.SourceSans
button_4.Text = ""
button_4.TextColor3 = Color3.fromRGB(0, 0, 0)
button_4.TextSize = 14.000

back_3.Name = "back"
back_3.Parent = button_4
back_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
back_3.BackgroundTransparency = 1.000
back_3.Position = UDim2.new(0, 1, 0, 1)
back_3.Size = UDim2.new(1, -2, 1, -2)
back_3.Image = "rbxassetid://4840201589"
back_3.ImageColor3 = Color3.fromRGB(24, 24, 24)
back_3.ScaleType = Enum.ScaleType.Slice
back_3.SliceCenter = Rect.new(2, 2, 298, 298)

fill_3.Name = "fill"
fill_3.Parent = back_3
fill_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fill_3.BackgroundTransparency = 1.000
fill_3.Position = UDim2.new(0, 2, 0, 2)
fill_3.Size = UDim2.new(1, -4, 1, -4)
fill_3.Image = "rbxassetid://4840201589"
fill_3.ImageColor3 = Color3.fromRGB(255, 0, 0)
fill_3.ScaleType = Enum.ScaleType.Slice
fill_3.SliceCenter = Rect.new(2, 2, 298, 298)

UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(103, 103, 103))}
UIGradient_8.Rotation = 90
UIGradient_8.Parent = fill_3

title_6.Name = "title"
title_6.Parent = color
title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_6.BackgroundTransparency = 1.000
title_6.Position = UDim2.new(0, 10, 0, -1)
title_6.Size = UDim2.new(0, 69, 1, 0)
title_6.Font = Enum.Font.GothamSemibold
title_6.Text = "Color picker"
title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
title_6.TextSize = 12.000
title_6.TextTransparency = 0.300
title_6.TextWrapped = true
title_6.TextXAlignment = Enum.TextXAlignment.Left

dropdown.Name = "dropdown"
dropdown.Parent = prefabs
dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropdown.BackgroundTransparency = 1.000
dropdown.Position = UDim2.new(0.0625, 0, -0.490291268, 0)
dropdown.Size = UDim2.new(1, 0, 0, 60)
dropdown.ZIndex = 2
dropdown.Image = "rbxassetid://4641149554"
dropdown.ImageColor3 = Color3.fromRGB(28, 28, 28)
dropdown.ScaleType = Enum.ScaleType.Slice
dropdown.SliceCenter = Rect.new(4, 4, 296, 296)

dropframe.Name = "dropframe"
dropframe.Parent = dropdown
dropframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropframe.BackgroundTransparency = 1.000
dropframe.Position = UDim2.new(0, 10, 1, -6)
dropframe.Size = UDim2.new(1, -20, 0, 0)
dropframe.ZIndex = 2
dropframe.Image = "rbxassetid://4840201589"
dropframe.ImageColor3 = Color3.fromRGB(24, 24, 24)
dropframe.ScaleType = Enum.ScaleType.Slice
dropframe.SliceCenter = Rect.new(2, 2, 298, 298)

dropscroll.Name = "dropscroll"
dropscroll.Parent = dropframe
dropscroll.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
dropscroll.BorderSizePixel = 0
dropscroll.Position = UDim2.new(0, 4, 0, 4)
dropscroll.Size = UDim2.new(1, -8, 1, 0)
dropscroll.ZIndex = 5
dropscroll.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
dropscroll.CanvasSize = UDim2.new(0, 0, 0, 0)
dropscroll.ScrollBarThickness = 0
dropscroll.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

list.Name = "list"
list.Parent = dropscroll
list.SortOrder = Enum.SortOrder.LayoutOrder

title_7.Name = "title"
title_7.Parent = dropdown
title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_7.BackgroundTransparency = 1.000
title_7.Position = UDim2.new(0, 10, 0, 4)
title_7.Size = UDim2.new(1, -10, 0, 24)
title_7.ZIndex = 2
title_7.Font = Enum.Font.GothamSemibold
title_7.Text = "Dropdown"
title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
title_7.TextSize = 12.000
title_7.TextTransparency = 0.300
title_7.TextWrapped = true
title_7.TextXAlignment = Enum.TextXAlignment.Left

button_5.Name = "button"
button_5.Parent = dropdown
button_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button_5.BackgroundTransparency = 1.000
button_5.Position = UDim2.new(0, 9, 0, 30)
button_5.Size = UDim2.new(1, -18, 0, 22)
button_5.ZIndex = 2
button_5.Font = Enum.Font.SourceSans
button_5.Text = ""
button_5.TextColor3 = Color3.fromRGB(0, 0, 0)
button_5.TextSize = 14.000

selected.Name = "selected"
selected.Parent = button_5
selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
selected.BackgroundTransparency = 1.000
selected.Position = UDim2.new(0, 1, 0, 1)
selected.Size = UDim2.new(1, -2, 1, -2)
selected.ZIndex = 2
selected.Image = "rbxassetid://4840201589"
selected.ImageColor3 = Color3.fromRGB(24, 24, 24)
selected.ScaleType = Enum.ScaleType.Slice
selected.SliceCenter = Rect.new(2, 2, 298, 298)

icon_2.Name = "icon"
icon_2.Parent = selected
icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon_2.BackgroundTransparency = 1.000
icon_2.Position = UDim2.new(1, -18, 0, 0)
icon_2.Size = UDim2.new(0, 18, 0, 18)
icon_2.ZIndex = 2
icon_2.Image = "rbxassetid://4852002601"

UIGradient_9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_9.Rotation = 90
UIGradient_9.Parent = icon_2

value.Name = "value"
value.Parent = selected
value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
value.BackgroundTransparency = 1.000
value.Position = UDim2.new(0, 6, 0, 0)
value.Size = UDim2.new(1, 0, 1, 0)
value.ZIndex = 2
value.Font = Enum.Font.Gotham
value.Text = "Drop Value"
value.TextColor3 = Color3.fromRGB(255, 255, 255)
value.TextSize = 11.000
value.TextWrapped = true
value.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_10.Rotation = 90
UIGradient_10.Parent = value

section.Name = "section"
section.Parent = prefabs
section.Active = true
section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
section.BackgroundTransparency = 1.000
section.Position = UDim2.new(-0.556249976, 0, 0.534446776, 0)
section.Selectable = true
section.Size = UDim2.new(1, 0, 0, 200)
section.Image = "rbxassetid://4641149554"
section.ImageColor3 = Color3.fromRGB(255, 90, 90)
section.ScaleType = Enum.ScaleType.Slice
section.SliceCenter = Rect.new(4, 4, 296, 296)

stuff.Name = "stuff"
stuff.Parent = section
stuff.Active = true
stuff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stuff.BackgroundTransparency = 1.000
stuff.Position = UDim2.new(0, 2, 0, 2)
stuff.Selectable = true
stuff.Size = UDim2.new(1, -4, 1, -4)
stuff.Image = "rbxassetid://4641149554"
stuff.ImageColor3 = Color3.fromRGB(32, 32, 32)
stuff.ScaleType = Enum.ScaleType.Slice
stuff.SliceCenter = Rect.new(4, 4, 296, 296)

UIListLayout.Parent = stuff
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

subtab.Name = "subtab"
subtab.Parent = prefabs
subtab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtab.BackgroundTransparency = 1.000
subtab.Size = UDim2.new(1, 0, 1, 0)

mainholder1.Name = "mainholder1"
mainholder1.Parent = subtab
mainholder1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainholder1.BackgroundTransparency = 1.000
mainholder1.Size = UDim2.new(0, 160, 1, 0)

UIListLayout_2.Parent = mainholder1
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 6)

mainholder2.Name = "mainholder2"
mainholder2.Parent = subtab
mainholder2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainholder2.BackgroundTransparency = 1.000
mainholder2.Position = UDim2.new(0, 172, 0, 0)
mainholder2.Size = UDim2.new(0, 160, 1, 0)

UIListLayout_3.Parent = mainholder2
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 6)

mainholder3.Name = "mainholder3"
mainholder3.Parent = subtab
mainholder3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainholder3.BackgroundTransparency = 1.000
mainholder3.Position = UDim2.new(0, 344, 0, 0)
mainholder3.Size = UDim2.new(0, 160, 1, 0)

UIListLayout_4.Parent = mainholder3
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 6)

tab.Name = "tab"
tab.Parent = prefabs
tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tab.BackgroundTransparency = 1.000
tab.Size = UDim2.new(1, 0, 1, 0)

colorpicker.Name = "colorpicker"
colorpicker.Parent = prefabs
colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
colorpicker.BackgroundTransparency = 1.000
colorpicker.ClipsDescendants = true
colorpicker.Position = UDim2.new(1, 10, 0, 0)
colorpicker.Size = UDim2.new(0, 160, 0, 192)
colorpicker.Image = "rbxassetid://4641149554"
colorpicker.ImageColor3 = Color3.fromRGB(32, 32, 32)
colorpicker.ScaleType = Enum.ScaleType.Slice
colorpicker.SliceCenter = Rect.new(4, 4, 296, 296)

sat.Name = "sat"
sat.Parent = colorpicker
sat.BackgroundColor3 = Color3.fromRGB(246, 0, 0)
sat.BorderSizePixel = 0
sat.Position = UDim2.new(0, 10, 0, 40)
sat.Size = UDim2.new(0, 120, 0, 120)
sat.Image = "rbxassetid://4650897272"

indicator.Name = "indicator"
indicator.Parent = sat
indicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator.BackgroundTransparency = 1.000
indicator.BorderSizePixel = 0
indicator.Position = UDim2.new(0, 117, 0, -3)
indicator.Size = UDim2.new(0, 6, 0, 6)
indicator.Image = "rbxassetid://266543268"

hue.Name = "hue"
hue.Parent = colorpicker
hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hue.BorderSizePixel = 0
hue.Position = UDim2.new(0, 136, 0, 40)
hue.Selectable = true
hue.Size = UDim2.new(0, 14, 0, 120)
hue.Image = "rbxassetid://4650897105"

indicator_2.Name = "indicator"
indicator_2.Parent = hue
indicator_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
indicator_2.BackgroundTransparency = 1.000
indicator_2.Position = UDim2.new(1, -10, 0, -8)
indicator_2.Rotation = 90.000
indicator_2.Size = UDim2.new(0, 18, 0, 18)
indicator_2.ZIndex = 2
indicator_2.Image = "rbxassetid://4852002601"

UIGradient_11.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_11.Rotation = 90
UIGradient_11.Parent = indicator_2

title2.Name = "title2"
title2.Parent = colorpicker
title2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title2.BackgroundTransparency = 1.000
title2.Position = UDim2.new(0, 54, 0, 10)
title2.Size = UDim2.new(0, 41, 0, 20)
title2.Font = Enum.Font.Gotham
title2.Text = "Picker"
title2.TextColor3 = Color3.fromRGB(255, 255, 255)
title2.TextSize = 14.000
title2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_12.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_12.Rotation = 90
UIGradient_12.Parent = title2

title1.Name = "title1"
title1.Parent = colorpicker
title1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title1.BackgroundTransparency = 1.000
title1.Position = UDim2.new(0, 12, 0, 10)
title1.Size = UDim2.new(0, 37, 0, 20)
title1.Font = Enum.Font.GothamSemibold
title1.Text = "Color"
title1.TextColor3 = Color3.fromRGB(255, 90, 90)
title1.TextSize = 14.000
title1.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_13.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_13.Rotation = 90
UIGradient_13.Parent = title1

rgbholder.Name = "rgbholder"
rgbholder.Parent = colorpicker
rgbholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rgbholder.BackgroundTransparency = 1.000
rgbholder.Position = UDim2.new(0, 10, 0, 164)
rgbholder.Size = UDim2.new(0, 120, 0, 20)

r.Name = "r"
r.Parent = rgbholder
r.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
r.BackgroundTransparency = 1.000
r.BorderColor3 = Color3.fromRGB(27, 42, 53)
r.Size = UDim2.new(0, 37, 1, 0)
r.Image = "rbxassetid://4550094458"
r.ImageColor3 = Color3.fromRGB(28, 28, 28)
r.ScaleType = Enum.ScaleType.Slice
r.SliceCenter = Rect.new(4, 4, 296, 296)

title_8.Name = "title"
title_8.Parent = r
title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_8.BackgroundTransparency = 1.000
title_8.Size = UDim2.new(1, 0, 1, 0)
title_8.Font = Enum.Font.Gotham
title_8.Text = "R: 255"
title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
title_8.TextSize = 10.000

list_2.Name = "list"
list_2.Parent = rgbholder
list_2.FillDirection = Enum.FillDirection.Horizontal
list_2.SortOrder = Enum.SortOrder.LayoutOrder
list_2.Padding = UDim.new(0, 4)

g.Name = "g"
g.Parent = rgbholder
g.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
g.BackgroundTransparency = 1.000
g.BorderColor3 = Color3.fromRGB(27, 42, 53)
g.Size = UDim2.new(0, 37, 1, 0)
g.Image = "rbxassetid://4550094458"
g.ImageColor3 = Color3.fromRGB(28, 28, 28)
g.ScaleType = Enum.ScaleType.Slice
g.SliceCenter = Rect.new(4, 4, 296, 296)

title_9.Name = "title"
title_9.Parent = g
title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_9.BackgroundTransparency = 1.000
title_9.Size = UDim2.new(1, 0, 1, 0)
title_9.Font = Enum.Font.Gotham
title_9.Text = "G: 255"
title_9.TextColor3 = Color3.fromRGB(255, 255, 255)
title_9.TextSize = 10.000

b.Name = "b"
b.Parent = rgbholder
b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
b.BackgroundTransparency = 1.000
b.BorderColor3 = Color3.fromRGB(27, 42, 53)
b.Size = UDim2.new(0, 37, 1, 0)
b.Image = "rbxassetid://4550094458"
b.ImageColor3 = Color3.fromRGB(28, 28, 28)
b.ScaleType = Enum.ScaleType.Slice
b.SliceCenter = Rect.new(4, 4, 296, 296)

title_10.Name = "title"
title_10.Parent = b
title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_10.BackgroundTransparency = 1.000
title_10.Size = UDim2.new(1, 0, 1, 0)
title_10.Font = Enum.Font.Gotham
title_10.Text = "B: 255"
title_10.TextColor3 = Color3.fromRGB(255, 255, 255)
title_10.TextSize = 10.000

stab_tab.Name = "stab_tab"
stab_tab.Parent = prefabs
stab_tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stab_tab.BackgroundTransparency = 1.000
stab_tab.Size = UDim2.new(1, 0, 1, 0)

list_3.Name = "list"
list_3.Parent = stab_tab
list_3.SortOrder = Enum.SortOrder.LayoutOrder
list_3.Padding = UDim.new(0, 5)

main.Name = "main"
main.Parent = prefabs
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 1.000
main.Position = UDim2.new(0.312563419, 0, 0.0807293206, 0)
main.Selectable = true
main.Size = UDim2.new(0, 570, 0, 560)
main.Image = "rbxassetid://4641149554"
main.ImageColor3 = Color3.fromRGB(32, 32, 32)
main.ScaleType = Enum.ScaleType.Slice
main.SliceCenter = Rect.new(4, 4, 296, 296)

barup.Name = "barup"
barup.Parent = main
barup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
barup.BackgroundTransparency = 1.000
barup.Size = UDim2.new(1, 0, 0, 34)
barup.Image = "rbxassetid://4550094255"
barup.ImageColor3 = Color3.fromRGB(28, 28, 28)
barup.ScaleType = Enum.ScaleType.Slice
barup.SliceCenter = Rect.new(4, 4, 296, 296)

title1_2.Name = "title1"
title1_2.Parent = barup
title1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title1_2.BackgroundTransparency = 1.000
title1_2.Position = UDim2.new(0, 16, 0, 12)
title1_2.Size = UDim2.new(0, 43, 0, 20)
title1_2.Font = Enum.Font.GothamSemibold
title1_2.Text = "GAME"
title1_2.TextColor3 = Color3.fromRGB(255, 90, 90)
title1_2.TextSize = 14.000
title1_2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_14.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_14.Rotation = 90
UIGradient_14.Parent = title1_2

title2_2.Name = "title2"
title2_2.Parent = barup
title2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title2_2.BackgroundTransparency = 1.000
title2_2.Position = UDim2.new(0, 57, 0, 12)
title2_2.Size = UDim2.new(0, 27, 0, 20)
title2_2.Font = Enum.Font.Gotham
title2_2.Text = "OVER"
title2_2.TextColor3 = Color3.fromRGB(255, 255, 255)
title2_2.TextSize = 14.000
title2_2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_15.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_15.Rotation = 90
UIGradient_15.Parent = title2_2

bardown.Name = "bardown"
bardown.Parent = barup
bardown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bardown.BackgroundTransparency = 1.000
bardown.Position = UDim2.new(0, 0, 1, 0)
bardown.Size = UDim2.new(1, 0, 0, 16)
bardown.Image = "http://www.roblox.com/asset/?id=4837092909"
bardown.ImageColor3 = Color3.fromRGB(28, 28, 28)

mtabholder.Name = "mtabholder"
mtabholder.Parent = barup
mtabholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mtabholder.BackgroundTransparency = 1.000
mtabholder.Position = UDim2.new(0, 109, 0, 12)
mtabholder.Size = UDim2.new(0.982500017, -118, 0, 20)

list_4.Name = "list"
list_4.Parent = mtabholder
list_4.FillDirection = Enum.FillDirection.Horizontal
list_4.HorizontalAlignment = Enum.HorizontalAlignment.Right
list_4.SortOrder = Enum.SortOrder.LayoutOrder

stabholder.Name = "stabholder"
stabholder.Parent = main
stabholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stabholder.BackgroundTransparency = 1.000
stabholder.Position = UDim2.new(0, 12, 0, 61)
stabholder.Size = UDim2.new(0, 30, 1, -74)

holder.Name = "holder"
holder.Parent = main
holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
holder.BackgroundTransparency = 1.000
holder.Position = UDim2.new(0, 54, 0, 61)
holder.Size = UDim2.new(1, -74, 1, -81)

circle_2.Name = "circle"
circle_2.Parent = prefabs
circle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circle_2.BackgroundTransparency = 1.000
circle_2.Image = "rbxassetid://266543268"
circle_2.ImageTransparency = 0.500

dropdownelement.Name = "dropdownelement"
dropdownelement.Parent = prefabs
dropdownelement.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropdownelement.BackgroundTransparency = 1.000
dropdownelement.Size = UDim2.new(1, 0, 0, 20)
dropdownelement.Font = Enum.Font.Gotham
dropdownelement.Text = "Drop Value 1"
dropdownelement.TextColor3 = Color3.fromRGB(255, 255, 255)
dropdownelement.TextSize = 11.000
dropdownelement.TextTransparency = 0.300

UIGradient_16.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 179, 179))}
UIGradient_16.Rotation = 90
UIGradient_16.Parent = dropdownelement

local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local ps = game:GetService("Players")
local p = ps.LocalPlayer
local mouse = p:GetMouse()
local UI = gameover

UIS.InputBegan:Connect(function(input, gp)
	if not gp then
		if input.KeyCode == Enum.KeyCode.RightShift then
			gameover.Enabled = not gameover.Enabled
		end
	end
end)

local function new(class)
	if UI and UI:FindFirstChild("prefabs") then
		local o = UI:FindFirstChild("prefabs"):FindFirstChild(tostring(class))
		if o then return o:Clone() end
	end
end

local function toboolean(x)
	if tostring(x) == "true" then
		return true
	elseif tostring(x) == "false" then
		return false
	end
end

local function insert(main, obj)
	if not (typeof(main) == "Instance" and typeof(obj) == "Instance") then return end
	
	local _1 = main:FindFirstChild("mainholder1")
	local _2 = main:FindFirstChild("mainholder2")
	local _3 = main:FindFirstChild("mainholder3")

	if not (_1 and _2 and _3) then return end

	local max = _1.AbsoluteSize.Y
	local function fit(x)
		local n = 0
		for i, v in next, x:GetChildren() do
			if not (v:IsA("UIListLayout")) then
				n = n + 6 + v.AbsoluteSize.Y
			end
		end
		return n
	end
	if fit(_1) + 6 + obj.AbsoluteSize.Y <= max then
		obj.Parent = _1
		return true
	elseif fit(_2) + 6 + obj.AbsoluteSize.Y <= max then
		obj.Parent = _2
		return true
	elseif fit(_3) + 6 + obj.AbsoluteSize.Y <= max then
		obj.Parent = _3
		return true
	end
end

local function Resize(part, new, _delay)
	_delay = _delay or 0.5
	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TweenService:Create(part, tweenInfo, new)
	tween:Play()
end

local function gNameLen(obj)
	return obj.TextBounds.X + 15
end

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
end

local function ripple(button, x, y)
	if not button then return end
	if not x then x = mouse.X end
	if not y then y = mouse.Y end

	spawn(function()
		button.ClipsDescendants = true

		local circle = new("circle")
		circle.Parent = button
		circle.ZIndex = 1000

		local new_x = x - circle.AbsolutePosition.X
		local new_y = y - circle.AbsolutePosition.Y
		circle.Position = UDim2.new(0, new_x, 0, new_y)

		local size = 0
		if button.AbsoluteSize.X > button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
			size = button.AbsoluteSize.Y * 1.5
		elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		end

		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Quad", 0.5, false, nil)
		Resize(circle, {ImageTransparency = 1}, 0.5)

		wait(0.5)
		circle:Destroy()
	end)
end

local function has_prop(object, prop)
	local a, b = pcall(function()
		return object[tostring(prop)]
	end)
	return a
end

local mb_held = false
UIS.InputBegan:Connect(function(inputObject)
	if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
		mb_held = true
	end
end)
UIS.InputEnded:Connect(function(inputObject)
	if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
		mb_held = false
	end
end)

local function mb_event(callback)
	UIS.InputBegan:Connect(function(inputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
			pcall(callback)
		end
	end)
end

local entered = {}
local function cee(object, callback)
	if not entered[object] then
		entered[object] = false
		object.MouseEnter:Connect(function()entered[object] = true pcall(callback, true) end)
		object.MouseLeave:Connect(function()entered[object] = false pcall(callback, false) end)
		pcall(callback or function()end)
	end
end

local function create_ripple_event(object)
	cee(object)
	mb_event(function()
		if entered[object] then
			ripple(object)
		end
	end)
end

local function create_hover_event(object)
	local prop = has_prop(object, "ImageColor3") and "ImageColor3" or "BackgroundColor3"
	local original = object[prop]
	cee(object, function(bool)
		if bool then
			Resize(object, {[prop] = Color3.fromRGB(24, 24, 24)}, 0.2)
		else
			Resize(object, {[prop] = original}, 0.2)
		end
	end)
end

function library.new(columns)
	columns = columns or 1
    local ui_data = {}

    local checks = {
		["binding"] = false,
		["dropdown_open"] = false,
	}

	local n = 0
    local s_stack = {}

    local main = new("main")
	main.Parent = gameover
	main.Draggable = true
	main.Position = UDim2.new(0.5, -(main.AbsoluteSize.X / 2), 0.5, -(main.AbsoluteSize.Y / 2))
	main.Size = UDim2.new(0, 250 + ((columns - 1) * 160), 0, 560)

    local barup = main:FindFirstChild("barup")
	local stabholder = main:FindFirstChild("stabholder")
    local tabs = main:FindFirstChild("holder")

    function ui_data:AddTab(tab_name)
        local tab_data = {}

		tab_name = tostring(tab_name or "New Tab")
		local tab_button = new("tabbutton")
		create_ripple_event(tab_button)
		tab_button.Text = tab_name
		tab_button.Parent = barup:FindFirstChild("mtabholder")
		tab_button.Size = UDim2.new(0, gNameLen(tab_button), 0, 20)
        tab_button.TextTransparency = 0.5
        
        local stab_tab = new("stab_tab")
		stab_tab.Parent = stabholder
        stab_tab.Visible = false

        local tab_folder = Instance.new("Frame", tabs)
		tab_folder.Transparency = 1
		tab_folder.Size = UDim2.new(1, 0, 1, 0)
		tab_folder.Name = "tab_folder"
        tab_folder.Visible = false
        
        function tab_data:Show()
			for i, v in next, stabholder:GetChildren() do
				v.Visible = false
			end
			for i, v in next, barup:FindFirstChild("mtabholder"):GetChildren() do
				if not (v:IsA("UIListLayout")) then
					Resize(v, {TextTransparency = 0.5}, 0.5)
				end
			end
			for i, v in next, tabs:GetChildren() do
				v.Visible = false
			end
			tab_folder.Visible = true
			stab_tab.Visible = true
			if stab_tab:GetChildren()[1] then
			end
			Resize(tab_button, {TextTransparency = 0}, 0.5)
        end

		n = 0

		tab_button.MouseButton1Click:Connect(function()
			tab_data:Show()
		end)

        function tab_data:AddSubTab(icon)
            local stab_data = {}

            local subtabbutton = new("subtabbutton")
			create_ripple_event(subtabbutton)
			create_hover_event(subtabbutton)
			subtabbutton.Parent = stab_tab
			subtabbutton:FindFirstChild("icon").Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=" .. tostring(icon)
            subtabbutton:FindFirstChild("icon").ImageTransparency = 0.5
            
            local tab = new("tab")
			tab.Parent = tab_folder
			tab.Visible = false

			local subtab = new("subtab")
			subtab.Parent = tab

			function stab_data:Show()
				tab_data:Show()
				for i, v in next, stab_tab:GetChildren() do
					if not (v:IsA("UIListLayout")) then
						Resize(v:FindFirstChild("icon"), {ImageTransparency = 0.5}, 0.5)
					end
				end
				for i, v in next, tab_folder:GetChildren() do
					v.Visible = false
				end
				Resize(subtabbutton:FindFirstChild("icon"), {ImageTransparency = 0}, 0.5)
				tab_folder.Visible = true
				tab.Visible = true
            end
            
            subtabbutton.MouseButton1Click:Connect(function()
				stab_data:Show()
			end)

			n = n + 1
			if n == 1 then
				table.insert(s_stack, function()
					stab_data:Show()
				end)
			end

			do -- UI Elements

				function stab_data:AddSection()
					local section_data = {}

					local section = new("section")
					local stuff = section:FindFirstChild('stuff')

					local function update_size()
						local x = 0
						for i, v in next, stuff:GetChildren() do
							if not (v:IsA("UIListLayout")) then
								x = x + 6 + v.AbsoluteSize.Y
							end
						end
						section.Size = UDim2.new(1, 0, 0, x)
					end
					
					local function update()
						update_size()
						insert(subtab, section)
					end

					for i, v in next, stab_data do
						if i ~= 'AddSection' then
							section_data[i] = function(...)
								local data, obj = v(...)
								obj.Parent = stuff
								update()
								return data, obj
							end
						end
					end
					
					section_data.update = update
					
					update()
					return section_data
				end

				function stab_data:AddLabel(text)
					local label_data = {}

					text = tostring(text or "New Label")
					local label = new("label")
					label:FindFirstChild("label").Text = text

					insert(subtab, label)
					return label_data, label
				end

				function stab_data:AddButton(text, callback)
					local button_data = {}
					text = tostring(text or "New Button")
					callback = typeof(callback) == "function" and callback or function()end

					local button = new("button")
					create_ripple_event(button)
					create_hover_event(button)
					button:FindFirstChild("title").Text = text
					button.MouseButton1Click:Connect(function()
						pcall(callback)
					end)

					insert(subtab, button)
					return button_data, button
				end

				function stab_data:AddToggle(text, callback)
					local toggle_data = {}
					text = tostring(text or "New Toggle")
					callback = typeof(callback) == "function" and callback or function()end
					
					local toggle = new("toggle")
					create_ripple_event(toggle)
					create_hover_event(toggle)
					toggle:FindFirstChild("title").Text = text
					local fill = toggle:FindFirstChild("button"):FindFirstChild("back"):FindFirstChild("fill")
					
					do
						fill.Size = UDim2.new(0, 0, 0, 0)
						fill.Position = UDim2.new(0.5, 0, 0.5, 0)
						
						local toggled = false
						local function do_toggle(boolean)
							if boolean then
								Resize(fill, {Size = UDim2.new(0, 0, 0, 0)}, 0.1)
								Resize(fill, {Position = UDim2.new(0.5, 0, 0.5, 0)}, 0.1)
							else
								Resize(fill, {Size = UDim2.new(1, -4, 1, -4)}, 0.1)
								Resize(fill, {Position = UDim2.new(0, 2, 0, 2)}, 0.1)
							end
							toggled = not boolean
							pcall(callback, toggled)
						end
						toggle:FindFirstChild("button").MouseButton1Click:Connect(function()
							do_toggle(toggled)
						end)
						function toggle_data:Set(bool)
							do_toggle(not bool)
						end
					end
					
					insert(subtab, toggle)
					return toggle_data, toggle
				end

				function stab_data:AddTextBox(text, callback)
					local textbox_data = {}
					text = tostring(text or "New TextBox")
					callback = typeof(callback) == "function" and callback or function()end
					
					local textbox = new("textbox")
					create_hover_event(textbox)
					textbox:FindFirstChild("title").Text = text
					
					textbox:FindFirstChild("TextBox").FocusLost:Connect(function(enter_pressed)
						if enter_pressed then
							pcall(callback, textbox:FindFirstChild("TextBox").text)
							textbox:FindFirstChild("TextBox").Text = ""
						end
					end)
					
					insert(subtab, textbox)
					return textbox_data, textbox
				end

				function stab_data:AddSlider(text, callback, min, max)
					local slider_data = {}
					text = tostring(text or "New Slider")
					callback = typeof(callback) == "function" and callback or function()end
					
					local slider = new("slider")
					create_hover_event(slider)
					slider:FindFirstChild("title").Text = text
					
					do -- Math
						local button = slider:FindFirstChild("button")
						local line = button:FindFirstChild("line")
						local fill = line:FindFirstChild("fill")
						local value = slider:FindFirstChild("val")
						
						local Entered = false
						line.MouseEnter:Connect(function()
							Entered = true
							main.Draggable = false
						end)
						line.MouseLeave:Connect(function()
							Entered = false
							main.Draggable = true
						end)
						
						mb_event(function()
							spawn(function() -- Loop check
								if Entered then
									slider_min = tonumber(min) or 0
									slider_max = tonumber(max) or 100
									
									while mb_held and (not checks.dropdown_open) do
										local mouse_location = gMouse()
										local x = (line.AbsoluteSize.X - (line.AbsoluteSize.X - ((mouse_location.X - line.AbsolutePosition.X)) + 1)) / line.AbsoluteSize.X

										local min = 0
										local max = 1

										local size = min
										if x >= min and x <= max then
											size = x
										elseif x < min then
											size = min
										elseif x > max then
											size = max
										end

										Resize(fill, {Size = UDim2.new(size or min, 0, 1, 0)}, 0.1)
										local p = math.floor((size or min) * 100)

										local maxv = slider_max
										local minv = slider_min
										local diff = maxv - minv

										local sel_value = math.floor(((diff / 100) * p) + minv)

										value.Text = tostring(sel_value)
										pcall(callback, sel_value)

										RunService.Heartbeat:Wait()
									end
								end
							end)
						end)

						function slider_data:Set(new_value)
							slider_min = tonumber(min) or 0
							slider_max = tonumber(max) or 100
							
							new_value = tonumber(new_value) or slider_min
							new_value = (new_value - slider_min) / (slider_max - slider_min)

							Resize(fill, {Size = UDim2.new(new_value or 0, 0, 1, 0)}, 0.1)
							local p = math.floor((new_value or 0) * 100)

							local maxv = slider_max
							local minv = slider_min
							local diff = maxv - minv

							local sel_value = math.floor(((diff / 100) * p) + minv)

							value.Text = tostring(sel_value)
							pcall(callback, sel_value)
						end

						-- slider_data:Set(tonumber(min) or 0)
					end
					
					insert(subtab, slider)
					return slider_data, slider
				end

				function stab_data:AddKeybind(text, callback, standard)
					local keybind_data = {}
					text = tostring(text or "New Keybind")
					callback = typeof(callback) == "function" and callback or function()end
					standard = typeof(standard) == "EnumItem" and standard or Enum.KeyCode.RightShift
					
					local keybind = new("keybind")
					create_hover_event(keybind)
					keybind:FindFirstChild("title").Text = text
					local key_text = keybind:FindFirstChild("back"):FindFirstChild("TextLabel")
					
					local shortkeys = {
			            RightControl = 'RightCtrl',
			            LeftControl = 'LeftCtrl',
			            LeftShift = 'LShift',
			            RightShift = 'RShift',
			            MouseButton1 = "Mouse1",
			            MouseButton2 = "Mouse2"
			        }
					
					local current_keybind = standard
					
					function keybind_data:Set(Keybind)
						local key = shortkeys[Keybind.Name] or Keybind.Name
						key_text.Text = key
						current_keybind = Keybind
					end
					
					UIS.InputBegan:Connect(function(a, b)
						if checks.binding then
							spawn(function()
								wait()
								checks.binding = false
							end)
							return
						end
						if a.KeyCode == current_keybind and not b then
							pcall(callback, current_keybind)
						end
					end)
					
					keybind_data:Set(standard)
					
					keybind.MouseButton1Click:Connect(function()
						if checks.binding then return end
						key_text.Text = "..."
						checks.binding = true
						local a, b = UIS.InputBegan:Wait()
						keybind_data:Set(a.KeyCode)
					end)
					
					insert(subtab, keybind)
					return keybind_data, keybind
				end

				function stab_data:AddDropdown(text, callback)
					local dropdown_data = {}
					text = tostring(text or "New Dropdown")
					callback = typeof(callback) == "function" and callback or function()end
					
					local dropdown = new("dropdown")
					create_hover_event(dropdown)
					dropdown:FindFirstChild("title").Text = text
					
					do -- Dropdown
						local button = dropdown:FindFirstChild("button")
						local dropframe = dropdown:FindFirstChild("dropframe")
						local value = button:FindFirstChild("selected"):FindFirstChild("value")
						local icon = button:FindFirstChild("selected"):FindFirstChild("icon")
						local dropscroll = dropframe:FindFirstChild("dropscroll")
						value.Text = "Select ..."

						local open = false
						dropdown:FindFirstChild("button").MouseButton1Click:Connect(function()
							if not (open) then -- Open Dropdown
								Resize(dropframe, {Size = UDim2.new(1, -20, 0, 144)}, 0.2)
								Resize(icon, {Rotation = 180}, 0.2)
							else -- Close Dropdown
								Resize(dropframe, {Size = UDim2.new(1, -20, 0, 0)}, 0.2)
								Resize(icon, {Rotation = 0}, 0.2)
							end
							open = not open
						end)

						function dropdown_data:Add(name)
							local element_data = {}
							name = tostring(name or "New Element")
							local element = new("dropdownelement")
							element.MouseButton1Click:Connect(function()
								open = false
								Resize(dropframe, {Size = UDim2.new(1, -20, 0, 0)}, 0.2)
								Resize(icon, {Rotation = 0}, 0.2)
								value.Text = name
								pcall(callback, name)
							end)
							element.ZIndex = 2
							element.Parent = dropscroll
							element.Text = name
							dropscroll.CanvasSize = UDim2.new(0, 0, 0, (#dropscroll:GetChildren() - 1) * 20)
							
							function element_data:Remove()
								element:Destroy()
							end
							
							return element_data, element
						end
					end
					
					insert(subtab, dropdown)
					return dropdown_data, dropdown
				end

				function stab_data:AddColorPicker(text, callback)
					local colorpicker_data = {}
					text = tostring(text or "New ColorPicker")
					callback = typeof(callback) == "function" and callback or function()end
					local cp_button = new("color")
					cp_button:FindFirstChild("title").Text = text
					
					local button = cp_button:FindFirstChild("button")
					local selected_color = button:FindFirstChild("back"):FindFirstChild("fill")
					create_ripple_event(button)
					create_hover_event(cp_button)

					button.MouseButton1Click:Connect(function()
						if not (main:FindFirstChild("colorpicker")) then
						
							do -- Color Picker
								local color_picker = new("colorpicker")
								color_picker.Parent = main
								
								local h = 0
								local s = 1
								local v = 1

								local rgbholder = color_picker:FindFirstChild("rgbholder")
								local hue = color_picker:FindFirstChild("hue")
								local sat = color_picker:FindFirstChild("sat")
								
								do -- HUE
									local hue_indicator = hue:FindFirstChild("indicator")
									local entered = false
									cee(hue, function(bool)
										entered = bool
									end)
									mb_event(function()
										spawn(function()
											if not entered then return end
											while mb_held do
													
												local mouse_location = gMouse()
												local y = ((hue.AbsoluteSize.Y - (mouse_location.Y - hue.AbsolutePosition.Y)) + 1.5)
												
												if y > hue.AbsoluteSize.Y then
													y = hue.AbsoluteSize.Y
												elseif y < 0 then
													y = 0
												end
												
												hue_indicator.Position = UDim2.new(1, -10, 0, math.abs(y - hue.AbsoluteSize.Y) - 8)
												h = y / hue.AbsoluteSize.Y
												local color = Color3.fromHSV(h, s, v)
												sat.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
												selected_color.ImageColor3 = color
												rgbholder:FindFirstChild("r"):FindFirstChild("title").Text = "R: " .. math.floor(color.R * 255)
												rgbholder:FindFirstChild("g"):FindFirstChild("title").Text = "G: " .. math.floor(color.G * 255)
												rgbholder:FindFirstChild("b"):FindFirstChild("title").Text = "B: " .. math.floor(color.B * 255)
												pcall(callback, color)
													
												RunService.Heartbeat:Wait()
											end
										end)
									end)
								end
								
								do -- SAT
									local sat_indicator = sat:FindFirstChild("indicator")
									local entered = false
									cee(sat, function(bool)
										entered = bool
									end)
									mb_event(function()
										spawn(function()
											if not entered then return end
											while mb_held do
												
												local mouse_location = gMouse()
												local x = ((sat.AbsoluteSize.X - (mouse_location.X - sat.AbsolutePosition.X)) + 1)
												local y = ((sat.AbsoluteSize.Y - (mouse_location.Y - sat.AbsolutePosition.Y)) + 1.5)
												
												if x > sat.AbsoluteSize.X then
													x = sat.AbsoluteSize.X
												elseif x < 0 then
													x = 0
												end
												if y > sat.AbsoluteSize.Y then
													y = sat.AbsoluteSize.Y
												elseif y < 0 then
													y = 0
												end
												
												sat_indicator.Position = UDim2.new(0, math.abs(x - sat.AbsoluteSize.X) - (sat_indicator.AbsoluteSize.Y / 2), 0, math.abs(y - sat.AbsoluteSize.Y) - (sat_indicator.AbsoluteSize.Y / 2))
												s = math.abs(x - sat.AbsoluteSize.X) / sat.AbsoluteSize.X
												v = y / sat.AbsoluteSize.Y
												local color = Color3.fromHSV(h, s, v)
												selected_color.ImageColor3 = color
												rgbholder:FindFirstChild("r"):FindFirstChild("title").Text = "R: " .. math.floor(color.R * 255)
												rgbholder:FindFirstChild("g"):FindFirstChild("title").Text = "G: " .. math.floor(color.G * 255)
												rgbholder:FindFirstChild("b"):FindFirstChild("title").Text = "B: " .. math.floor(color.B * 255)
												pcall(callback, color)
												
												RunService.Heartbeat:Wait()
											end
										end)
									end)
								end
								
							end
						
						else
							main:FindFirstChild("colorpicker"):Destroy()
						end
					end)

					function colorpicker_data:Set(color)
						selected_color.ImageColor3 = color
					end
					
					insert(subtab, cp_button)
					return colorpicker_data, cp_button
				end

			end

            return stab_data
        end

        tab_button.MouseButton1Click:Connect(function()
			tab_data:Show()
		end)

        return tab_data
    end

    main.Visible = false
    function ui_data:Launch()
        for i = #s_stack, 1, -1 do
            s_stack[i]()
        end
        main.Visible = true
    end

    return ui_data
end

return library
