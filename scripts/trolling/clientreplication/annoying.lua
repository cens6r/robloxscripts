for _,x in next, workspace:GetDescendants() do
    if x:IsA("Sound") then
        x:Stop()
    end
end

local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://8224420811"
sound.Volume = 1/0
sound.Looped = true
local distort = Instance.new("DistortionSoundEffect")
distort.Level = 1/0

local lighting = game:GetService("Lighting")
lighting.Brightness = 100
lighting.ClockTime = 0
local RainbowLoop = coroutine.wrap(function()
    local Cooldown = 10
    while true do
        local Hue = tick() % Cooldown / Cooldown
        local Color = Color3.fromHSV(Hue,1,1)
        lighting.Ambient = Color
        wait()
    end
end)()

coroutine.wrap(function()
    for i = 1, 1000 do
        local msg = Instance.new("Message", workspace)
        msg.Text = "MAPFUCKER"
        wait(1)
        msg:Destroy()
        wait(1)
    end
end)()

coroutine.wrap(function()
    for i = 1, 5000 do
        local explode = Instance.new("Explosion", workspace)
        explode.Position = Vector3.new(math.random(-500, 500), math.random(-500, 500), math.random(-500, 500))
    end
end)()

sound:Play()

for _,x in next, workspace:GetDescendants() do
    if x:IsA("BasePart") then
        x.Locked = false
        x.Anchored = false
    elseif x:IsA("Weld") or x:IsA("Motor6D") or x:IsA("Snap") then
        x:Destroy()
    end
end
