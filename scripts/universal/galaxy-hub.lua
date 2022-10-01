if not game:IsLoaded() then
	repeat
		wait()
	until game:IsLoaded()
end
wait(0.1)
local L_1_ = Instance.new("ScreenGui")
local L_2_ = Instance.new("Frame")
local L_3_ = Instance.new("TextLabel")
local L_4_ = Instance.new("TextLabel")
local L_5_ = Instance.new("TextBox")
local L_6_ = Instance.new("TextButton")
local L_7_ = Instance.new("TextButton")
local L_8_ = Instance.new("TextButton")
L_1_.Name = "KeyGalaxy"
L_1_.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
L_1_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
L_2_.Parent = L_1_
L_2_.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
L_2_.BorderColor3 = Color3.fromRGB(29, 29, 29)
L_2_.BorderSizePixel = 0
L_2_.Position = UDim2.new(0.281821877, 0, 0.254207551, 0)
L_2_.Size = UDim2.new(0, 680, 0, 408)
L_3_.Name = "Welcom"
L_3_.Parent = L_2_
L_3_.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
L_3_.BorderColor3 = Color3.fromRGB(29, 29, 29)
L_3_.Position = UDim2.new(0.392602324, 0, 0.139880478, 0)
L_3_.Size = UDim2.new(0, 161, 0, 50)
L_3_.Font = Enum.Font.SourceSans
L_3_.Text = "WELCOME TO"
L_3_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_3_.TextScaled = true
L_3_.TextSize = 14.000
L_3_.TextStrokeColor3 = Color3.fromRGB(47, 47, 47)
L_3_.TextWrapped = true
L_4_.Name = "GLX"
L_4_.Parent = L_2_
L_4_.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
L_4_.BorderColor3 = Color3.fromRGB(29, 29, 29)
L_4_.Position = UDim2.new(0.363882214, 0, 0.263787717, 0)
L_4_.Size = UDim2.new(0, 200, 0, 50)
L_4_.Font = Enum.Font.SourceSans
L_4_.Text = "GALAXY HUB"
L_4_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_4_.TextScaled = true
L_4_.TextSize = 14.000
L_4_.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
L_4_.TextWrapped = true
L_5_.Name = "___Input"
L_5_.Parent = L_2_
L_5_.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
L_5_.BorderColor3 = Color3.fromRGB(163, 38, 235)
L_5_.BorderSizePixel = 2
L_5_.Position = UDim2.new(0.158974156, 0, 0.522436261, 0)
L_5_.Size = UDim2.new(0, 480, 0, 47)
L_5_.Font = Enum.Font.SourceSans
L_5_.PlaceholderText = "Enter your key here"
L_5_.Text = ""
L_5_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_5_.TextSize = 38.000
L_6_.Name = "__Discord Link"
L_6_.Parent = L_2_
L_6_.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
L_6_.BorderColor3 = Color3.fromRGB(163, 38, 235)
L_6_.BorderSizePixel = 2
L_6_.Position = UDim2.new(0.547765493, 0, 0.721657395, 0)
L_6_.Size = UDim2.new(0, 218, 0, 50)
L_6_.Font = Enum.Font.SourceSans
L_6_.Text = "Join Discord To Get Key"
L_6_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_6_.TextSize = 25.000
L_6_.TextWrapped = true
L_7_.Name = "___Submit"
L_7_.Parent = L_2_
L_7_.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
L_7_.BorderColor3 = Color3.fromRGB(163, 38, 235)
L_7_.BorderSizePixel = 2
L_7_.Position = UDim2.new(0.163385913, 0, 0.721657395, 0)
L_7_.Size = UDim2.new(0, 218, 0, 50)
L_7_.Font = Enum.Font.SourceSans
L_7_.Text = "Submit"
L_7_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_7_.TextSize = 25.000
L_7_.TextWrapped = true
L_8_.Name = "___Close"
L_8_.Parent = L_2_
L_8_.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
L_8_.BorderColor3 = Color3.fromRGB(163, 38, 235)
L_8_.Position = UDim2.new(0.867797673, 0, 0.032931909, 0)
L_8_.Size = UDim2.new(0, 73, 0, 57)
L_8_.Font = Enum.Font.SourceSans
L_8_.Text = "X"
L_8_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_8_.TextSize = 60.000
L_8_.TextWrapped = true
local L_9_ = "GALAXYHUB_6724328"
local function L_10_func()
	loadstring(game:HttpGet("https://pastebin.com/raw/Cy8HuSrr"))()
end
L_7_.MouseButton1Click:Connect(
    function()
	if L_5_.Text == L_9_ then
		L_1_:Destroy()
		L_10_func()
	else
		L_7_.Text = "Wrong :|"
		wait(0.6)
		L_7_.Text = "Submit"
	end
end
)
L_6_.MouseButton1Click:Connect(
    function()
	setclipboard("https://discord.gg/MsxyGRh7Zw")
	game.StarterGui:SetCore("SendNotification", {
		Title = "Discord Link",
		Text = "Copied to ClipBoard"
	})
	Duration = 5
end
)
L_8_.MouseButton1Click:Connect(
    function()
	L_1_:Destroy()
end
)
local L_11_ = http_request or syn and syn.request or request or nil
local L_12_ = isfile("Invite.GalaxyHub.txt") and readfile("Invite.GalaxyHub") or nil
if L_11_ then
	local L_13_
	local L_14_ = L_11_({
		["Method"] = "GET",
		["Headers"] = {
			["discordLinkRequest"] = "true"
		},
		["Url"] = "https://discord.gg/"
	})
	if L_14_.StatusCode ~= 200 or not L_14_.Successful then
		L_13_ = "Ng6EpuA2RG"
	else
		L_13_ = L_14_.Body
	end
	if not L_12_ or L_12_ ~= L_13_ then
		L_11_(
            {
			["Method"] = "POST",
			["Headers"] = {
				["origin"] = "https://discord.com",
				["Content-Type"] = "application/json"
			},
			["Url"] = "http://127.0.0.1:6463/rpc?v=1",
			["Body"] = game:GetService("HttpService"):JSONEncode(
                    {
				cmd = "INVITE_BROWSER",
				args = {
					code = L_13_
				},
				nonce = game:GetService("HttpService"):GenerateGUID(false):lower()
			}
                )
		}
        )
		writefile("Invite.GalaxyHub.txt", L_13_)
	end
end
