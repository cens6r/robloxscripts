while not game:IsLoaded() do wait() end

local Vonex = {}
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local VonexGui = CoreGui:FindFirstChild("S_Vonex")
local TweenService = game:GetService("TweenService")
if VonexGui then VonexGui:Destroy() end

function Vonex:Start(hubname, hubtxt, gamename, versiontype)
    local S_Vonex = Instance.new("ScreenGui")
    local Shadow = Instance.new("ImageLabel")
    local Wind = Instance.new("Frame")
    local Top = Instance.new("Frame")
    local Vonex = Instance.new("TextLabel")
    local VonexUICorner = Instance.new("UICorner")
    local TopUICorner = Instance.new("UICorner")
    local LIne_A = Instance.new("Frame")
    local LineB = Instance.new("Frame")
    local Close = Instance.new("ImageButton")
    local CloseUICorner = Instance.new("UICorner")
    local CloseImageLabel = Instance.new("ImageLabel")
    local Minimize = Instance.new("ImageButton")
    local MinimizeUICorner = Instance.new("UICorner")
    local MinimizeImageLabel = Instance.new("ImageLabel")
    local MadeBy = Instance.new("TextLabel")
    local MadeByUICorner = Instance.new("UICorner")
    local Current_Game = Instance.new("TextButton")
    local Current_GameUICorner = Instance.new("UICorner")
    local VersionType = Instance.new("TextLabel")
    local VersionTypeUICorner = Instance.new("UICorner")
    local WindUICorner = Instance.new("UICorner")
    local TabContainer = Instance.new("ScrollingFrame")
    local TabContainerUIListLayout = Instance.new("UIListLayout")
    local Main = Instance.new("Frame")
    local MainUICorner = Instance.new("UICorner")
    local CurrentContainer = Instance.new("TextButton")
    local CurrentContainerUICorner = Instance.new("UICorner")
    local CurrentContainerTXT = Instance.new("TextLabel")
    local CurrentContainerTXTUICorner = Instance.new("UICorner")
    
    S_Vonex.Name = "S_Vonex"
    S_Vonex.Parent = CoreGui
    S_Vonex.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    S_Vonex.ResetOnSpawn = false
    
    Shadow.Name = "Shadow"
    Shadow.Parent = S_Vonex
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow.BackgroundTransparency = 1.000
    Shadow.BorderSizePixel = 0
    Shadow.ClipsDescendants = true
    Shadow.Position = UDim2.new(0.507482171, 0, 0.5, 0)
    Shadow.Size = UDim2.new(0, 0, 0, 0)
    Shadow.ZIndex = -1
    Shadow.Image = "rbxassetid://10083738849"
    
    Wind.Name = "Wind"
    Wind.Parent = Shadow
    Wind.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Wind.BorderSizePixel = 0
    Wind.Position = UDim2.new(0, 14, 0, 14)
    Wind.Size = UDim2.new(0, 490, 0, 320)
    
    Top.Name = "Top"
    Top.Parent = Wind
    Top.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Top.BorderSizePixel = 0
    Top.Size = UDim2.new(0, 490, 0, 30)
    Top.ZIndex = 2
    
    Vonex.Name = "Vonex"
    Vonex.Parent = Top
    Vonex.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
    Vonex.BackgroundTransparency = 0.800
    Vonex.BorderSizePixel = 0
    Vonex.Size = UDim2.new(0, 73, 0, 30)
    Vonex.ZIndex = 3
    Vonex.Font = Enum.Font.GothamMedium
    Vonex.Text = hubname or "VONEX"
    Vonex.TextColor3 = Color3.fromRGB(200, 200, 200)
    Vonex.TextSize = 12.000
    
    VonexUICorner.CornerRadius = UDim.new(0, 3)
    VonexUICorner.Name = "VonexUICorner"
    VonexUICorner.Parent = Vonex
    
    TopUICorner.CornerRadius = UDim.new(0, 3)
    TopUICorner.Name = "TopUICorner"
    TopUICorner.Parent = Top
    
    LIne_A.Name = "LIne_A"
    LIne_A.Parent = Top
    LIne_A.BackgroundColor3 = Color3.fromRGB(137, 169, 255)
    LIne_A.BackgroundTransparency = 0.900
    LIne_A.BorderSizePixel = 0
    LIne_A.Position = UDim2.new(0, 133, 0, 30)
    LIne_A.Size = UDim2.new(0, 2, 0, 290)
    LIne_A.ZIndex = 3
    
    LineB.Name = "LineB"
    LineB.Parent = Top
    LineB.BackgroundColor3 = Color3.fromRGB(137, 169, 255)
    LineB.BackgroundTransparency = 0.900
    LineB.BorderSizePixel = 0
    LineB.Position = UDim2.new(0, 0, 0, 30)
    LineB.Size = UDim2.new(0, 490, 0, 2)
    LineB.ZIndex = 3
    
    Close.Name = "Close"
    Close.Parent = Top
    Close.BackgroundColor3 = Color3.fromRGB(255, 97, 97)
    Close.BackgroundTransparency = 0.800
    Close.BorderSizePixel = 0
    Close.Position = UDim2.new(0, 460, 0, 0)
    Close.Size = UDim2.new(0, 30, 0, 30)
    Close.ZIndex = 3
    Close.AutoButtonColor = false
    Close.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    Close.ImageTransparency = 1.000
    Close.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(Close, TweenInfo.new(0.1,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.5}):Play()
    end)
    Close.MouseLeave:Connect(function()
        game:GetService("TweenService"):Create(Close, TweenInfo.new(0.1,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.8}):Play()
    end)
    Close.MouseButton1Click:Connect(function()
        game:GetService("TweenService"):Create(Shadow, TweenInfo.new(0.2,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 0, 0, 0)}):Play()
        wait(0.2)
        S_Vonex:Destroy()
    end)
    
    CloseUICorner.CornerRadius = UDim.new(0, 3)
    CloseUICorner.Name = "CloseUICorner"
    CloseUICorner.Parent = Close
    
    CloseImageLabel.Name = "CloseImageLabel"
    CloseImageLabel.Parent = Close
    CloseImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseImageLabel.BackgroundTransparency = 1.000
    CloseImageLabel.BorderSizePixel = 0
    CloseImageLabel.Position = UDim2.new(0, 7, 0, 7)
    CloseImageLabel.Size = UDim2.new(0, 16, 0, 16)
    CloseImageLabel.ZIndex = 4
    CloseImageLabel.Image = "http://www.roblox.com/asset/?id=6031094678"
    CloseImageLabel.ImageTransparency = 0.500
    
    Minimize.Name = "Minimize"
    Minimize.Parent = Top
    Minimize.BackgroundColor3 = Color3.fromRGB(255, 236, 89)
    Minimize.BackgroundTransparency = 0.800
    Minimize.BorderSizePixel = 0
    Minimize.Position = UDim2.new(0, 430, 0, 0)
    Minimize.Size = UDim2.new(0, 30, 0, 30)
    Minimize.ZIndex = 3
    Minimize.AutoButtonColor = false
    Minimize.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    Minimize.ImageTransparency = 1.000
    
    MinimizeUICorner.CornerRadius = UDim.new(0, 3)
    MinimizeUICorner.Name = "MinimizeUICorner"
    MinimizeUICorner.Parent = Minimize
    
    MinimizeImageLabel.Name = "MinimizeImageLabel"
    MinimizeImageLabel.Parent = Minimize
    MinimizeImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeImageLabel.BackgroundTransparency = 1.000
    MinimizeImageLabel.BorderSizePixel = 0
    MinimizeImageLabel.Position = UDim2.new(0, 7, 0, 7)
    MinimizeImageLabel.Size = UDim2.new(0, 16, 0, 16)
    MinimizeImageLabel.ZIndex = 4
    MinimizeImageLabel.Image = "http://www.roblox.com/asset/?id=6035067836"
    MinimizeImageLabel.ImageTransparency = 0.500
    
    MadeBy.Name = "MadeBy"
    MadeBy.Parent = Top
    MadeBy.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
    MadeBy.BackgroundTransparency = 0.800
    MadeBy.BorderSizePixel = 0
    MadeBy.Position = UDim2.new(0, 290, 0, 0)
    MadeBy.Size = UDim2.new(0, 140, 0, 30)
    MadeBy.ZIndex = 3
    MadeBy.Font = Enum.Font.GothamMedium
    MadeBy.Text = versiontype or "MADE BY PEAXE"
    MadeBy.TextColor3 = Color3.fromRGB(200, 200, 200)
    MadeBy.TextSize = 12.000
    
    MadeByUICorner.CornerRadius = UDim.new(0, 3)
    MadeByUICorner.Name = "MadeByUICorner"
    MadeByUICorner.Parent = MadeBy
    
    Current_Game.Name = "Current_Game"
    Current_Game.Parent = Top
    Current_Game.BackgroundColor3 = Color3.fromRGB(113, 151, 255)
    Current_Game.BackgroundTransparency = 0.900
    Current_Game.BorderSizePixel = 0
    Current_Game.Position = UDim2.new(0, 133, 0, 0)
    Current_Game.Size = UDim2.new(0, 157, 0, 30)
    Current_Game.ZIndex = 3
    Current_Game.AutoButtonColor = false
    Current_Game.Font = Enum.Font.GothamMedium
    Current_Game.Text = gamename or "PHANTOM FORCES"
    Current_Game.TextColor3 = Color3.fromRGB(200, 200, 200)
    Current_Game.TextSize = 12.000
    
    Current_GameUICorner.CornerRadius = UDim.new(0, 3)
    Current_GameUICorner.Name = "Current_GameUICorner"
    Current_GameUICorner.Parent = Current_Game
    
    VersionType.Name = "VersionType"
    VersionType.Parent = Top
    VersionType.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
    VersionType.BackgroundTransparency = 0.500
    VersionType.BorderSizePixel = 0
    VersionType.Position = UDim2.new(0, 73, 0, 0)
    VersionType.Size = UDim2.new(0, 60, 0, 30)
    VersionType.ZIndex = 3
    VersionType.Font = Enum.Font.GothamMedium
    VersionType.Text = hubtxt or "FREE"
    VersionType.TextColor3 = Color3.fromRGB(200, 200, 200)
    VersionType.TextSize = 12.000
    
    VersionTypeUICorner.CornerRadius = UDim.new(0, 3)
    VersionTypeUICorner.Name = "VersionTypeUICorner"
    VersionTypeUICorner.Parent = VersionType
    
    WindUICorner.CornerRadius = UDim.new(0, 3)
    WindUICorner.Name = "WindUICorner"
    WindUICorner.Parent = Wind
    
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = Wind
    TabContainer.Active = true
    TabContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0, 0, 0, 32)
    TabContainer.Size = UDim2.new(0, 133, 0, 288)
    TabContainer.ZIndex = 2
    TabContainer.BottomImage = "rbxassetid://10083890741"
    TabContainer.CanvasSize = UDim2.new(0, 0, 0, 322)
    TabContainer.MidImage = "rbxassetid://10083890741"
    TabContainer.ScrollBarThickness = 2
    TabContainer.TopImage = "rbxassetid://10083890741"
    TabContainer.ScrollBarImageColor3 = Color3.fromRGB(101, 142, 255)
    TabContainer.ScrollBarImageTransparency = 0.5
    
    TabContainerUIListLayout.Name = "TabContainerUIListLayout"
    TabContainerUIListLayout.Parent = TabContainer
    TabContainerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabContainerUIListLayout.Padding = UDim.new(0, 2)

    function ScaleTabContainer()
        TabContainer.CanvasSize = UDim2.new(0, 0, 0, TabContainerUIListLayout.Padding.Offset + TabContainerUIListLayout.AbsoluteContentSize.Y)
    end
    TabContainerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ScaleTabContainer)
    
    Main.Name = "Main"
    Main.Parent = Wind
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0, 135, 0, 32)
    Main.Size = UDim2.new(0, 355, 0, 288)
    Main.ZIndex = 2
    
    MainUICorner.CornerRadius = UDim.new(0, 3)
    MainUICorner.Name = "MainUICorner"
    MainUICorner.Parent = Main
    
    CurrentContainer.Name = "CurrentContainer"
    CurrentContainer.Parent = Main
    CurrentContainer.BackgroundColor3 = Color3.fromRGB(113, 151, 255)
    CurrentContainer.BackgroundTransparency = 0.950
    CurrentContainer.BorderSizePixel = 0
    CurrentContainer.Size = UDim2.new(0, 354, 0, 30)
    CurrentContainer.ZIndex = 3
    CurrentContainer.AutoButtonColor = false
    CurrentContainer.Font = Enum.Font.GothamMedium
    CurrentContainer.Text = ""
    CurrentContainer.TextColor3 = Color3.fromRGB(200, 200, 200)
    CurrentContainer.TextSize = 12.000
    
    CurrentContainerUICorner.CornerRadius = UDim.new(0, 3)
    CurrentContainerUICorner.Name = "CurrentContainerUICorner"
    CurrentContainerUICorner.Parent = CurrentContainer
    
    CurrentContainerTXT.Name = "CurrentContainerTXT"
    CurrentContainerTXT.Parent = CurrentContainer
    CurrentContainerTXT.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
    CurrentContainerTXT.BackgroundTransparency = 1.000
    CurrentContainerTXT.BorderSizePixel = 0
    CurrentContainerTXT.Size = UDim2.new(0, 354, 0, 30)
    CurrentContainerTXT.ZIndex = 5
    CurrentContainerTXT.Font = Enum.Font.GothamMedium
    CurrentContainerTXT.Text = "- COMMUNITY -"
    CurrentContainerTXT.TextColor3 = Color3.fromRGB(200, 200, 200)
    CurrentContainerTXT.TextSize = 12.000
    
    CurrentContainerTXTUICorner.CornerRadius = UDim.new(0, 3)
    CurrentContainerTXTUICorner.Name = "CurrentContainerTXTUICorner"
    CurrentContainerTXTUICorner.Parent = CurrentContainerTXT

    local Dragger = Instance.new("TextButton")

    Dragger.Name = "Dragger"
    Dragger.Parent = Top
    Dragger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Dragger.BackgroundTransparency = 1.000
    Dragger.BorderSizePixel = 0
    Dragger.Size = UDim2.new(0, 430, 0, 30)
    Dragger.ZIndex = 100
    Dragger.AutoButtonColor = false
    Dragger.Font = Enum.Font.GothamMedium
    Dragger.Text = ""
    Dragger.TextColor3 = Color3.fromRGB(0, 0, 0)
    Dragger.TextSize = 12.000

    Shadow:TweenSize(UDim2.new(0, 520, 0, 350), "Out", "Linear", 0.2, true)

    local function DraggingEnabled(gui_f, dragger_f)
        local runService = (game:GetService("RunService"));
        
        local gui = gui_f
        local dragger = dragger_f
        
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        function Lerp(a, b, m)
            return a + (b - a) * m
        end;
        
        local lastMousePos
        local lastGoalPos
        local DRAG_SPEED = (14); -- // The speed of the UI darg.
        function Update(dt)
            if not (startPos) then return end;
            if not (dragging) and (lastGoalPos) then
                gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
                return 
            end;
        
            local delta = (lastMousePos - UserInputService:GetMouseLocation())
            local xGoal = (startPos.X.Offset - delta.X);
            local yGoal = (startPos.Y.Offset - delta.Y);
            lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
            gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
        end;
        
        dragger.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position
                lastMousePos = UserInputService:GetMouseLocation()
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        dragger.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        runService.Heartbeat:Connect(Update)
    end

    DraggingEnabled(Shadow, Dragger)

    local Window = {}

    function Window:Tab(tabname, opened)
        local Container = Instance.new("ScrollingFrame")
        local ContainerUIListLayout = Instance.new("UIListLayout")
        
        Container.Name = tabname or "Container"
        Container.Parent = Main
        Container.Active = true
        Container.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        Container.BackgroundTransparency = 1.000
        Container.BorderSizePixel = 0
        Container.Position = UDim2.new(0, 0, 0, 32)
        Container.Size = UDim2.new(0, 355, 0, 256)
        Container.ZIndex = 3
        Container.BottomImage = "rbxassetid://10083890741"
        Container.MidImage = "rbxassetid://10083890741"
        Container.ScrollBarThickness = 2
        Container.TopImage = "rbxassetid://10083890741"
        Container.Visible = false
        Container.ScrollBarImageColor3 = Color3.fromRGB(101, 142, 255)
        Container.ScrollBarImageTransparency = 0.5
        
        ContainerUIListLayout.Name = "ContainerUIListLayout"
        ContainerUIListLayout.Parent = Container
        ContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerUIListLayout.Padding = UDim.new(0, 2)

        function ScaleContainer()
            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerUIListLayout.Padding.Offset + ContainerUIListLayout.AbsoluteContentSize.Y)
        end
        ContainerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ScaleContainer)

        local Tab = Instance.new("TextButton")
        local TabUICorner = Instance.new("UICorner")
        
        Tab.Name = tabname or "Tab"
        Tab.Parent = TabContainer
        Tab.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
        Tab.BackgroundTransparency = 1.000
        Tab.BorderSizePixel = 0
        Tab.Size = UDim2.new(0, 132, 0, 30)
        Tab.ZIndex = 3
        Tab.AutoButtonColor = false
        Tab.Font = Enum.Font.GothamMedium
        Tab.Text = tabname or "SOUND"
        Tab.TextColor3 = Color3.fromRGB(200, 200, 200)
        Tab.TextSize = 12.000
        Tab.TextTransparency = 0.500
        Tab.MouseButton1Click:Connect(function()
            for i, v in pairs(Main:GetChildren()) do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            for i, v in pairs(TabContainer:GetChildren()) do
                if v:IsA("TextButton") then
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.1,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1, TextTransparency = 0.5}):Play()
                end
            end
            CurrentContainerTXT.Text = tostring(Tab.Text)
            Container.Visible = true
            game:GetService("TweenService"):Create(Tab, TweenInfo.new(0.1,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.8, TextTransparency = 0}):Play()
        end)
        
        TabUICorner.CornerRadius = UDim.new(0, 3)
        TabUICorner.Name = "TabUICorner"
        TabUICorner.Parent = Tab

        if opened then
            Tab.BackgroundTransparency = 0.8
            Tab.TextTransparency = 0
            Container.Visible = true
            CurrentContainerTXT.Text = tostring(Tab.Text)
        end

        local Features = {}

        function Features:Button(buttontitle, buttoncallback)
            buttoncallback = buttoncallback or function() end
            local Button = Instance.new("TextButton")
            local ButtonUICorner = Instance.new("UICorner")
            
            Button.Name = buttontitle or "Button"
            Button.Parent = Container
            Button.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            Button.BackgroundTransparency = 0.800
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(0, 354, 0, 30)
            Button.ZIndex = 3
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.GothamMedium
            Button.Text = buttontitle or "PEAXE (message) : THANKS FOR USING VONEX"
            Button.TextColor3 = Color3.fromRGB(200, 200, 200)
            Button.TextSize = 12.000
            Button.MouseEnter:Connect(function()
                game:GetService("TweenService"):Create(Button, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.5}):Play()
            end)
            Button.MouseLeave:Connect(function()
                game:GetService("TweenService"):Create(Button, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.8}):Play()
            end)
            Button.MouseButton1Down:Connect(function()
                game:GetService("TweenService"):Create(Button, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.8}):Play()
            end)
            Button.MouseButton1Up:Connect(function()
                game:GetService("TweenService"):Create(Button, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.5}):Play()
            end)
            Button.MouseButton1Click:Connect(function()
                pcall(function()
                    buttoncallback()
                end)
            end)
            
            ButtonUICorner.CornerRadius = UDim.new(0, 3)
            ButtonUICorner.Name = "ButtonUICorner"
            ButtonUICorner.Parent = Button
        end

        function Features:Label(labeltitle, labelcallback, image)
            local Label = Instance.new("TextLabel")
            local LabelUICorner = Instance.new("UICorner")
            local Label_TXT = Instance.new("TextLabel")
            local Label_TXTUICorner = Instance.new("UICorner")
            local LabelImageButton = Instance.new("TextButton")
            local LabelImageButtonUICorner = Instance.new("UICorner")
            local LabelImage = Instance.new("ImageLabel")
            
            Label.Name = labeltitle or "Label"
            Label.Parent = Container
            Label.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            Label.BackgroundTransparency = 0.900
            Label.BorderSizePixel = 0
            Label.Position = UDim2.new(0, 0, 0, 32)
            Label.Size = UDim2.new(0, 354, 0, 30)
            Label.ZIndex = 4
            Label.Font = Enum.Font.GothamMedium
            Label.Text = ""
            Label.TextColor3 = Color3.fromRGB(200, 200, 200)
            Label.TextSize = 12.000
            
            LabelUICorner.CornerRadius = UDim.new(0, 3)
            LabelUICorner.Name = "LabelUICorner"
            LabelUICorner.Parent = Label
            
            Label_TXT.Name = "Label_TXT"
            Label_TXT.Parent = Label
            Label_TXT.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            Label_TXT.BackgroundTransparency = 1.000
            Label_TXT.BorderSizePixel = 0
            Label_TXT.Position = UDim2.new(0, 10, 0, 0)
            Label_TXT.Size = UDim2.new(0, 314, 0, 30)
            Label_TXT.ZIndex = 5
            Label_TXT.Font = Enum.Font.GothamMedium
            Label_TXT.Text = "- "..tostring(labeltitle).." -" or "- SECTION - "
            Label_TXT.TextColor3 = Color3.fromRGB(200, 200, 200)
            Label_TXT.TextSize = 12.000
            Label_TXT.TextXAlignment = Enum.TextXAlignment.Left
            
            Label_TXTUICorner.CornerRadius = UDim.new(0, 3)
            Label_TXTUICorner.Name = "Label_TXTUICorner"
            Label_TXTUICorner.Parent = Label_TXT
            
            LabelImageButton.Name = "LabelImageButton"
            LabelImageButton.Parent = Label
            LabelImageButton.BackgroundColor3 = Color3.fromRGB(113, 151, 255)
            LabelImageButton.BackgroundTransparency = 0.800
            LabelImageButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
            LabelImageButton.BorderSizePixel = 0
            LabelImageButton.Position = UDim2.new(0, 324, 0, 0)
            LabelImageButton.Size = UDim2.new(0, 30, 0, 30)
            LabelImageButton.ZIndex = 5
            LabelImageButton.AutoButtonColor = false
            LabelImageButton.Font = Enum.Font.GothamMedium
            LabelImageButton.Text = ""
            LabelImageButton.TextColor3 = Color3.fromRGB(200, 200, 200)
            LabelImageButton.TextSize = 12.000
            
            LabelImageButtonUICorner.CornerRadius = UDim.new(0, 3)
            LabelImageButtonUICorner.Name = "LabelImageButtonUICorner"
            LabelImageButtonUICorner.Parent = LabelImageButton
            
            LabelImage.Name = "LabelImage"
            LabelImage.Parent = LabelImageButton
            LabelImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelImage.BackgroundTransparency = 1.000
            LabelImage.BorderSizePixel = 0
            LabelImage.Position = UDim2.new(0, 7, 0, 7)
            LabelImage.Size = UDim2.new(0, 16, 0, 16)
            LabelImage.ZIndex = 6
            LabelImage.Image = "http://www.roblox.com/asset/?id=6034304892"
            LabelImage.ImageTransparency = 0.300

            LabelImageButton.MouseEnter:Connect(function()
                game:GetService("TweenService"):Create(LabelImageButton, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.5}):Play()
            end)
            LabelImageButton.MouseLeave:Connect(function()
                game:GetService("TweenService"):Create(LabelImageButton, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.8}):Play()
            end)
            LabelImageButton.MouseButton1Down:Connect(function()
                game:GetService("TweenService"):Create(LabelImageButton, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.8}):Play()
            end)
            LabelImageButton.MouseButton1Up:Connect(function()
                game:GetService("TweenService"):Create(LabelImageButton, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.5}):Play()
            end)
            LabelImageButton.MouseButton1Click:Connect(function()
                pcall(function()
                    labelcallback()
                end)
            end)
        end

        function Features:Toggle(toggletitle, togglecallback)
            local Toggle = Instance.new("TextButton")
            local ToggleUICorner = Instance.new("UICorner")
            local ToggleImageLabel_A = Instance.new("ImageLabel")
            local ToggleImageLabel_AUICorner = Instance.new("UICorner")
            local ToggleImageLabel_B = Instance.new("ImageLabel")
            local Toggle_TXT = Instance.new("TextLabel")
            
            Toggle.Name = toggletitle or "Toggle"
            Toggle.Parent = Container
            Toggle.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            Toggle.BackgroundTransparency = 0.900
            Toggle.BorderSizePixel = 0
            Toggle.Size = UDim2.new(0, 354, 0, 30)
            Toggle.ZIndex = 3
            Toggle.AutoButtonColor = false
            Toggle.Font = Enum.Font.GothamMedium
            Toggle.Text = ""
            Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
            Toggle.TextSize = 12.000
            Toggle.MouseEnter:Connect(function()
                game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.6}):Play()
            end)
            Toggle.MouseLeave:Connect(function()
                game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.9}):Play()
            end)
            Toggle.MouseButton1Down:Connect(function()
                game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.9}):Play()
            end)
            Toggle.MouseButton1Up:Connect(function()
                game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.6}):Play()
            end)
            
            ToggleUICorner.CornerRadius = UDim.new(0, 3)
            ToggleUICorner.Name = "ToggleUICorner"
            ToggleUICorner.Parent = Toggle
            
            ToggleImageLabel_A.Name = "ToggleImageLabel_A"
            ToggleImageLabel_A.Parent = Toggle
            ToggleImageLabel_A.BackgroundColor3 = Color3.fromRGB(113, 151, 255)
            ToggleImageLabel_A.BackgroundTransparency = 0.800
            ToggleImageLabel_A.BorderSizePixel = 0
            ToggleImageLabel_A.Position = UDim2.new(0, 324, 0, 0)
            ToggleImageLabel_A.Size = UDim2.new(0, 30, 0, 30)
            ToggleImageLabel_A.ZIndex = 4
            ToggleImageLabel_A.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
            ToggleImageLabel_A.ImageTransparency = 1.000
            
            ToggleImageLabel_AUICorner.CornerRadius = UDim.new(0, 3)
            ToggleImageLabel_AUICorner.Name = "ToggleImageLabel_AUICorner"
            ToggleImageLabel_AUICorner.Parent = ToggleImageLabel_A
            
            ToggleImageLabel_B.Name = "ToggleImageLabel_B"
            ToggleImageLabel_B.Parent = ToggleImageLabel_A
            ToggleImageLabel_B.BackgroundColor3 = Color3.fromRGB(113, 151, 255)
            ToggleImageLabel_B.BackgroundTransparency = 1.000
            ToggleImageLabel_B.BorderSizePixel = 0
            ToggleImageLabel_B.Position = UDim2.new(0, 6, 0, 6)
            ToggleImageLabel_B.Size = UDim2.new(0, 18, 0, 18)
            ToggleImageLabel_B.ZIndex = 4
            ToggleImageLabel_B.Image = "http://www.roblox.com/asset/?id=6031094667"
            ToggleImageLabel_B.ImageTransparency = 1
            
            Toggle_TXT.Name = "Toggle_TXT"
            Toggle_TXT.Parent = Toggle
            Toggle_TXT.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            Toggle_TXT.BackgroundTransparency = 1.000
            Toggle_TXT.BorderSizePixel = 0
            Toggle_TXT.Position = UDim2.new(0, 10, 0, 0)
            Toggle_TXT.Size = UDim2.new(0, 314, 0, 30)
            Toggle_TXT.ZIndex = 5
            Toggle_TXT.Font = Enum.Font.GothamMedium
            Toggle_TXT.Text = toggletitle or "TOGGLE"
            Toggle_TXT.TextColor3 = Color3.fromRGB(200, 200, 200)
            Toggle_TXT.TextSize = 12.000
            Toggle_TXT.TextXAlignment = Enum.TextXAlignment.Left

            local toggled = false
            Toggle.MouseButton1Click:Connect(function()
                if toggled then
                    game:GetService("TweenService"):Create(ToggleImageLabel_B, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{ImageTransparency = 1}):Play()
                    toggled = false
                    pcall(function()
                        togglecallback(toggled)
                    end)
                else
                    game:GetService("TweenService"):Create(ToggleImageLabel_B, TweenInfo.new(0.12,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{ImageTransparency = 0.3}):Play()
                    toggled = true
                    pcall(function()
                        togglecallback(toggled)
                    end)
                end
            end)
        end

        function Features:Slider(title, minvalue, defvalue, maxvalue, symbol, increaments, callback)
            symbol = symbol or "%"
            local Slider = Instance.new("TextButton")
            local SliderUICorner = Instance.new("UICorner")
            local Slider_TXT = Instance.new("TextLabel")
            local SliderButton = Instance.new("TextButton")
            local SliderButtonUICorner = Instance.new("UICorner")
            local SliderFrame = Instance.new("Frame")
            local SliderFrameUICorner = Instance.new("UICorner")
            local Slider_VALUE = Instance.new("TextLabel")
            
            Slider.Name = title or "Slider"
            Slider.Parent = Container
            Slider.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            Slider.BackgroundTransparency = 0.900
            Slider.BorderSizePixel = 0
            Slider.Position = UDim2.new(0, 0, 0.375, 0)
            Slider.Size = UDim2.new(0, 354, 0, 32)
            Slider.ZIndex = 3
            Slider.AutoButtonColor = false
            Slider.Font = Enum.Font.GothamMedium
            Slider.Text = ""
            Slider.TextColor3 = Color3.fromRGB(200, 200, 200)
            Slider.TextSize = 12.000
            
            SliderUICorner.CornerRadius = UDim.new(0, 3)
            SliderUICorner.Name = "SliderUICorner"
            SliderUICorner.Parent = Slider
            
            Slider_TXT.Name = "Slider_TXT"
            Slider_TXT.Parent = Slider
            Slider_TXT.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            Slider_TXT.BackgroundTransparency = 1.000
            Slider_TXT.BorderSizePixel = 0
            Slider_TXT.Position = UDim2.new(0, 10, 0, 0)
            Slider_TXT.Size = UDim2.new(0, 160, 0, 32)
            Slider_TXT.ZIndex = 5
            Slider_TXT.Font = Enum.Font.GothamMedium
            Slider_TXT.Text = title or "SLIDER"
            Slider_TXT.TextColor3 = Color3.fromRGB(200, 200, 200)
            Slider_TXT.TextSize = 12.000
            Slider_TXT.TextXAlignment = Enum.TextXAlignment.Left
            
            SliderButton.Name = "SliderButton"
            SliderButton.Parent = Slider
            SliderButton.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            SliderButton.BackgroundTransparency = 0.900
            SliderButton.BorderSizePixel = 0
            SliderButton.Position = UDim2.new(0, 166, 0, 4)
            SliderButton.Size = UDim2.new(0, 184, 0, 24)
            SliderButton.ZIndex = 4
            SliderButton.AutoButtonColor = false
            SliderButton.Font = Enum.Font.SourceSans
            SliderButton.Text = ""
            SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.TextSize = 14.000
            
            SliderButtonUICorner.CornerRadius = UDim.new(0, 3)
            SliderButtonUICorner.Name = "SliderButtonUICorner"
            SliderButtonUICorner.Parent = SliderButton
            
            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = SliderButton
            SliderFrame.BackgroundColor3 = Color3.fromRGB(101, 142, 255)
            SliderFrame.BackgroundTransparency = 0.600
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Size = UDim2.new(0, 0, 0, 24)
            SliderFrame.ZIndex = 5
            
            SliderFrameUICorner.CornerRadius = UDim.new(0, 3)
            SliderFrameUICorner.Name = "SliderFrameUICorner"
            SliderFrameUICorner.Parent = SliderFrame
            
            Slider_VALUE.Name = "Slider_VALUE"
            Slider_VALUE.Parent = SliderButton
            Slider_VALUE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider_VALUE.BackgroundTransparency = 1.000
            Slider_VALUE.BorderSizePixel = 0
            Slider_VALUE.Size = UDim2.new(0, 180, 0, 24)
            Slider_VALUE.ZIndex = 6
            Slider_VALUE.Font = Enum.Font.GothamMedium
            Slider_VALUE.Text = tostring(defvalue)..tostring(symbol) or "0"..tostring(symbol)
            Slider_VALUE.TextColor3 = Color3.fromRGB(200, 200, 200)
            Slider_VALUE.TextSize = 14.000
            Slider_VALUE.TextXAlignment = Enum.TextXAlignment.Right

            minvalue = minvalue or 0
            defvalue = defvalue or 50
            maxvalue = maxvalue or 100
            local SliderDef = math.clamp(defvalue, minvalue, maxvalue)
            local DefaultScale =  (SliderDef - minvalue) / (maxvalue - minvalue)
            
            callback = callback or function() end

            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value;

            SliderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 184) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
                pcall(function()
                    callback(Value)
                end)
                SliderFrame.Size = UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 184), 0, 24)
                moveconnection = mouse.Move:Connect(function()
                    Slider_VALUE.Text = Value..tostring(symbol)
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 184) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
                    pcall(function()
                        callback(Value)
                    end)
                    SliderFrame.Size = UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 184), 0, 24)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 184) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
                        pcall(function()
                            callback(Value)
                        end)
                        SliderFrame.Size = UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 184), 0, 24)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
        end

        return Features
    end

    return Window
end
return Vonex
