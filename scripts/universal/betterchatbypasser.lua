

repeat
    wait()
until game:IsLoaded()

local success, result = pcall(function()
    local filterResult = game:GetService("TextService"):FilterStringAsync("C7RN", game:GetService("Players").LocalPlayer.UserId)
  	return filterResult:GetChatForUserAsync(game:GetService("Players").LocalPlayer.UserId) ~= "C7RN"
end)

local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser'))()")

function execute()

	local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua", true))()
	local requestt = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
	local httpservice = game:GetService("HttpService")
	if syn and "Synapse X" then
		-- This basically makes roblox unable to log your chat messages sent in-game. Meaning if you get reported for saying something bad, you won't get banned!
		-- Store in autoexec folder
		-- Credits: AnthonyIsntHere and ArianBlaack

		--[[
			Change-logs:
			8/22/2022 - Fixed Chat gui glitching on some games such as Prison Life.
		]]--


	local ACL_LoadTime = tick()

	local CoreGui = game:GetService("CoreGui")
	local StarterGui = game:GetService("StarterGui")
	local TweenService = game:GetService("TweenService")
	local Players = game:GetService("Players")

	local Player = Players.LocalPlayer

	local PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui") do
		if not PlayerGui then
			repeat task.wait() until Player:FindFirstChildWhichIsA("PlayerGui")
			PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui")
		end
	end

	local Notify = function(_Title, _Text , Time)
		StarterGui:SetCore("SendNotification", {Title = _Title, Text = _Text, Icon = "rbxassetid://2541869220", Duration = Time})
	end

	local Tween = function(Object, Time, Style, Direction, Property)
		return TweenService:Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction]), Property)
	end

	local Insert = function(Tbl, ...)
		for _, x in next, {...} do
			table.insert(Tbl, x) 
		end
	end

	local ChatFixToggle = true
	local CoreGuiSettings = {}
	local ChatFix

	ChatFix = hookmetamethod(StarterGui, "__namecall", function(self, ...)
		local Method = getnamecallmethod()
		local Arguments = {...}
		
		if not checkcaller() and ChatFixToggle and Method == "SetCoreGuiEnabled" then
			local CoreGuiType = Arguments[1]
			local SettingValue = Arguments[2]
			
			if CoreGuiType == ("All" or "Chat") then
				Insert(CoreGuiSettings, CoreGuiType, SettingValue)
				return
			end
		end
		
		return ChatFix(self, ...)
	end)

	local ACLWarning = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	local Top = Instance.new("Frame")
	local Exit = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local WarningLbl = Instance.new("TextLabel")
	local Loading = Instance.new("Frame")
	local Bar = Instance.new("Frame")
	local WarningBackground = Instance.new("Frame")
	local WarningFrame = Instance.new("Frame")
	local Despair = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")
	local Reason_1 = Instance.new("TextLabel")
	local Reason_2 = Instance.new("TextLabel")
	local Trollge = Instance.new("ImageLabel")
	local UIPadding = Instance.new("UIPadding")

	local MakeGuiThread = coroutine.wrap(function()    
		syn.protect_gui(ACLWarning)
		
		ACLWarning.Name = "ACL Warning"
		ACLWarning.Parent = CoreGui
		ACLWarning.Enabled = false
		ACLWarning.DisplayOrder = -2147483648
		
		Background.Name = "Background"
		Background.Parent = ACLWarning
		Background.AnchorPoint = Vector2.new(0.5, 0.5)
		Background.BackgroundColor3 = Color3.fromRGB(21, 0, 0)
		Background.BorderSizePixel = 0
		Background.Position = UDim2.new(0.5, 0, 0.5, 0)
		Background.Size = UDim2.new(0.300000012, 0, 0.5, 0)
		
		Top.Name = "Top"
		Top.Parent = Background
		Top.AnchorPoint = Vector2.new(0.5, 0.5)
		Top.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		Top.BorderSizePixel = 0
		Top.Position = UDim2.new(0.5, 0, 0.100000001, 0)
		Top.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
		
		Exit.Name = "Exit"
		Exit.Parent = Top
		Exit.AnchorPoint = Vector2.new(0.5, 0.5)
		Exit.BackgroundColor3 = Color3.fromRGB(38, 0, 0)
		Exit.Position = UDim2.new(0.949999988, 0, 0.5, 0)
		Exit.Size = UDim2.new(0.100000001, -6, 1, -9)
		Exit.Visible = false
		Exit.Font = Enum.Font.Arcade
		Exit.Text = "X"
		Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
		Exit.TextScaled = true
		Exit.TextSize = 14.000
		Exit.TextWrapped = true
		
		UICorner.CornerRadius = UDim.new(0.200000003, 0)
		UICorner.Parent = Exit
		
		WarningLbl.Name = "WarningLbl"
		WarningLbl.Parent = Top
		WarningLbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		WarningLbl.BackgroundTransparency = 1.000
		WarningLbl.Position = UDim2.new(0, 17, 0, 0)
		WarningLbl.Size = UDim2.new(0.5, 0, 1, 0)
		WarningLbl.Font = Enum.Font.Arcade
		WarningLbl.Text = "Warning!"
		WarningLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
		WarningLbl.TextScaled = true
		WarningLbl.TextSize = 14.000
		WarningLbl.TextWrapped = true
		WarningLbl.TextXAlignment = Enum.TextXAlignment.Left
		
		Loading.Name = "Loading"
		Loading.Parent = Top
		Loading.AnchorPoint = Vector2.new(0.5, 0.5)
		Loading.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		Loading.BorderSizePixel = 0
		Loading.Position = UDim2.new(0.699999988, 0, 0.5, 0)
		Loading.Size = UDim2.new(0.349999994, 0, 0.0199999996, 0)
		
		Bar.Name = "Bar"
		Bar.Parent = Loading
		Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Bar.BorderSizePixel = 0
		Bar.Size = UDim2.new(0, 0, 1, 0)
		
		WarningBackground.Name = "WarningBackground"
		WarningBackground.Parent = Background
		WarningBackground.AnchorPoint = Vector2.new(0.5, 0.5)
		WarningBackground.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
		WarningBackground.BorderSizePixel = 0
		WarningBackground.Position = UDim2.new(0.5, 0, 0.550000012, 0)
		WarningBackground.Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
		
		WarningFrame.Name = "WarningFrame"
		WarningFrame.Parent = WarningBackground
		WarningFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		WarningFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		WarningFrame.BorderSizePixel = 0
		WarningFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		WarningFrame.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
		
		Despair.Name = "Despair"
		Despair.Parent = WarningFrame
		Despair.AnchorPoint = Vector2.new(0.5, 0.5)
		Despair.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		Despair.BackgroundTransparency = 1.000
		Despair.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Despair.BorderSizePixel = 0
		Despair.Position = UDim2.new(0.5, 0, 0.100000001, 0)
		Despair.Size = UDim2.new(0.949999988, 0, 0.119999997, 0)
		Despair.Font = Enum.Font.Oswald
		Despair.Text = "Anti Chat Logger will not work here!"
		Despair.TextColor3 = Color3.fromRGB(255, 255, 255)
		Despair.TextScaled = true
		Despair.TextSize = 50.000
		Despair.TextWrapped = true
		Despair.TextYAlignment = Enum.TextYAlignment.Top
		
		UIListLayout.Parent = WarningFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 15)
		
		Reason_1.Name = "Reason_1"
		Reason_1.Parent = WarningFrame
		Reason_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Reason_1.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		Reason_1.BackgroundTransparency = 1.000
		Reason_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Reason_1.BorderSizePixel = 0
		Reason_1.Position = UDim2.new(0.5, 0, 0.100000001, 0)
		Reason_1.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
		Reason_1.Visible = false
		Reason_1.Font = Enum.Font.Oswald
		Reason_1.Text = "-Chat Module was not found."
		Reason_1.TextColor3 = Color3.fromRGB(255, 0, 0)
		Reason_1.TextScaled = true
		Reason_1.TextSize = 50.000
		Reason_1.TextWrapped = true
		Reason_1.TextYAlignment = Enum.TextYAlignment.Top
		
		Reason_2.Name = "Reason_2"
		Reason_2.Parent = WarningFrame
		Reason_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Reason_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		Reason_2.BackgroundTransparency = 1.000
		Reason_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Reason_2.BorderSizePixel = 0
		Reason_2.Position = UDim2.new(0.5, 0, 0.100000001, 0)
		Reason_2.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
		Reason_2.Visible = false
		Reason_2.Font = Enum.Font.Oswald
		Reason_2.Text = "-MessagePosted function is invalid."
		Reason_2.TextColor3 = Color3.fromRGB(255, 0, 0)
		Reason_2.TextScaled = true
		Reason_2.TextSize = 50.000
		Reason_2.TextWrapped = true
		Reason_2.TextYAlignment = Enum.TextYAlignment.Top
		
		Trollge.Name = "Trollge"
		Trollge.Parent = WarningFrame
		Trollge.AnchorPoint = Vector2.new(0.5, 0.5)
		Trollge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Trollge.BackgroundTransparency = 1.000
		Trollge.Position = UDim2.new(0.5, 0, 0.670000017, 0)
		Trollge.Size = UDim2.new(0.449999988, 0, 0.5, 0)
		Trollge.Image = "rbxassetid://10104834800"
		
		UIPadding.Parent = WarningFrame
		UIPadding.PaddingTop = UDim.new(0, 10)
		
		Exit.MouseButton1Click:Connect(function()
			local UpTween = Tween(Background, .2, "Quint", "Out", {Position = UDim2.new(0.5, 0, 0.45, 0)})
			local DownTween = Tween(Background, 1, "Quad", "Out", {Position = UDim2.new(0.5, 0, 2, 0)})
			UpTween:Play()
			UpTween.Completed:wait()
			DownTween:Play()
			DownTween.Completed:wait()
			ACLWarning:Destroy()
		end)
	end)()

	local ExitCooldown = function()
		wait(3)
		local Tween = Tween(Bar, 5, "Quad", "InOut", {Size = UDim2.new(1, 0, 1, 0)})
		Tween:Play()
		Tween.Completed:wait()
		Loading:Destroy()
		Exit.Visible = true
	end

	local PlayerScripts = Player:WaitForChild("PlayerScripts")
	local ChatMain = PlayerScripts:FindFirstChild("ChatMain", true) or false

	if not ChatMain then
		local Timer = tick()
		repeat
			task.wait()
		until PlayerScripts:FindFirstChild("ChatMain", true) or tick() > (Timer + 3)
		ChatMain = PlayerScripts:FindFirstChild("ChatMain", true)
		if not ChatMain then
			ACLWarning.Enabled = true
			Reason_1.Visible = true
			ExitCooldown()
			return
		end
	end

	local PostMessage = require(ChatMain).MessagePosted

	if not PostMessage then
		ACLWarning.Enabled = true
		Reason_2.Visible = true
		ExitCooldown()
		return
	end

	local MessageEvent = Instance.new("BindableEvent")
	local OldFunctionHook
	OldFunctionHook = hookfunction(PostMessage.fire, function(self, Message)
		if not checkcaller() and self == PostMessage then
			MessageEvent:Fire(Message)
			return
		end
		return OldFunctionHook(self, Message)
	end)

	if setfflag then
		setfflag("AbuseReportScreenshot", "False")
		setfflag("AbuseReportScreenshotPercentage", 0)
	end

	ChatFixToggle = false
	ACLWarning:Destroy()
	if OldSetting then
		StarterGui:SetCoreGuiEnabled(CoreGuiSettings[1], CoreGuiSettings[2])
	end
	Notify("Loaded Successfully", "Anti Chat and Screenshot Logger Loaded!", 15)
	print(string.format("Anti Chat-Logger has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))
	elseif fluxus or identifyexecutor() == "Evon" then
		if not game:IsLoaded() then
			game.Loaded:wait()
		end
		local d = game:GetService("Players")
		local e = d.LocalPlayer or d.PlayerAdded:wait()
		local f = require(e:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain")).MessagePosted
		MessageEvent = Instance.new("BindableEvent")
		local g
		local h = function(self, i)
			if not checkcaller() and self == f then
				MessageEvent:Fire(i)
				return
			end
			return g(self, i)
		end
		g = hookfunction(f.fire, h)
	elseif IS_KRNL_LOADED then
		local j = true
		local k = require(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript.ChatMain)
		local l = {
			"a",
			"b",
			"c",
			"d",
			"e",
			"f",
			"g",
			"h",
			"i",
			"j",
			"k",
			"m",
			"n",
			"l",
			"o",
			"p",
			"q",
			"r",
			"s",
			"t",
			"u",
			"v",
			"w",
			"x",
			"y",
			"z",
			"A",
			"B",
			"C",
			"D",
			"E",
			"F",
			"G",
			"H",
			"I",
			"J",
			"K",
			"M",
			"N",
			"L",
			"O",
			"P",
			"Q",
			"R",
			"S",
			"T",
			"U",
			"V",
			"W",
			"X",
			"Y",
			"Z",
			"1",
			"2",
			"3",
			"4",
			"5",
			"6",
			"7",
			"8",
			"9",
			"0",
			"/",
			"@",
			"?"
		}
		local m = Instance.new("BindableEvent")
		m.Name = "MessagePosted"
		local n = k.MessagePosted
		k.MessagePosted = m
		function IsBlacklisted(o)
			if table.find(l, o) ~= nil then
				return true
			end
			return false
		end
		m.Event:Connect(
			function(p)
				if IsBlacklisted(string.sub(p, 1, 1)) == true then
					if j == true then
						printconsole("[LOGS]: Prevented " .. tostring(p) .. " to be in Chatted!")
					end
				elseif IsBlacklisted(string.sub(p, 1, 1)) == false then
					n:fire(p)
					if j == true then
						printconsole("[LOGS]: Sent command " .. tostring(p) .. " to be in Chatted!")
					end
				end
			end
		)
	else
		if not game:IsLoaded() then
			game.Loaded:wait()
		end
		local d = game:GetService("Players")
		local e = d.LocalPlayer or d.PlayerAdded:wait()
		local f = require(e:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain")).MessagePosted
		MessageEvent = Instance.new("BindableEvent")
		local g
		local h = function(self, i)
			if not checkcaller() and self == f then
				MessageEvent:Fire(i)
				return
			end
			return g(self, i)
		end
		g = hookfunction(f.fire, h)
	end
	if not LOADED then
		NotificationHolder:message {
			Title = "Secure Chat <font color='rgb(130, 220, 120)'>Enabled</font>",
			Description = "For the interest of security and anonymity, secure chat has been enabled.",
			Icon = 10952973354
		}
	end

	local Bypasses = {

		["ass"] = "as{{aieixzvzx:s}}",
		["asshole"] = "as{{aieixzvzx:shole}}",
		["deadass"] = "dead as{{aieixzvzx:s}}",
		["arse"] = "ar{{aieixzvzx:se}}", --NEW
		["arsehead"] = "ar{{aieixzvzx:se}}head", --NEW
		["arsehole"] = "ar{{aieixzvzx:se}}hole", --NEW
		["bitch"] = "bit{{aieixzvzx:ch}}",
		["bitches"] = "bit{{aieixzvzx:ches}}",  
		["cock"] = "co{{aieixzvzx:ck}}",
		["cocks"] = "co{{aieixzvzx:cks}}",  
		["cunt"] = "cu{{aieixzvzx:nt}}",
		["dick"] = "di{{zczxczvz:ck}}",
		["dickhead"] = "di{{zczxczvz:ckhead}}",
		["dicks"] = "di{{zczxczvz:cks}}",  
		["dyke"] = "dy{{aieixzvzx:ke}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["faggots"] = "fa{{aieixzvzx:ggots}}",
		["fuck"] = "fu{{aieixzvzx:ck}}",
		["fucks"] = "fu{{aieixzvzx:cks}}",
		["fucked"] = "fu{{aieixzvzx:cked}}",
		["fucking"] = "fu{{aieixzvzx:ckign}}",
		["fuckin"] = "fu{{aieixzvzx:ckign}}",
		["gaylord"] = "gayl{{aieixzvzx:ord}}",
		["gaylords"] = "gayl{{aieixzvzx:ords}}",  
		["bastard"] = "bas{{aieixzvzx:tard}}",  --NEW
		["bastards"] = "bas{{aieixzvzx:tards}}",  --NEW
		["kike"] = "ki{{aieixzvzx:ke}}",
		["kikes"] = "ki{{aieixzvzx:kes}}",  
		["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
		["brotherfucker"] = "brotherf{{aieixzvzx:ucker}}", --NEW
		["fatherfucker"] = "fatherf{{aieixzvzx:ucker}}", --NEW
		["bugger"] = "bugg{{aieixzvzx:er}}", --NEW
		["buggers"] = "bugg{{aieixzvzx:er}}s", --NEW
		["nigga"] = "ni{{aieixzvzx:gga}}",
		["nigga"] = "ni{{aieixzvzx:ggas}}",
		["nigger"] = "ni{{aieixzvzx:gger}}",
		["nigger"] = "ni{{aieixzvzx:ggers}}",
		["piss"] = "p{{aieixzvzx:iss}}", 
		["pisses"] = "p{{aieixzvzx:isses}}",  
		["pissing"] = "p{{aieixzvzx:is}}sing", --NEW
		["pisser"] = "pi{{aieixzvzx:sser}}", --NEW
		["penis"] = "pe{{aieixzvzx:nis}}",
		["penisses"] = "pe{{aieixzvzx:nisses}}",  
		["pussy"] = "pu{{aieixzvzx:ssy}}",
		["shit"] = "sh{{aieixzvzx:it}}",
		["shitter"] = "sh{{aieixzvzx:itter}}",  
		["shitting"] = "sh{{aieixzvzx:itting}}",  
		["shitty"] = "shi{{aieixzvzx:tty}}",
		["horseshit"] = "horsesh{{aieixzvzx:it}}", --NEW
		["jerk"] = "je{{aieixzvzx:rk}}", --NEW
		["jerking"] = "jer{{aieixzvzx:king}}", --NEW
		["slut"] = "sl{{aieixzvzx:ut}}",
		["sluts"] = "sl{{aieixzvzx:uts}}",  
		["whore"] = "who{{aieixzvzx:re}}",
		["whores"] = "who{{aieixzvzx:res}}",  
		["retard"] = "ret{{aieixzvzx:ard}}",
		["retarded"] = "ret{{aieixzvzx:arded}}",
		["kill"] = "ki{{aieixzvzx:ll}}",
		["kills"] = "ki{{aieixzvzx:lls}}",  
		["killing"] = "ki{{aieixzvzx:lling}}",  
		["gay"] = "g{{aieixzvzx:ay}}",
		["gays"] = "g{{aieixzvzx:ays}}",
		["sex"] = "se{{aieixzvzx:x}}",
		["sexy"] = "se{{aieixzvzx:xy}}",
		["sexting"] = "se{{aieixzvzx:xting}}",
		["porn"] = "po{{aieixzvzx:rn}}",
		["love"] = "l{{aieixzvzx:ove}}",
		["loves"] = "l{{aieixzvzx:oves}}",  
		["lover"] = "l{{aieixzvzx:over}}",  
		["loving"] = "l{{aieixzvzx:oving}}",  
		["date"] = "da{{aieixzvzx:te}}",  
		["dates"] = "da{{aieixzvzx:tes}}",  
		["dating"] = "da{{aieixzvzx:ting}}",  
		["dater"] = "da{{aieixzvzx:ter}}",  
		["rape"] = "ra{{aieixzvzx:pe}}",
		["raped"] = "rap{{aieixzvzx:ed}}",
		["rapes"] = "ra{{aieixzvzx:pes}}",  
		["raping"] = "rap{{aieixzvzx:ing}}",  
		["raper"] = "ra{{aieixzvzx:per}}",  
		["v3rm"] = "v3{{aieixzvzx:rm}}",
		["v3rmillion"] = "v3{{aieixzvzx:rmillion}}",  
		["hack"] = "ha{{aieixzvzx:ck}}",
		["hacking"] = "hac{{aieixzvzx:king}}",  
		["hacker"] = "hac{{aieixzvzx:ker}}",  
		["hackers"] = "hac{{aieixzvzx:kers}}",  
		["hot"] = "ho{{aieixzvzx:t}}",
		["hotter"] = "ho{{aieixzvzx:tter}}",  
		["boob"] = "bo{{aieixzvzx:ob}}",  
		["boobs"] = "boo{{aieixzvzx:bs}}",
		["tit"] = "t{{aieixzvzx:it}}", --NEW
		["tits"] = "t{{aieixzvzx:its}}", --NEW
		["thot"] = "th{{aieixzvzx:ot}}", --NEW
		["thots"] = "th{{aieixzvzx:ots}}", --NEW
		["thotting"] = "th{{aieixzvzx:otting}}", --NEW
		["thotting"] = "th{{aieixzvzx:otting}}", --NEW

		["condom"] = "con{{aieixzvzx:dom}}",
		["condoms"] = "con{{aieixzvzx:doms}}",  
		["thot"] = "th{{aieixzvzx:ot}}",
		["thots"] = "th{{aieixzvzx:ots}}",  
		["bang"] = "ban{{aieixzvzx:g}}",
		["ligma"] = "li{{aieixzvzx:gma}}",
		["ligmaballs"] = "ligm{{aieixzvzx:aballs}}",
		["terrorist"] = "terror{{aieixzvzx:ist}}",
		["terrorists"] = "terror{{aieixzvzx:ists}}",  
		["horny"] = "horn{{aieixzvzx:y}}",
		["mf"] = "m{{aieixzvzx:f}}",
		["lmao"] = "lm{{aieixzvzx:ao}}",
		["anus"] = "an{{aieixzvzx:us}}",
		["hacks"] = "hac{{aieixzvzx:ks}}",
		["predator"] = "pred{{aieixzvzx:ator}}",
		["predators"] = "pred{{aieixzvzx:ator}}",  
		["kiss"] = "ki{{aieixzvzx:ss}}",
		["kisses"] = "ki{{aieixzvzx:sses}}",  
		["kissing"] = "ki{{aieixzvzx:ssing}}",  
		["kisser"] = "ki{{aieixzvzx:sser}}",  
		["bomb"] = "bom{{aieixzvzx:b}}",
		["bomb"] = "bom{{aieixzvzx:bs}}",  
		["nude"] = "nu{{aieixzvzx:de}}",
		["nudes"] = "nu{{aieixzvzx:des}}",
		["child"] = "chi{{aieixzvzx:ld}}",
		["my"] = "m{{aieixzvzx:y}}",
		["racism"] = "raci{{aieixzvzx:sm}}",
		["hoe"] = "h{{aieixzvzx:oe}}",
		["pedo"] = "pe{{aieixzvzx:do}}",
		["nsfw"] = "ns{{aieixzvzx:fw}}",
		["suck"] = "su{{aieixzvzx:ck}}",
		["cum"] = "c{{aieixzvzx:um}}",
		["cums"] = "c{{aieixzvzx:ums}}",
		["cumming"] = "cu{{aieixzvzx:mming}}",
		["cumload"] = "cu{{aieixzvzx:mload}}",
		["creampie"] = "cre{{aieixzvzx:ampie}",
		["scammer"] = "sca{{aieixzvzx:mmer}}",
		["fucker"] = "fu{{aieixzvzx:cker}}",
		["hitler"] = "hit{{aieixzvzx:ler}}",
		["nazi"] = "na{{aieixzvzx:zi}}",
		["simp"] = "si{{aieixzvzx:mp}}",
		["simping"] = "sim{{aieixzvzx:ping}}",
		["meth"] = "me{{aieixzvzx:th}}",
		["cocaine"] = "co{{aieixzvzx:caine}}",
		["heroin"] = "hero{{aieixzvzx:in}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["ballsack"] = "ba{{aieixzvzx:llsack}}",
		["nutsack"] = "nu{{aieixzvzx:tsack}}",
		["athiest"] = "athi{{aieixzvzx:est}}",
		["jewish"] = "je{{aieixzvzx:wish}}",
		["christian"] = "chri{{aieixzvzx:stian}}",
		["muslim"] = "mu{{aieixzvzx:slim}}",
		["jurdism"] = "jur{{aieixzvzx:dism}}",
		["islam"] = "isl{{aieixzvzx:am}}",
		["allah"] = "al{{aieixzvzx:lah}}",
		["muhammad"] = "muha{{aieixzvzx:mmad}}",
		["christianity"] = "chri{{aieixzvzx:stianity}}",
		["satanism"] = "sata{{aieixzvzx:nism}}",

		["1"] = "on{{aieixzvzx:e}}",
		["2"] = "t{{aieixzvzx:wo}}",
		["3"] = "th{{aieixzvzx:ree}}",
		["4"] = "fo{{aieixzvzx:ur}}",
		["5"] = "fi{{aieixzvzx:ve}}",
		["6"] = "s{{aieixzvzx:ix}}",
		["7"] = "se{{aieixzvzx:ven}}",
		["8"] = "ei{{aieixzvzx:ght}}",
		["9"] = "ni{{aieixzvzx:ne}}",
		["10"] = "te{{aieixzvzx:n}}",
		["twitter"] = "twi{{aieixzvzx:tter}}",
		["youtube"] = "you{{aieixzvzx:tube}}",
		["rumble"] = "rum{{aieixzvzx:ble}}",
		["tiktok"] = "tik{{aieixzvzx:tok}}",
		["facebook"] = "face{{aieixzvzx:book}}",
		["whatsapp"] = "wha{{aieixzvzx:tsapp}}",
		["discord"] = "disco{{aieixzvzx:rd}}",
		["instagram"] = "inst{{aieixzvzx:agram}}",
		["snapchat"] = "snap{{aieixzvzx:chat}}",

		-- ALL NEW

		["wtf"] = "wt{{aieixzvzx:f}}",
		["gtfo"] = "gt{{aieixzvzx:fo}}",
		["kys"] = "k{{aieixzvzx:ys}}",
		["omfg"] = "omf{{aieixzvzx:g}}",
		["stfu"] = "st{{aieixzvzx:fu}}",
		["ily"] = "il{{aieixzvzx:y}}",
		["istg"] = "is{{aieixzvzx:tg}}"

		--[[
		["and"] = "a{{aieixzvzx:nd}}",
		["or"] = "o{{aieixzvzx:r}}",
		["if"] = "i{{aieixzvzx:f}}",
		["else"] = "el{{aieixzvzx:se}}",
		["then"] = "th{{aieixzvzx:en}}",
		["why"] = "wh{{aieixzvzx:y}}",
		["what"] = "wha{{aieixzvzx:t}}",
		["who"] = "wh{{aieixzvzx:o}}",
		["where"] = "wh{{aieixzvzx:ere}}",
		["see"] = "se{{aieixzvzx:e}}",
		["do"] = "d{{aieixzvzx:o}}",
		["to"] = "t{{aieixzvzx:o}}",
		["of"] = "o{{aieixzvzx:f}}",
		["he"] = "h{{aieixzvzx:e}}",
		["she"] = "sh{{aieixzvzx:e}}",
		["they"] = "th{{aieixzvzx:ey}}",
		["them"] = "th{{aieixzvzx:em}}",
		["had"] = "h{{aieixzvzx:add}}",
		["for"] = "fo{{aieixzvzx:r}}",
		["on"] = "o{{aieixzvzx:n}}",
		["as"] = "a{{aieixzvzx:s}}",
		["you"] = "yo{{aieixzvzx:u}}",
		["my"] = "m{{aieixzvzx:y}}",
		["yours"] = "you{{aieixzvzx:rs}}",
		["not"] = "no{{aieixzvzx:t}}",
		["with"] = "wi{{aieixzvzx:th}}",
		["number"] = "numb{{aieixzvzx:er}}",
		["numbers"] = "numb{{aieixzvzx:ers}}",
		["day"] = "da{{aieixzvzx:y}}",
		["night"] = "ni{{aieixzvzx:ght}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["come"] = "co{{aieixzvzx:me}}",
		["it"] = "i{{aieixzvzx:t}}",
		["some"] = "so{{aieixzvzx:me}}",
		["there"] = "the{{aieixzvzx:re}}",
		["but"] = "bu{{aieixzvzx:t}}",
		["more"] = "mo{{aieixzvzx:re}}",
		["all"] = "a{{aieixzvzx:ll}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["its"] = "i{{aieixzvzx:ts}}",
		["yes"] = "ye{{aieixzvzx:s}}",
		["no"] = "n{{aieixzvzx:o}}",
		["so"] = "s{{aieixzvzx:o}}",
		["said"] = "sa{{aieixzvzx:id}}",
		["can"] = "ca{{aieixzvzx:n}}"

		]]
	}



	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

	local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
		local Method = getnamecallmethod()
		local Arguments = {...}
		
		if self == Remote and Method == "FireServer" then
			local Message = Arguments[1]
			local Split = Message:split(" ")
			local FinalMessage = ""

			for _, x in next, Split do
				for _, Bypass in next, Bypasses do
					if x:lower() == _ then
						if x:upper() ~= x then
							Message = Message:gsub(x, Bypass)
							FinalMessage = Message .. " "..method
						else
							Message = Message:gsub(x, Bypass):upper()
							FinalMessage = Message:gsub(x, Bypass):upper() .. " "..method
						end
					end
				end
			end
			
			if FinalMessage ~= "" then
				Arguments[1] = FinalMessage
			end
			
			return ChatBypass(self, unpack(Arguments))
		end
		
		return ChatBypass(self, ...)
	end)

	if not LOADED then
		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "FIRSTLY DISCOVERED WAS BY tav#8870. Bypasser was done by Decayed#5038 and AnthonyIsHere on V3rm. Modified by daddysyn",
			Icon = 6023426926
		}

		wait(2.5)

		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "Thanks to riptide for finding this! mwa riptide",
			Icon = 6023426926
		}

		wait(2.5)

		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "Keep in mind that your sentences might get tagged because it is intentionally ## at the end.",
			Icon = 6023426926
		}

	end



	a:notify {
		Title = "Discord Server",
		Description = "Would you like to join the Discord Server?",
		Accept = {
			Text = "Yes",
			Callback = function()
				requestt(
					{
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
						Body = game:GetService("HttpService"):JSONEncode(
							{
								cmd = "INVITE_BROWSER",
								args = {code = "s4PxTVMUZp"},
								nonce = game:GetService("HttpService"):GenerateGUID(false)
							}
						)
					}
				)
			end
		},
		Dismiss = {Text = "No", Callback = function()
			NotificationHolder:message {Title = "<font color='rgb(240,248,255)'>Warning</font>", Description = "fuck you then im gonna invite you anyway bitch", Icon = 10952973359}

				wait(0.5)
				requestt(
					{
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
						Body = game:GetService("HttpService"):JSONEncode(
							{
								cmd = "INVITE_BROWSER",
								args = {code = "s4PxTVMUZp"},
								nonce = game:GetService("HttpService"):GenerateGUID(false)
							}
						)
					}
				)

			end}
	}






	wait(10)
	NotificationHolder:message {Title = "<font color='rgb(240,248,255)'>Warning</font>", Description = "sacred a skid", Icon = 10952973359}
	pcall(
		function()
			getgenv().LOADED = true
		end
	)

end

if success then
	NotificationHolder:message {
        Title = "<font color='rgb(130, 220, 120)'>Failed</font>",
        Description = "Your account is under 13. Your account must be 13 or over in order to execute BetterBypasser.",
        Icon = 6023426926
    }

else
    execute()
end
