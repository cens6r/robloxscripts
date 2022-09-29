-- found on rip discord
-- https://discord.gg/KMS85xNSsg

-- credits: EOS#3333 (id: 992607884703711283)
-- search discord ids on https://discord.id

--[[ script desc:
This only disables Roblox's internal ones or the connections made by the game (Synapse X only)
]]

for _,v in next,getconnections(assert(not game:IsLoaded()and game.Loaded:Wait()or game):GetService"Players".LocalPlayer.Idled)do if not v.Function or not is_synapse_function(v.Function)then v:Disable()end end
