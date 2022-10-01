-- game: https://www.roblox.com/games/2248408710/Destruction-Simulator

-- desc: 
--[[
Destruction Simulator Inf Coins

Features :
[•] Inf Coins

Dev note :
Execute multiple times to get the coins faster

Credits :
Real King#0001 or https://discord.gg/f5PbMjMbaj
]]

while task.wait() do
    pcall(
    function()
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins",480,10)
    end
    )
end
