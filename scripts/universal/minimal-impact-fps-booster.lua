-- scriptblox thread: https://scriptblox.com/script/Universal-Script-minimal-impact-fps-booster-6169

--[[
scriptblox desc:


Boost your fps by #num% (depending on your pc specs) while not making the game looks shitty like ps1 graphics.
I tried my best making this as minimal as possible while squeezing out the best performance so don't judge me if your game looks like dogshit or something.
Credit to multiple unknown creators, I stole some of the codes from them cause I didn't have time to read the entire Roblox's rendering documentary.

]]

local a = tick()
if not game:IsLoaded() then
    game.Loaded:Wait()
end
wait(.1)
sethiddenproperty(game.Lighting, "Technology", 2)
sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", false)
settings().Rendering.QualityLevel = 1
setsimulationradius(0,0)
game.Lighting.GlobalShadows = false
game.Lighting.FogEnd = 9e9
workspace:FindFirstChildOfClass("Terrain").Elasticity = 0
for b, c in pairs(game:GetDescendants()) do
    task.spawn(
        function()
            wait()
            if c:IsA("DataModelMesh") then
                sethiddenproperty(c, "LODX", Enum.LevelOfDetailSetting.Low)
                sethiddenproperty(c, "LODY", Enum.LevelOfDetailSetting.Low)
                c.CollisionFidelity = "Hull"
            elseif c:IsA("UnionOperation") then
                c.CollisionFidelity = "Hull"
            elseif c:IsA("Model") then
                sethiddenproperty(c, "LevelOfDetail", 1)
            elseif c:IsA("BasePart") then
                c.Reflectance = 0
                c.CastShadow = false
            end
        end
    )
end
for d, e in pairs(game.Lighting:GetChildren()) do
    if e:IsA("PostEffect") then
        e.Enabled = false
    end
end
warn("Low graphics loaded! (" .. math.floor(tick() - a) .. "s)")
