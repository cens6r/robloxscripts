--[[ Hats to wear:
Will work with any color of the car
https://www.roblox.com/catalog/4585144193/Elitoria-RN750
https://www.roblox.com/catalog/5460317836/E-G-G-D-O-G 
credits: Terminated Egg#4125​ and Agility#1000
]]--
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Egg DogAccessory") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("MeshPartAccessory") then

    local plr = game:GetService("Players").LocalPlayer
    local char = plr.Character
    local egg = char["Egg DogAccessory"]
    local car = char["MeshPartAccessory"]

    egg.Handle.AccessoryWeld:Destroy()
    local att0 = Instance.new("Attachment",egg.Handle)
    att0.Orientation = Vector3.new(0, 180, 0)
    att0.Position = Vector3.new(0, -0.3, 0.4)

    local att1 = Instance.new("Attachment",car.Handle)

    local ap = Instance.new("AlignPosition",egg.Handle)
    ap.Attachment0 = att0
    ap.Attachment1 = att1
    ap.RigidityEnabled = true 


    local ao = Instance.new("AlignOrientation",egg.Handle) 
    ao.Attachment0 = att0
    ao.Attachment1 = att1
    ao.RigidityEnabled = true
    
    car.Handle.AccessoryWeld:Destroy()

        local BP = Instance.new("BodyPosition", car.Handle)
        local BG = Instance.new("BodyGyro", car.Handle)
        game:GetService("RunService").Stepped:Connect(function()
          BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
          BP.Position = char["HumanoidRootPart"].Position + Vector3.new(5, -2, 3)
          BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
          BG.CFrame = char["HumanoidRootPart"].CFrame
        end)
end
