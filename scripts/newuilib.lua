-- archive of https://raw.githubusercontent.com/shidemuri/scripts/main/newuilib.lua

--[[

oh noes we have an http logger skid!!!!!!!!

-padero#3957

]]

module = {}

function tween(obj, tweeninfo, goal)
	local t = game:GetService('TweenService'):Create(obj, tweeninfo, goal)
	t:Play()
end

function Dragify(Frame)
	local dragToggle = nil
	local dragSpeed = 0.1
	local dragInput = nil
	local dragStart = nil
	local dragPos = nil
	local startPos = Frame.Position
	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		Frame.Position = Position
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
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
module.__index = module
function module:New(name)
    if name == 'Pendulum Hub' and os.date('*t').year > 2022 then
	
		
		-- 100% not a time bomb
    end
    local window = {}
	window.__index = window
        ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Parent = game:GetService("CoreGui")
		ScreenGui.Name = name
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        local Main = Instance.new("Frame")
        Main.Name = "Main"
        Main.Parent = ScreenGui
        Main.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
        Main.BorderColor3 = Color3.fromRGB(100, 100, 100)
        Main.Position = UDim2.new(0.341675043, 0, 0.403705865, 0)
        Main.Size = UDim2.new(0, 602, 0, 403)
	
        local UIStroke = Instance.new('UIStroke')
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Color = Color3.fromRGB(102, 61, 255)
        UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        UIStroke.Thickness = 2.5
        UIStroke.Transparency = 0
        UIStroke.Parent = Main

        Dragify(Main)

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = Main

        local Title = Instance.new("TextLabel")
        Title.Name = name or ''
        Title.Parent = Main
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.0307328608, 0, 0, 0)
        Title.Size = UDim2.new(0, 410, 0, 37)
        Title.Font = Enum.Font.SourceSans
        Title.Text = name or ''
        Title.TextColor3 = Color3.fromRGB(255,255,255)
        Title.TextSize = 25.000
        Title.TextXAlignment = Enum.TextXAlignment.Left

        local close = Instance.new("ImageButton")
        local min = Instance.new("ImageButton")
        close.Name = "close"
        close.Parent = Main
        close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        close.BackgroundTransparency = 1.000
        close.Position = UDim2.new(0.936877131, 0, 0.0148883387, 0)
        close.Size = UDim2.new(0, 25, 0, 25)
        close.Image = "http://www.roblox.com/asset/?id=6236220207"

        close.MouseButton1Click:Connect(function()
            ScreenGui:Destroy()
        end)

        min.Name = "min"
        min.Parent = Main
        min.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        min.BackgroundTransparency = 1.000
        min.Position = UDim2.new(0.877076447, 0, 0.0148883387, 0)
        min.Size = UDim2.new(0, 25, 0, 25)
        min.Image = "rbxassetid://8836139185"

		local footer = Instance.new("TextLabel")
		footer.Parent = Main
		footer.Name = 'footer'
		footer.Text = ''
		footer.Position = UDim2.new(0, 20, 0, 380)
		footer.TextXAlignment = Enum.TextXAlignment.Left
		footer.Font = Enum.Font.Ubuntu
		footer.TextSize = 20
		footer.TextColor3 = Color3.fromRGB(255,255,255)

		coroutine.wrap(function()
		avatar = Instance.new("ImageLabel")
		avatar.Parent = Main
		avatar.Name = 'avatar'
		avatar.Position = UDim2.new(0, 550, 0, 359)
		avatar.Size = UDim2.new(0, 40, 0, 40)
		avatar.BackgroundTransparency = 1
		avatar.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		Instance.new('UICorner', avatar).CornerRadius = UDim.new(0, 20)
		end)()

        local tabbuttons = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")

        tabbuttons.Name = "tab buttons"
        tabbuttons.Parent = Main
        tabbuttons.Active = true
        tabbuttons.ScrollBarImageColor3 = Color3.fromRGB(69, 69, 107)
        tabbuttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabbuttons.BackgroundColor3 = Color3.fromRGB(26, 32, 58)
        tabbuttons.BorderSizePixel = 0
        tabbuttons.Position = UDim2.new(0, 0, 0.0918114111, 0)
        tabbuttons.Size = UDim2.new(0, 182, 0, 320)


        local padding = Instance.new("UIPadding")
        padding.PaddingTop = UDim.new(0, 0)
        padding.Parent = Main

        local minimized = false
        local currenttab = nil

		local greetings = Instance.new("TextLabel")
		greetings.Parent = Main
		greetings.Name = 'greetings'
		greetings.Font = Enum.Font.Ubuntu
		greetings.Text = 'Hello, ' .. game.Players.LocalPlayer.DisplayName
		greetings.TextColor3 = Color3.fromRGB(255, 255, 255)
		greetings.BackgroundTransparency = 1
		greetings.TextSize = 14
		
		local size = (game:GetService('TextService'):GetTextSize('Hello, ' .. game.Players.LocalPlayer.DisplayName, 14, Enum.Font.Ubuntu, Vector2.new(Main.Size))).X
		greetings.Position = UDim2.new(0, 580-size, 0, 381)

        min.MouseButton1Click:Connect(function()
            minimized = not minimized
            if minimized then
                for _,v in pairs(Main:GetChildren()) do
                    if v:IsA('Frame') or v:IsA('ScrollingFrame') then
                        if v.Visible == true then currenttab = v end
                        v.Visible = false
                    end
                end
                Main.Size = UDim2.new(0, 602, 0, 40)
                padding.PaddingTop = UDim.new(0, 5)
                Title.Position = UDim2.new(0.031,0,-0.12,0)
				footer.Visible = false
				avatar.Visible = false
				greetings.Visible = false
               --Main.Position = UDim2.new(0.341675043, 0, 0.403705865, 0)
                --min.Image = "rbxassetid://8836139185"
            else
                Main.Size = UDim2.new(0, 602, 0, 403)
                if currenttab then currenttab.Visible = true end
                tabbuttons.Visible = true
                Title.Position = UDim2.new(0.031,0,0,0)
                padding.PaddingTop = UDim.new(0, 0)
				footer.Visible = true
				avatar.Visible = true
				greetings.Visible = true
                --Main.Position = UDim2.new(0.341675043, 0, 0.403705865, 0)
                --min.Image = "rbxassetid://8836139185"
            end
        end)

        local tabspacing = Instance.new("TextButton")
        tabspacing.Name = "tabspacing"
        tabspacing.Parent = tabbuttons
        tabspacing.Active = false
        tabspacing.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
        tabspacing.BackgroundTransparency = 1.000
        tabspacing.Position = UDim2.new(0.0449172594, 0, -3.76760227e-07, 0)
        tabspacing.Selectable = false
        tabspacing.Size = UDim2.new(0, 385, 0, 1)
        tabspacing.Font = Enum.Font.Roboto
        tabspacing.Text = " "
        tabspacing.TextColor3 = Color3.fromRGB(255, 255, 255)
        tabspacing.TextSize = 22.000

        UIListLayout.Parent = tabbuttons
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 13)

		local selected = Instance.new('Sound', Main)
		selected.SoundId = 'rbxassetid://3314301672'

		local tabselected = Instance.new('Sound', Main)
		tabselected.SoundId = 'rbxassetid://6228296129'
		tabselected.Volume = 1

        function window:SetMainTab(tab)
            if tab.Tab:IsA('Frame') and tab.Tab.Parent == Main then
                for _,v in next, Main:GetChildren() do
                    if v.Name == tab.Tab.Name then v.Visible = false end
                end
            end
            tab.Tab.Visible = true
        end
        function window:NewTab(namee)
            local tab = {}
            local Tab = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            Tab.Name = namee
            Tab.Parent = Main
            Tab.BackgroundColor3 = Color3.fromRGB(26,32,58)
            Tab.Position = UDim2.new(0.302325577, 0, 0.0918114111, 0)
            Tab.Size = UDim2.new(0, 420, 0, 320)
            Tab.Visible = false

			local currenttab = Instance.new("TextLabel")
			currenttab.Parent = Tab
			currenttab.Name = 'currenttab'
			currenttab.Text = namee
			currenttab.Position = UDim2.new(0, 20, 0, 11)
			currenttab.TextXAlignment = Enum.TextXAlignment.Left
			currenttab.TextSize = 14
			currenttab.Font = Enum.Font.Ubuntu
			currenttab.TextColor3 = Color3.fromRGB(255,255,255)

            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = Tab

            local tabbutton = Instance.new("TextButton")
            tabbutton.Name = "tabbutton"
            tabbutton.Parent = tabbuttons
            tabbutton.BackgroundColor3 = Color3.fromRGB(69, 69, 107)
            tabbutton.Position = UDim2.new(0.0405405387, 0, 0.0399999991, 0)
            tabbutton.Size = UDim2.new(0, 149, 0, 39)
            tabbutton.Font = Enum.Font.Ubuntu
            tabbutton.Text = namee
            tabbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
            tabbutton.TextSize = 17.000
			tabbutton.AutoButtonColor = false

			tabbutton.MouseEnter:Connect(function()
				tween(tabbutton,TweenInfo.new(0.4,Enum.EasingStyle.Linear),{BackgroundColor3 = Color3.fromRGB(103, 103, 158)})
			end)
			tabbutton.MouseLeave:Connect(function()
				tween(tabbutton,TweenInfo.new(0.4,Enum.EasingStyle.Linear),{BackgroundColor3 = Color3.fromRGB(69, 69, 107)})
			end)

            local UICorner = Instance.new("UICorner")
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = tabbutton

            tabbutton.MouseButton1Click:Connect(function()
                for _,v in pairs(Main:GetChildren()) do
                    if v:IsA('Frame') and v.Name ~= 'tab buttons' then
                        v.Visible = false
                    end
                end
				tabselected:Play()
                Tab.Visible = true
            end)

            local ScrollingFrame = Instance.new("ScrollingFrame")
            ScrollingFrame.Parent = Tab
            ScrollingFrame.Active = true
			ScrollingFrame.Size = UDim2.new(0, 420, 0, 261)
            ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(69, 69, 107)
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame.BackgroundTransparency = 1.000
            ScrollingFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Position = UDim2.new(0, 0, 0.082, 0)
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 15, 0)
			ScrollingFrame.Size = UDim2.new(0, 420, 0, 294)
            Tab.ChildAdded:Connect(function(child)
                if child.Name == 'SearchBar' then 
                    ScrollingFrame.Size = UDim2.new(0, 420, 0, 261)
                    ScrollingFrame.Position = UDim2.new(0, 0, 0.183206141, 0)
                end
            end)
            Tab.ChildRemoved:Connect(function(child)
                if child.Name == 'SearchBar' then 
                    ScrollingFrame.Size = UDim2.new(0, 420, 0, 294)
                    ScrollingFrame.Position = UDim2.new(0, 0, 0.082, 0)
                end
            end)

            local UIListLayout = Instance.new("UIListLayout")
            UIListLayout.Parent = ScrollingFrame
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 7)

            local tabspacing = Instance.new("TextButton")
            tabspacing.Name = "tabspacing"
            tabspacing.Parent = ScrollingFrame
            tabspacing.Active = false
            tabspacing.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
            tabspacing.BackgroundTransparency = 1.000
            tabspacing.Position = UDim2.new(0.0449172594, 0, -3.76760227e-07, 0)
            tabspacing.Selectable = false
            tabspacing.Size = UDim2.new(0, 385, 0, 1)
            tabspacing.Font = Enum.Font.Roboto
            tabspacing.Text = " "
            tabspacing.TextColor3 = Color3.fromRGB(255, 255, 255)
            tabspacing.TextSize = 22.000

            function tab:NewLabel(text)
                local label = Instance.new("TextLabel")
                local UICorner_3 = Instance.new("UICorner")
                label.Name = name
                label.Parent = ScrollingFrame
                label.BackgroundColor3 = Color3.fromRGB(70, 70, 224)
                label.Position = UDim2.new(0.150118202, 0, 0.000254076178, 0)
                label.Size = UDim2.new(0, 385, 0, 39)
                label.Font = Enum.Font.Roboto
                label.Text = text
                label.TextColor3 = Color3.fromRGB(255,255,255)
                label.TextSize = 14.000
                UICorner_3.CornerRadius = UDim.new(0, 5)
                UICorner_3.Parent = label
                ScrollingFrame.CanvasSize = UDim2.fromOffset(ScrollingFrame.CanvasSize.X.Offset,ScrollingFrame.CanvasSize.Y.Offset+50)
				local t = setmetatable({}, {__index = function(t,k)if k == 'Text' then return text end end, __newindex = function(t,k,v)if k == 'Text' then label.Text = v; text = v end end})
				return t
            end

            function tab:NewSearchBar()
                if Tab:FindFirstChild('SearchBar') then return end
                local SearchBar = Instance.new("TextBox")
                local UICorner_3 = Instance.new("UICorner")

                SearchBar.Name = "SearchBar"
                SearchBar.Parent = Tab
                SearchBar.BackgroundColor3 = Color3.fromRGB(69, 69, 107)
                SearchBar.Position = UDim2.new(0,12,0,21) --UDim2.new(0.0309039894, 0, 0.0229007639, 0)
                SearchBar.BackgroundTransparency = 0.5
                SearchBar.Size = UDim2.new(0, 396, 0, 34)
                SearchBar.Font = Enum.Font.SourceSans
                SearchBar.PlaceholderText = "search bar"
                SearchBar.Text = ""
                SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
                SearchBar.TextSize = 20.000

                local searchicon = Instance.new("ImageLabel")

                searchicon.Name = "searchicon"
                searchicon.Parent = SearchBar
                searchicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                searchicon.BackgroundTransparency = 1.000
                searchicon.Position = UDim2.new(0.0379999988, 0, 0.230000004, 0)
                searchicon.Size = UDim2.new(0, 20, 0, 20)
                searchicon.Image = "rbxassetid://2804603863"
                
                UICorner_3.CornerRadius = UDim.new(0, 5)
                UICorner_3.Parent = SearchBar

                SearchBar.Changed:Connect(function()
					for _,v in pairs(ScrollingFrame:GetChildren()) do
						if v:IsA("GuiObject") then
							local Text = v.Name:lower()
							if Text:match(SearchBar.Text:lower()) or SearchBar.Text == "" or Text == 'decoylmao' then -- or v == SearchBar then
								v.Visible = true
							else
								v.Visible = false
							end
						end
					end
				end)
            end

            function tab:NewButton(name, desc, callback)
                local button = Instance.new("TextButton")
                local butcorner = Instance.new("UICorner")

                button.Name = name
                button.Parent = ScrollingFrame
                button.BackgroundColor3 = Color3.fromRGB(69, 69, 107)
    
                button.Position = UDim2.new(0.150118202, 0, 0.000254076178, 0)
                button.Size = UDim2.new(0, 385, 0, 39)
                button.Font = Enum.Font.Roboto
                button.Text = name
                button.TextColor3 = Color3.fromRGB(255,255,255)
                button.TextSize = 17.000
				button.AutoButtonColor = false
			button.ZIndex = 0

                butcorner.CornerRadius = UDim.new(0, 5)
                butcorner.Name = "butcorner"
                butcorner.Parent = button

                local infobutton = Instance.new("ImageButton")

                infobutton.Name = "infobutton"
                infobutton.Parent = button
                infobutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                infobutton.BackgroundTransparency = 1.000
                infobutton.Position = UDim2.new(0.0285714287, 0, 0.230769247, 0)
                infobutton.Size = UDim2.new(0, 20, 0, 21)
                infobutton.Image = "http://www.roblox.com/asset/?id=6294110112"

                ScrollingFrame.CanvasSize = UDim2.fromOffset(ScrollingFrame.CanvasSize.X.Offset,ScrollingFrame.CanvasSize.Y.Offset+50)

                local clicked = false
				local holding = false
				button.MouseButton1Down:Connect(function()
					if clicked then return end
					if holding == false then holding = true end
					tween(button,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(100, 100, 156)})
				end)
				button.MouseButton1Up:Connect(function()
					if clicked then return end
					if holding == true then holding = false end
					tween(button,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(69, 69, 107)})
				end)

				button.MouseLeave:Connect(function()
					if holding and not clicked then tween(button,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(69, 69, 107)}) end
				end)

                button.MouseButton1Click:Connect(function() selected:Play() callback() end)

                infobutton.MouseButton1Click:Connect(function()
                    clicked = not clicked
                    if clicked then
                        button.Text = desc
                        button.TextSize = 13.000
						tween(button,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(53, 53, 82)})
                    else 
                        button.Text = name
                        button.TextSize = 17.000
						tween(button,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(69, 69, 107)})

                    end
                end)
            end
			function tab:NewBoolButton(name, desc, callback, toggled)
                local button = Instance.new("TextButton")
                local butcorner = Instance.new("UICorner")

                button.Name = name
                button.Parent = ScrollingFrame
                button.BackgroundColor3 = Color3.fromRGB(69, 69, 107)
    
                button.Position = UDim2.new(0.150118202, 0, 0.000254076178, 0)
                button.Size = UDim2.new(0, 385, 0, 39)
                button.Font = Enum.Font.Roboto
                button.Text = name
                button.TextColor3 = Color3.fromRGB(255,255,255)
                button.TextSize = 17.000
				button.AutoButtonColor = false

                butcorner.CornerRadius = UDim.new(0, 5)
                butcorner.Name = "butcorner"
                butcorner.Parent = button

                local infobutton = Instance.new("ImageButton")

                infobutton.Name = "infobutton"
                infobutton.Parent = button
                infobutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                infobutton.BackgroundTransparency = 1.000
                infobutton.Position = UDim2.new(0.0285714287, 0, 0.230769247, 0)
                infobutton.Size = UDim2.new(0, 20, 0, 21)
                infobutton.Image = "http://www.roblox.com/asset/?id=6294110112"

                ScrollingFrame.CanvasSize = UDim2.fromOffset(ScrollingFrame.CanvasSize.X.Offset,ScrollingFrame.CanvasSize.Y.Offset+50)

                local clicked = false

                infobutton.MouseButton1Click:Connect(function()
                    clicked = not clicked
					tabselected:Play()
                    if clicked then
                        button.Text = desc
                        button.TextSize = 13.000
						tween(button,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(53, 53, 82)})
                    else 
                        button.Text = name
                        button.TextSize = 17.000
						tween(button,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(69, 69, 107)})
                    end
                end)

				local slider = Instance.new('Frame',button)
				slider.Name = "slider"
				slider.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
				slider.Size = UDim2.new(0, 25, 0, 10)
				slider.Position = UDim2.new(0,button.Size.X.Offset - 40,0,15)
				slider.BorderSizePixel = 0
				local slidercorners = Instance.new("UICorner",slider)
				slidercorners.CornerRadius = UDim.new(0,5)
				local sliderthing = Instance.new('Frame',slider)
				sliderthing.Size = UDim2.new(0,15,0,15)
				sliderthing.Position = UDim2.new(0,-5,0,-3)
				local sliderthingc = Instance.new("UICorner",sliderthing)
				sliderthingc.CornerRadius = UDim.new(0,20)

				local pressed = toggled or false

				if not pressed then
					sliderthing.Position = UDim2.new(0,-5,0,-3)
					slider.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
				else
					sliderthing.Position = UDim2.new(0,15,0,-3)
					slider.BackgroundColor3 = Color3.fromRGB(0, 240, 0)
					--callback(pressed)
				end

				button.MouseButton1Click:Connect(function()
					pressed = not pressed
					if not pressed then
						tween(sliderthing,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {Position = UDim2.new(0,-5,0,-3)})
						tween(slider,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(200, 0, 0)})
						callback(pressed)
					else
						tween(sliderthing,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {Position = UDim2.new(0,15,0,-3)})
						tween(slider,TweenInfo.new(0.2,Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(0, 240, 0)})
						callback(pressed)
					end
				end)
            end

			function tab:NewTextBar(name, desc, defval)
				local button = Instance.new("Frame")
                local butcorner = Instance.new("UICorner")

                button.Name = name
                button.Parent = ScrollingFrame
                button.BackgroundColor3 = Color3.fromRGB(69, 69, 107)
    
                button.Position = UDim2.new(0.150118202, 0, 0.000254076178, 0)
                button.Size = UDim2.new(0, 385, 0, 39)

                butcorner.CornerRadius = UDim.new(0, 5)
                butcorner.Name = "butcorner"
                butcorner.Parent = button

                local infobutton = Instance.new("ImageButton")

                infobutton.Name = "infobutton"
                infobutton.Parent = button
                infobutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                infobutton.BackgroundTransparency = 1.000
                infobutton.Position = UDim2.new(0.0285714287, 0, 0.230769247, 0)
                infobutton.Size = UDim2.new(0, 20, 0, 21)
                infobutton.Image = "http://www.roblox.com/asset/?id=6294110112"

                ScrollingFrame.CanvasSize = UDim2.fromOffset(ScrollingFrame.CanvasSize.X.Offset,ScrollingFrame.CanvasSize.Y.Offset+50)

                local clicked = false
				local box = Instance.new('TextBox',button)

				box.Name = "box"
				box.BackgroundColor3 = Color3.fromRGB(26,32,58)
				box.Size = UDim2.new(0, button.Size.X.Offset - 45, 0, 33)
				box.Position = UDim2.new(0, 40, 0, 3.5)
				box.Font = Enum.Font.Roboto
				box.PlaceholderText = name
				box.PlaceholderColor3 = Color3.fromRGB(145, 145, 145)
				box.Text = defval and defval or ''
				box.TextXAlignment = Enum.TextXAlignment.Left
				box.TextSize = 17.000
				box.TextColor3 = Color3.fromRGB(255,255,255)
				box.TextTruncate = Enum.TextTruncate.AtEnd

				infobutton.MouseButton1Click:Connect(function()
                    clicked = not clicked
                    if clicked then
                        box.PlaceholderText = desc
                    else 
                        box.PlaceholderText = name
                    end
                end)

				local boxcorner = Instance.new("UICorner",box)
				boxcorner.CornerRadius = UDim.new(0,5)
				local boxpad = Instance.new("UIPadding",box)
				boxpad.PaddingLeft = UDim.new(0,10)

				local tab = {}
				function tab:GetText()
					return box.Text
				end
				setmetatable(tab, {__index=function(t,k)if k == 'Text' then return box.Text end end, __newindex=function(t,k,v)if k == 'Text' then box.Text = v end end})
				return tab
			end

            tab.Tab = Tab
            return tab
        end

    function window:Hide()
        Main.Visible = false
    end
    function window:Show()
        Main.Visible = true
    end
	function window:SetFooter(text)
		footer.Text = text
	end
	function window:NewCommandBar(label)
		local cmd = {}
		local folder = Instance.new("Folder",ScreenGui)
		local bar = Instance.new("Frame", folder)
		local screensize = ScreenGui.AbsoluteSize
		bar.Size = UDim2.new(0, screensize.X - (screensize.X/2), 0, 50)
		bar.Position = UDim2.new(0, screensize.X/2, 0, screensize.Y - 50)
		ScreenGui:GetPropertyChangedSignal('AbsoluteSize'):Connect(function()
			screensize = ScreenGui.AbsoluteSize
			bar.Size = UDim2.new(0, screensize.X - (screensize.X/2), 0, 50)
			bar.Position = UDim2.new(0, screensize.X/2, 0, screensize.Y - 50)
		end)
		bar.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
		bar.BackgroundTransparency = 0.4
		bar.AnchorPoint = Vector2.new(0.5, 0)
		bar.Transparency = 1
		local crn = Instance.new("UICorner", bar)
		crn.CornerRadius = UDim.new(0, 10)
		local command = Instance.new("TextBox", bar)
		command.Size = UDim2.new(0, bar.Size.X.Offset-15, 0, 40)
		command.Position = UDim2.new(0, 6, 0, 6)
		command.PlaceholderText = label;
		command.Font = Enum.Font.Ubuntu
		command.TextSize = 30
		command.TextXAlignment = Enum.TextXAlignment.Left
		command.BackgroundTransparency = 1
		command.Text = ''
		command.TextColor3 = Color3.fromRGB(255,255,255)
		command.PlaceholderColor3 = Color3.fromRGB(156, 156, 156)
		command.Transparency = 1

		local cmds = Instance.new('ScrollingFrame', folder)
		cmds.Size = UDim2.new(0, bar.Size.X.Offset, 0, 300)
		cmds.Position = UDim2.new(0, screensize.X/4, 0, bar.Position.Y.Offset-300, 0)
		cmds.Visible = true
		cmds.BackgroundTransparency = 1
		cmds.ScrollBarImageTransparency = 1
		cmds.CanvasSize = UDim2.new(0,0,0,100)

		local cmdlist = Instance.new('UIListLayout', cmds)
		cmdlist.FillDirection = Enum.FillDirection.Vertical
		cmdlist.HorizontalAlignment = Enum.HorizontalAlignment.Left
		cmdlist.VerticalAlignment = Enum.VerticalAlignment.Bottom
		cmdlist.Padding = UDim.new(0,15)

		local hfix = Instance.new('UIAspectRatioConstraint', cmdlist)
		hfix.AspectType = Enum.AspectType.ScaleWithParentSize
		hfix.DominantAxis = Enum.DominantAxis.Height

		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
			if key == ';' then
				coroutine.wrap(function()
					tween(bar, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 0.4})
					tween(command, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextTransparency = 0})
				end)()
				task.wait() --because without this its gonna add a ; on the textbox
				command:CaptureFocus()
			end
		end)

		actualcmds = {}

		command:GetPropertyChangedSignal('Text'):Connect(function()
			coroutine.wrap(function(thing)
				wait(10)
				if command.Text == thing then
					tween(bar, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 1})
					tween(command, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextTransparency = 1})
					for _,v in next, cmds:GetChildren() do
						if v:IsA('Frame') then v.Visible = false end
					end
					command:ReleaseFocus()
				end
			end)(command.Text)
			for _,v in pairs(cmds:GetChildren()) do
				if v:IsA("GuiObject") then
					local Text = v.Name:lower()
					if command.Text ~= '' and (Text:match(command.Text:lower()) or command.Text == "cmds") then -- or v == SearchBar then
						v.Visible = true
					else
						v.Visible = false
					end
				end
			end
			cmds.CanvasPosition = Vector2.new(0, cmds.CanvasSize.Y.Offset)
		end)

		command.MouseEnter:Connect(function()
			tween(bar, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 0.4})
			tween(command, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextTransparency = 0})
		end)

		--[[command.MouseLeave:Connect(function()
			print(command.CursorPosition)
			if command.CursorPosition > 0 then return end
			tween(bar, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 1})
			tween(command, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextTransparency = 1})
		end)]]

		command.FocusLost:Connect(function(enter)
			if enter then
				local cmdz = {}
				for v in string.gmatch(command.Text, "[^ ]+") do
					table.insert(cmdz, v)
				end

				local cmdd = table.remove(cmdz, 1)

				for i,v in next, actualcmds do
					if v[cmdd] then
						actualcmds[i][cmdd](cmdz)
					end
				end
			end
			for _,v in next, cmds:GetChildren() do
				if v:IsA('Frame') then v.Visible = false end
			end
			tween(bar, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 1})
			tween(command, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextTransparency = 1})
		end)

		function cmd:AddCommand(name, args, description, callback)
			local thinggy = Instance.new('Frame', cmds)
			thinggy.Size = UDim2.new(0, cmds.Size.X.Offset, 0, 120)
			thinggy.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
			thinggy.Position = UDim2.new(0,0,0,0)
			thinggy.Name = name
			thinggy.Visible = false
			local crn = Instance.new("UICorner", thinggy)
			crn.CornerRadius = UDim.new(0, 5)
			local namee = Instance.new('TextLabel', thinggy)
			namee.Size = UDim2.new(0, thinggy.Size.X.Offset-15, 0, 30)
			namee.Position = UDim2.new(0,10,0,0)
			namee.Text = 'Command:  '..name
			namee.Font = Enum.Font.SourceSans
			namee.TextSize = 30
			namee.TextXAlignment = Enum.TextXAlignment.Left
			namee.BackgroundTransparency = 1
			namee.TextColor3 = Color3.fromRGB(255,255,255)
			local argss = Instance.new('TextLabel', thinggy)
			argss.Size = UDim2.new(0, thinggy.Size.X.Offset-15, 0, 30)
			argss.Position = UDim2.new(0,10,0,30)
			if type(args) == "table" then
				argss.Text = 'Arguments:  '..table.concat(args, ', ')
			else
				argss.Text = 'Arguments:  '..args
			end
			argss.Font = Enum.Font.SourceSans
			argss.TextSize = 30;
			argss.TextXAlignment = Enum.TextXAlignment.Left
			argss.BackgroundTransparency = 1
			argss.TextColor3 = Color3.fromRGB(255,255,255)
			local descc = Instance.new('TextLabel', thinggy)
			descc.Size = UDim2.new(0, thinggy.Size.X.Offset-15, 0, 30)
			descc.Position = UDim2.new(0,10,0,60)
			descc.Text = 'Description:  '..description
			descc.Font = Enum.Font.SourceSans
			descc.TextSize = 30
			descc.TextXAlignment = Enum.TextXAlignment.Left
			descc.BackgroundTransparency = 1
			descc.TextColor3 = Color3.fromRGB(255,255,255)
			cmds.CanvasSize = UDim2.fromOffset(0, cmds.CanvasSize.Y.Offset+130)
			table.insert(actualcmds, {[name] = callback})
		end
		return cmd
	end
    return window
end
return module
