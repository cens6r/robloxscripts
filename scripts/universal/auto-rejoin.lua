-- found on rip discord
-- https://discord.gg/KMS85xNSsg

-- credits: EOS#3333 (id: 992607884703711283)
-- search discord ids on https://discord.id

--[[ script desc:
 Auto-rejoin if you get disconnected or kicked

THIS DOESN'T WORK ON PRIVATE SERVERS
]]

local Teleport = game:GetService("TeleportService")
local Players = game:GetService("Players")
local ME = Players.LocalPlayer
game:GetService("CoreGui"):WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay").ChildAdded:Connect(function(v)
    if v.Name ~= "ErrorPrompt" then
        return
    end
    while task.wait(2) do
        if #Players:GetPlayers() <= 1 then
            Teleport:Teleport(game.PlaceId, ME)
        else
            Teleport:TeleportToPlaceInstance(game.PlaceId, game.JobId, ME)
        end
    end
end)
