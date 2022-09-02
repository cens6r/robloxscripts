-- archive of https://github.com/ThrillSeeker33QQ113ds/FESCRIPT/

local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))() -- archive: https://raw.githubusercontent.com/cens6r/robloxscripts/main/scripts/ui-lib.lua

local MainUI = UILibrary.Load("Scripts")
local FirstPage = MainUI.AddPage("Home")

local FirstButton = FirstPage.AddButton("FE Netless", function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
local Heartbeat = game:GetService("RunService").Heartbeat

Heartbeat:Connect(function()
    LocalPlayer.MaximumSimulationRadius = math.huge
    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
end)

wait(0.2)

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
    game:GetService("RunService").Heartbeat:connect(function()
    v.Velocity = Vector3.new(-30,0,0)
    end)
    end
    end
    
wait(0.2)


local character = game.Players.LocalPlayer.Character
local tools = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") 
        then v.Parent = character
        table.insert(tools,v)
    end
end
wait()
for i, v in pairs(tools) do
    v.Parent = game.Players.LocalPlayer.Backpack
end   
 wait(0.1)
 
 
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "Notification";
        Text = "Netless Ran";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 16;
    
    end)


    local FirstButton = FirstPage.AddButton("Pendulum Hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))() -- archive: https://github.com/cens6r/robloxscripts/raw/main/scripts/pendulum_hub_src.lua
        end)
