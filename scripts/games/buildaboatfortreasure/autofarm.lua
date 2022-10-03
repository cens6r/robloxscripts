-- game: https://www.roblox.com/games/537413528/Build-A-Boat-For-Treasure

--// Services
local players = game:GetService("Players")
 
--// Workspace
local stages = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
local penguin, gold = workspace:WaitForChild("ChangeCharacter"), workspace:WaitForChild("ClaimRiverResultsGold")
 
--// Other
local client = players.LocalPlayer
 
--// Main
---------
_G.Busy = true
while _G.Busy do
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, -4, 0)
    bodyVelocity.Parent = client.Character.HumanoidRootPart
    
    for i = 1, 9 do
        if not client.Character or not client.Character:FindFirstChild("Humanoid") then
            repeat wait() until client.Character and client.Character:FindFirstChild("Humanoid")
        end
 
        client.Character.HumanoidRootPart.CFrame = stages["CaveStage"..i].DarknessPart.CFrame wait(0.1)
        
        if not _G.Busy then
            client.Character.Humanoid.Health = 0
            exit(0)
        end
        
        if i == 1 then
            wait(4)
        else
            wait(2)
        end
        
        gold:FireServer()
    end
 
    penguin:FireServer("PenguinCharacter")
    client.Character:Remove()
 
    repeat wait() 
    until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
    
end
---------
