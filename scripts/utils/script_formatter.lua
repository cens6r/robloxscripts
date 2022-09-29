--[[ script desc:
Made by @EOS this makes your script format look clean just put your code in that bracket and it will clean your code here's ways how you can do it below
]]

-- Made by Hunter on https://github.com/HunterAPI
local formatter = loadstring(game:HttpGet("https://raw.githubusercontent.com/HunterAPI/misc-releases/main/format-min.lua"), "format.lua")()
local Code = formatter.beautify([[-- Code Here]])
-- Ways to do it
setclipboard(Code) -- to copy
print(Code) -- to print it like wth?
writefile("Beautified.lua", Code) -- put in a file to synapse or what the hell ur script executor use bruh workspace folder
