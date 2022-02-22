local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
   if getnamecallmethod() == "IsVoiceEnabledForUserIdAsync" then
       return true;
   end
   return namecall(self, ...)
end)
setreadonly(mt, true)
