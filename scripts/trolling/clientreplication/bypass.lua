-- hampy#1476 (190198104149065738)

--[[
hampy — 01/09/2022

cleint replication bypass but better
]]

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Lighting = game:GetService("Lighting")

local Id = 8313492212
local CoreGui = game:GetService("StarterGui")

if game.PlaceId == Id then
    loadstring(Lighting:FindFirstChild("Bypass").Value)()

CoreGui:SetCore("SendNotification", {
    Title = "Client Replication";
    Text = "Bypass successful.",
    Duration = 5;
    })
end
