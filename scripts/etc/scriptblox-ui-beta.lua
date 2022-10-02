local module = {}

function module:Init()
    if game:GetService("CoreGui"):FindFirstChild("ScriptLoader") then
        game:GetService("CoreGui"):FindFirstChild("ScriptLoader"):Destroy()
    end

    local Scriptloader = Instance.new("ScreenGui")
    local RightWing = Instance.new("Frame")
    local Header1 = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local LeftWing = Instance.new("Frame")
    local Header1_2 = Instance.new("TextLabel")
    local UICorner_2 = Instance.new("UICorner")
    local Storage = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")

    Scriptloader.Name = "Scriptloader"
    Scriptloader.Parent = game:GetService("CoreGui")
    Scriptloader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Header1.Name = "Header1"
    Header1.Parent = RightWing
    Header1.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
    Header1.BackgroundTransparency = 1.000
    Header1.Position = UDim2.new(0.129010797, 0, -0.00054577738, 0)
    Header1.Size = UDim2.new(0, 183, 0, 70)
    Header1.Font = Enum.Font.Highway
    Header1.Text = "ScriptBlox Dashboard"
    Header1.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header1.TextSize = 68.000

    RightWing.Name = "RightWing"
    RightWing.Parent = Scriptloader
    RightWing.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    RightWing.BorderSizePixel = 0
    RightWing.Position = UDim2.new(0.257038504, 0, 0.0101851849, 0)
    RightWing.Size = UDim2.new(0, 1411, 0, 1014)

    UICorner.Parent = RightWing

    Header1_2.Name = "Header1"
    Header1_2.Parent = LeftWing
    Header1_2.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
    Header1_2.BackgroundTransparency = 1.000
    Header1_2.Position = UDim2.new(0.290598303, 0, -0.0035043573, 0)
    Header1_2.Size = UDim2.new(0, 183, 0, 70)
    Header1_2.Font = Enum.Font.Highway
    Header1_2.Text = "ScriptBlox"
    Header1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header1_2.TextSize = 68.000

    LeftWing.Name = "LeftWing"
    LeftWing.Parent = Scriptloader
    LeftWing.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    LeftWing.BorderSizePixel = 0
    LeftWing.Position = UDim2.new(0.0052137645, 0, 0.0101851849, 0)
    LeftWing.Size = UDim2.new(0, 468, 0, 1015)

    UICorner_2.Parent = LeftWing

    Storage.Name = "Storage"
    Storage.Parent = LeftWing
    Storage.Active = true
    Storage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Storage.BackgroundTransparency = 1.000
    Storage.Position = UDim2.new(0, 0, 0.0738916248, 0)
    Storage.Size = UDim2.new(0, 468, 0, 940)
    Storage.AutomaticCanvasSize = Enum.AutomaticSize.Y
    Storage.ScrollBarImageColor3 = Color3.fromRGB(170, 0, 255)

    UIListLayout.Parent = Storage
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)

    local fcs = {}

    function fcs:AddScript(v_scriptname, v_typeOfScript, v_likes3,v_dislikes,v_views3, v_image, v_gamename)
        local Template = Instance.new("Frame")
        local Picture = Instance.new("Frame")
        local ScriptPicture = Instance.new("ImageLabel")
        local UICorner_3 = Instance.new("UICorner")
        local fav = Instance.new("ImageButton")
        local ScriptInfo = Instance.new("Frame")
        local views = Instance.new("ImageButton")
        local views_2 = Instance.new("TextLabel")
        local likes = Instance.new("ImageButton")
        local likes_2 = Instance.new("TextLabel")
        local types = Instance.new("TextLabel")
        local Badges = Instance.new("Frame")
        local badge = Instance.new("ImageButton")
        local Title = Instance.new("Frame")
        local types_2 = Instance.new("TextLabel")
        local name = Instance.new("TextLabel")
        local execute = Instance.new("TextButton")
        local Shadow = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local UICorner_4 = Instance.new("UICorner")

        Template.Name = v_scriptname
        Template.Parent = Storage
        Template.BackgroundColor3 = Color3.fromRGB(0, 80, 120)
        Template.BorderSizePixel = 0
        Template.Size = UDim2.new(0, 455, 0, 338)

        Picture.Name = "Picture"
        Picture.Parent = Template
        Picture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Picture.BackgroundTransparency = 1.000
        Picture.Size = UDim2.new(0, 455, 0, 263)

        ScriptPicture.Name = "ScriptPicture"
        ScriptPicture.Parent = Picture
        ScriptPicture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScriptPicture.BackgroundTransparency = 1.000
        ScriptPicture.Position = UDim2.new(0.0021978023, 0, -0.0304182507, 0)
        ScriptPicture.Size = UDim2.new(0, 454, 0, 264)
        --ScriptPicture.Image = "http://www.roblox.com/asset/?id=10201001615"
        ScriptPicture.Image = v_image

        UICorner_3.CornerRadius = UDim.new(0, 18)
        UICorner_3.Parent = ScriptPicture

        fav.Name = "fav"
        fav.Parent = Picture
        fav.BackgroundTransparency = 1.000
        fav.Position = UDim2.new(0.865695775, 0, 0.0285171103, 0)
        fav.Size = UDim2.new(0, 48, 0, 48)
        fav.ZIndex = 2
        fav.Image = "rbxassetid://3926305904"
        fav.ImageRectOffset = Vector2.new(116, 4)
        fav.ImageRectSize = Vector2.new(24, 24)

        ScriptInfo.Name = "ScriptInfo"
        ScriptInfo.Parent = Picture
        ScriptInfo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ScriptInfo.BackgroundTransparency = 1.000
        ScriptInfo.Size = UDim2.new(0, 151, 0, 99)

        views.Name = "views"
        views.Parent = ScriptInfo
        views.BackgroundTransparency = 1.000
        views.LayoutOrder = 6
        views.Position = UDim2.new(0.0827814564, 0, 0.075757578, 0)
        views.Size = UDim2.new(0, 25, 0, 25)
        views.ZIndex = 2
        views.Image = "rbxassetid://3926305904"
        views.ImageRectOffset = Vector2.new(144, 4)
        views.ImageRectSize = Vector2.new(24, 24)

        views_2.Name = "views"
        views_2.Parent = views
        views_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        views_2.BackgroundTransparency = 1.000
        views_2.Position = UDim2.new(1, 0, 0, 0)
        views_2.Size = UDim2.new(0, 105, 0, 25)
        views_2.Font = Enum.Font.Highway
        views_2.Text = v_views3
        views_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        views_2.TextSize = 14.000

        likes.Name = "likes"
        likes.Parent = ScriptInfo
        likes.BackgroundTransparency = 1.000
        likes.LayoutOrder = 3
        likes.Position = UDim2.new(0.0829999968, 0, 0.328000009, 0)
        likes.Size = UDim2.new(0, 25, 0, 25)
        likes.ZIndex = 2
        likes.Image = "rbxassetid://3926305904"
        likes.ImageRectOffset = Vector2.new(324, 244)
        likes.ImageRectSize = Vector2.new(36, 36)

        likes_2.Name = "likes"
        likes_2.Parent = likes
        likes_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        likes_2.BackgroundTransparency = 1.000
        likes_2.Position = UDim2.new(1, 0, 0, 0)
        likes_2.Size = UDim2.new(0, 105, 0, 25)
        likes_2.Font = Enum.Font.Highway
        likes_2.Text = tostring(math.round((v_likes3 / v_dislikes)*100)).."%"
        likes_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        likes_2.TextSize = 14.000

        types.Name = "types"
        types.Parent = ScriptInfo
        types.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        types.BackgroundTransparency = 1.000
        types.Position = UDim2.new(0.00662251655, 0, 0.668291211, 0)
        types.Size = UDim2.new(0, 150, 0, 32)
        types.Font = Enum.Font.Unknown
        types.Text = v_typeOfScript
        types.TextColor3 = Color3.fromRGB(255, 255, 255)
        types.TextSize = 31.000

        Badges.Name = "Badges"
        Badges.Parent = Picture
        Badges.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Badges.BackgroundTransparency = 1.000
        Badges.Position = UDim2.new(0.0021978023, 0, 0.760004163, 0)
        Badges.Size = UDim2.new(0, 454, 0, 49)

        badge.Name = "badge"
        badge.Parent = Badges
        badge.BackgroundTransparency = 1.000
        badge.LayoutOrder = 7
        badge.Position = UDim2.new(0.0242290795, 0, -0.153061211, 0)
        badge.Size = UDim2.new(0, 50, 0, 50)
        badge.ZIndex = 2
        badge.Image = "rbxassetid://3926307971"
        badge.ImageRectOffset = Vector2.new(164, 284)
        badge.ImageRectSize = Vector2.new(36, 36)

        Title.Name = "Title"
        Title.Parent = Template
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0, 0, 0.781954706, 0)
        Title.Size = UDim2.new(0, 455, 0, 73)

        types_2.Name = "types"
        types_2.Parent = Title
        types_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        types_2.BackgroundTransparency = 1.000
        types_2.Position = UDim2.new(0.0373626389, 0, 0, 0)
        types_2.Size = UDim2.new(0, 156, 0, 35)
        types_2.Font = Enum.Font.Highway
        types_2.Text = v_gamename
        types_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        types_2.TextSize = 22.000
        types_2.TextXAlignment = Enum.TextXAlignment.Left

        name.Name = "name"
        name.Parent = Title
        name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        name.BackgroundTransparency = 1.000
        name.Position = UDim2.new(0.0285714287, 0, 0.479452044, 0)
        name.Size = UDim2.new(0, 455, 0, 35)
        name.Font = Enum.Font.Highway
        name.Text = v_scriptname
        name.TextColor3 = Color3.fromRGB(255, 255, 255)
        name.TextSize = 22.000
        name.TextXAlignment = Enum.TextXAlignment.Left

        execute.Name = "execute"
        execute.Parent = Title
        execute.BackgroundColor3 = Color3.fromRGB(77, 156, 115)
        execute.BorderSizePixel = 0
        execute.Position = UDim2.new(0.748351634, 0, 0.239726022, 0)
        execute.Size = UDim2.new(0, 104, 0, 35)
        execute.ZIndex = 2
        execute.Font = Enum.Font.GothamMedium
        execute.Text = ""
        execute.TextColor3 = Color3.fromRGB(255, 255, 255)
        execute.TextScaled = true
        execute.TextSize = 14.000
        execute.TextWrapped = true

        Shadow.Name = "Shadow"
        Shadow.Parent = execute
        Shadow.BackgroundColor3 = Color3.fromRGB(58, 118, 86)
        Shadow.BorderSizePixel = 0
        Shadow.Size = UDim2.new(1, 0, 1, 4)

        TextLabel.Parent = execute
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextLabel.Size = UDim2.new(1, -20, 1, -20)
        TextLabel.ZIndex = 2
        TextLabel.Font = Enum.Font.Unknown
        TextLabel.Text = "Execute"
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextWrapped = true

        UICorner_4.Parent = Template

        return Template, execute

    end

    return Scriptloader, fcs

end

return module
