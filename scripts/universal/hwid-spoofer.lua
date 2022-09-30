-- scriptblox thread i found this from: https://scriptblox.com/script/Universal-Script-HWID-Spoofer-Changer-6122

--[[ scriptblox desc:
change hwid. with this you can ask someone who has paid script for their hwid and change your hwid to that hwid. only works on paid script that use hwid whitelist. use on your own.
]]

getgenv().hwid_to_spoof = "sexy hwid"

if old then
	return
end

getgenv().old = hookmetamethod(game, '__namecall', function(self, ...)
	local call = getnamecallmethod()
    if call == 'GetClientId' then
		return hwid_to_spoof
	end
	return old(self, ...)
end)
