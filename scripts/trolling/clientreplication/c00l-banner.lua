-- DancingFairy112#3530 (790652259520348200)

--[[
DancingFairy112 — 01/09/2022
put this in your autoexec
]]

local bannedwords = {"c00l","kidd","coolkidd","colkid"}
for i,plr in pairs(game.Players:GetPlayers()) do
    for i,v in pairs(bannedwords) do
        if plr.Name:lower():find(v) or plr.DisplayName:lower():find(v) then
            plr:Kick(("\nc00lkidd faggot"):rep(100))
        end
    end
end
game.Players.PlayerAdded:Connect(function(plr)
    for i,v in pairs(bannedwords) do
        if plr.Name:lower():find(v) or plr.DisplayName:lower():find(v) then
            plr:Kick(("\nc00lkidd faggot"):rep(100))
        end
    end
end)
