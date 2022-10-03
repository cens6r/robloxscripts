-- Andy_Wirus#5999 (281156573995466753)

--[[
Andy_Wirus — 12/31/2021
fix lighting
]]

local l = game:GetService("Lighting")

for _, v in pairs(l:GetChildren()) do
	pcall(function()
		v:Destroy()
	end)
end

l.Ambient = Color3.fromRGB(70, 70, 70)
l.Brightness = 3
l.ColorShift_Bottom = Color3.new(0, 0, 0)
l.ColorShift_Top = Color3.new(0, 0, 0)
l.EnvironmentDiffuseScale = 1
l.EnvironmentSpecularScale = 1
l.GlobalShadows = true
l.OutdoorAmbient = Color3.fromRGB(70, 70, 70)
l.ShadowSoftness = 0.2
l.ClockTime = 14.5
l.GeographicLatitude = 0
l.ExposureCompensation = 0
local a = Instance.new("Atmosphere")
a.Density = .3
a.Offset = .25
a.Color = Color3.fromRGB(199, 199, 199)
a.Decay = Color3.fromRGB(106, 112, 125)
a.Glare = 0
a.Haze = 0
a.Parent = l
local s = Instance.new("Sky")
s.CelestialBodiesShown = true
s.MoonAngularSize = 11
s.MoonTextureId = "rbxassetid://6444320592"
s.SkyboxBk = "rbxassetid://6444884337"
s.SkyboxDn = "rbxassetid://6444884785"
s.SkyboxFt = "rbxassetid://6444884337"
s.SkyboxLf = "rbxassetid://6444884337"
s.SkyboxRt = "rbxassetid://6444884337"
s.SkyboxUp = "rbxassetid://6412503613"
s.StarCount = 3000
s.SunAngularSize = 11
s.SunTextureId = "rbxassetid://6196665106"
s.Parent = l
local b = Instance.new("BloomEffect")
b.Enabled = true
b.Intensity = 1
b.Size = 24
b.Threshold = 2
b.Parent = l
local r = Instance.new("SunRaysEffect")
r.Enabled = true
r.Intensity = 0.01
r.Spread = 0.1
r.Parent = l
