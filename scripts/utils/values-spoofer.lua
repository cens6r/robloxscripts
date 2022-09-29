-- found on rip discord
-- https://discord.gg/KMS85xNSsg

-- credits: EOS#3333 (id: 992607884703711283)
-- search discord ids on https://discord.id

--[[ script desc:
Spoofs the properties in the spoof table with the values inside the table, it also updates the spoofs to the new ones if the game sets it to something else.
This only spoofs it on the Roblox side so you can still read and write the actual values.
If you want to add more properties to spoof just add them as a lowercase to the spoof table.
(The reason I do all lowercase is because the first letter of the property names doesn't have to be capitalized so it's easier to just have the whole thing as lowercase)
]]

local ME = game:GetService("Players").LocalPlayer
local Hum = ME.Character and ME.Character:FindFirstChildWichIsA("Humanoid")
local spoofs = {
    walkspeed = (Hum and Hum.Walkspeed) or 16,
    jumppower = (Hum and Hum.JumpPower) or 50
}
local index, newindex = nil, nil
index = hookmetamethod(game, "__index", function(self, i, ...)
    local il = type(i) == "string" and i:lower()
    if il and not checkcaller() and ME.Character and self:IsA("Humanoid") and self:IsDescendantOf(ME.Character) and Spoofs[il] then
        return spoofs[il]
    end
    return index(self, i, ...)
end)
newindex = hookmetamethod(game, "__newindex", function(self, i, v, ...)
    local il = type(i) == "string" and i:lower()
    if il and not checkcaller() and ME.Character and self:IsA("Humanoid") and self:IsDescendantOf(ME.Character) and Spoofs[il] then
        spoofs[il] = v
        return
    end
    return newindex(self, i, v, ...)
end)
