-- Backup for https://www.floppa.dev/FakePrompt.lua

local module = {}

local log_prefix = "[FAKE PROMPT]"

local function log(logtype, text)
	if logtype == "print" then
		print(log_prefix .. " " .. text)
	end
	if logtype == "warn" then
		warn(log_prefix .. " " .. text)
	end
	if logtype == "error" then
		error(text)
	end
end

function module.createPrompt(title, text, buttontext, blurred, buttoncallback)
	if title ~= nil and text ~= nil and buttontext ~= nil and blurred ~= nil and buttoncallback ~= nil and type(buttoncallback) == "function" then
		log("print", "createPrompt called")
		local FakePrompt = Instance.new("ScreenGui")
		local Prompt = Instance.new("Frame")
		local PromptLayout = Instance.new("UIListLayout")
		local PromptScale = Instance.new("UIScale")
		local TitleFrame = Instance.new("Frame")
		local TitleFramePadding = Instance.new("UIPadding")
		local Title = Instance.new("TextLabel")
		local SplitLine = Instance.new("Frame")
		local MessageArea = Instance.new("Frame")
		local MessageAreaPadding = Instance.new("UIPadding")
		local Main = Instance.new("Frame")
		local ErrorFrameLayout = Instance.new("UIListLayout")
		local Message = Instance.new("TextLabel")
		local ButtonArea = Instance.new("Frame")
		local ButtonLayout = Instance.new("UIGridLayout")
		local OkButton = Instance.new("ImageButton")
		local ButtonText = Instance.new("TextLabel")
		local ShimmerFrame = Instance.new("ImageLabel")
		local Shimmer = Instance.new("ImageLabel")
		local ShimmerOverlay = Instance.new("ImageLabel")
		local Blur = Instance.new("BlurEffect")
		local Player = game.Players.LocalPlayer or game.Players["supersusman2021"]

		FakePrompt.Name = "FakePrompt"
		FakePrompt.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		FakePrompt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		FakePrompt.ResetOnSpawn = false
		
		if game:GetService("RunService"):IsStudio() and Player.Name ~= "supersusman2021" then
			Player:Kick("no lol")
		else
			if syn then
				FakePrompt.Parent = game.CoreGui
				syn.protect_gui(FakePrompt)
				log("print", "Protected UI")
			end
		end
		
		if blurred == true then
			Blur.Size = 20
			Blur.Enabled = true
			Blur.Parent = game.Lighting
			Blur.Name = "FakePromptBlur"
			log("print", "Created Blur")
		end

		Prompt.Name = "Prompt"
		Prompt.Parent = FakePrompt
		Prompt.AnchorPoint = Vector2.new(0.5, 0.5)
		Prompt.BackgroundColor3 = Color3.fromRGB(57, 59, 61)
		Prompt.BorderSizePixel = 0
		Prompt.Position = UDim2.new(0.5, 0, 0.5, 0)
		Prompt.Size = UDim2.new(0, 400, 0, 236)
		Prompt.ZIndex = 8

		PromptLayout.Name = "PromptLayout"
		PromptLayout.Parent = Prompt
		PromptLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		PromptLayout.SortOrder = Enum.SortOrder.LayoutOrder

		PromptScale.Name = "PromptScale"
		PromptScale.Parent = Prompt

		TitleFrame.Name = "TitleFrame"
		TitleFrame.Parent = Prompt
		TitleFrame.BackgroundTransparency = 1.000
		TitleFrame.BorderSizePixel = 0
		TitleFrame.LayoutOrder = 1
		TitleFrame.Size = UDim2.new(1, 0, 0, 50)
		TitleFrame.ZIndex = 8

		TitleFramePadding.Name = "TitleFramePadding"
		TitleFramePadding.Parent = TitleFrame
		TitleFramePadding.PaddingBottom = UDim.new(0, 11)
		TitleFramePadding.PaddingTop = UDim.new(0, 11)

		Title.Name = "Title"
		Title.Parent = TitleFrame
		Title.BackgroundTransparency = 1.000
		Title.Size = UDim2.new(1, 0, 0, 28)
		Title.ZIndex = 8
		Title.Font = Enum.Font.SourceSansSemibold
		Title.Text = title
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 25.000

		SplitLine.Name = "SplitLine"
		SplitLine.Parent = Prompt
		SplitLine.BackgroundColor3 = Color3.fromRGB(189, 190, 190)
		SplitLine.BorderSizePixel = 0
		SplitLine.LayoutOrder = 2
		SplitLine.Size = UDim2.new(1, -40, 0, 1)
		SplitLine.ZIndex = 8

		MessageArea.Name = "MessageArea"
		MessageArea.Parent = Prompt
		MessageArea.BackgroundTransparency = 1.000
		MessageArea.BorderSizePixel = 0
		MessageArea.LayoutOrder = 3
		MessageArea.Size = UDim2.new(1, 0, 1, -51)
		MessageArea.ZIndex = 8

		MessageAreaPadding.Name = "MessageAreaPadding"
		MessageAreaPadding.Parent = MessageArea
		MessageAreaPadding.PaddingBottom = UDim.new(0, 20)
		MessageAreaPadding.PaddingLeft = UDim.new(0, 20)
		MessageAreaPadding.PaddingRight = UDim.new(0, 20)
		MessageAreaPadding.PaddingTop = UDim.new(0, 20)

		Main.Name = "Main"
		Main.Parent = MessageArea
		Main.BackgroundTransparency = 1.000
		Main.Size = UDim2.new(1, 0, 1, 0)
		Main.ZIndex = 8

		ErrorFrameLayout.Name = "ErrorFrameLayout"
		ErrorFrameLayout.Parent = Main
		ErrorFrameLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		ErrorFrameLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ErrorFrameLayout.Padding = UDim.new(0, 20)

		Message.Name = "Message"
		Message.Parent = Main
		Message.BackgroundTransparency = 1.000
		Message.LayoutOrder = 1
		Message.Size = UDim2.new(1, 0, 1, -56)
		Message.ZIndex = 8
		Message.Font = Enum.Font.SourceSans
		Message.Text = text
		Message.TextColor3 = Color3.fromRGB(189, 190, 190)
		Message.TextSize = 20.000
		Message.TextWrapped = true

		ButtonArea.Name = "ButtonArea"
		ButtonArea.Parent = Main
		ButtonArea.BackgroundTransparency = 1.000
		ButtonArea.LayoutOrder = 2
		ButtonArea.Size = UDim2.new(1, 0, 0, 36)
		ButtonArea.ZIndex = 8

		ButtonLayout.Name = "ButtonLayout"
		ButtonLayout.Parent = ButtonArea
		ButtonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		ButtonLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ButtonLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		ButtonLayout.CellPadding = UDim2.new(0, 10, 0, 0)
		ButtonLayout.CellSize = UDim2.new(0, 360, 0, 36)

		OkButton.Name = "OkButton"
		OkButton.Parent = ButtonArea
		OkButton.AnchorPoint = Vector2.new(0.5, 0.5)
		OkButton.BackgroundTransparency = 1.000
		OkButton.LayoutOrder = 1
		OkButton.Size = UDim2.new(1, 0, 1, 0)
		OkButton.ZIndex = 8
		OkButton.Image = "rbxasset://textures/ui/ErrorPrompt/PrimaryButton.png"
		OkButton.ScaleType = Enum.ScaleType.Slice
		OkButton.SliceCenter = Rect.new(8, 8, 9, 9)
		OkButton.MouseButton1Down:Connect(function()
			log("print", "Button Clicked")
			buttoncallback(function() 
				FakePrompt:Destroy()
				Blur:Destroy()			
			end)
		end)

		ButtonText.Name = "ButtonText"
		ButtonText.Parent = OkButton
		ButtonText.BackgroundTransparency = 1.000
		ButtonText.Size = UDim2.new(1, 0, 1, 0)
		ButtonText.ZIndex = 8
		ButtonText.Font = Enum.Font.SourceSans
		ButtonText.Text = buttontext
		ButtonText.TextColor3 = Color3.fromRGB(35, 37, 39)
		ButtonText.TextSize = 20.000

		ShimmerFrame.Name = "ShimmerFrame"
		ShimmerFrame.Parent = OkButton
		ShimmerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ShimmerFrame.BackgroundTransparency = 0.700
		ShimmerFrame.BorderSizePixel = 0
		ShimmerFrame.ClipsDescendants = true
		ShimmerFrame.Size = UDim2.new(1, 0, 1, 0)
		ShimmerFrame.Visible = false
		ShimmerFrame.ZIndex = 8

		Shimmer.Name = "Shimmer"
		Shimmer.Parent = ShimmerFrame
		Shimmer.BackgroundTransparency = 1.000
		Shimmer.BorderSizePixel = 0
		Shimmer.Position = UDim2.new(-1, 0, 0, 0)
		Shimmer.Size = UDim2.new(1, 0, 2, 0)
		Shimmer.ZIndex = 8
		Shimmer.Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png"

		ShimmerOverlay.Name = "ShimmerOverlay"
		ShimmerOverlay.Parent = ShimmerFrame
		ShimmerOverlay.BackgroundTransparency = 1.000
		ShimmerOverlay.BorderSizePixel = 0
		ShimmerOverlay.Size = UDim2.new(1, 0, 1, 0)
		ShimmerOverlay.ZIndex = 9
		ShimmerOverlay.Image = "rbxasset://textures/ui/ErrorPrompt/ShimmerOverlay.png"
		ShimmerOverlay.ImageColor3 = Color3.fromRGB(57, 59, 61)
		ShimmerOverlay.ScaleType = Enum.ScaleType.Slice
		ShimmerOverlay.SliceCenter = Rect.new(8, 8, 9, 9)
		
		log("print", "Created Prompt")
		
		if blurred == true then
			return {UI = FakePrompt, BlurEffect = Blur}
		end
		
		return {UI = FakePrompt}
	else
		log("warn", "Missing Arguments")
		return
	end
end

log("print", "Loaded Module")

return module
