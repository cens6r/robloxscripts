game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
settings().Physics.AllowSleep = false

for i,v in next, workspace:GetDescendants() do
if v:isA("BasePart") and not v.Anchored then
pcall(function() v:SetNetworkOwner(game.Players.LocalPlayer) end) end end
wait()
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge) -- should work on more exploits?