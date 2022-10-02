-- scriptblox thread: https://scriptblox.com/script/Universal-Script-Scriptblox-In-game-UI-Beta-6208

--[[
scripblox desc:
- Grabs scripts straight from Scriptblox!

- Current Features

-/ View count
-/ Recommended scripts based on the game you are playing
-/ Execute feature

- Whats to come?

Like/Dislike ratio
Search bar dashboard
Search Filters
Favouring system
Script Detail looker
(Images currently broken)
]]

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/PuppyRoblox/ScriptBlox-UI/main/ui_main.lua"))()
local UIS = game:GetService("UserInputService")

local getasset = getcustomasset or getsynasset

if not isfolder("ScriptBlox") then
makefolder("ScriptBlox")
end

if not isfolder("ScriptBlox/Chace-SearcherKarma-Chache") then
       makefolder("ScriptBlox/Chace-SearcherKarma-Chache")
end

local UI, fcs = ui:Init()

local buttons = {}
local uis = {}

local function detectButtons()

    while true do
        wait(5)
        for _,v in pairs(buttons) do
            local db = false
            v[1].Activated:Connect(function()
                
                if not db then
                    db = true
                    print(v[2])
                    local fc = loadstring(v[2])
                    if type(fc) == "function" then
                        fc()
                    end
                    print("L")
                    wait(2)
                    db = false
                end

            end)
        end

    end

end

local function mainLoop()

    while true do
        wait(5)

        local s,e = pcall(function()
            for _,v in pairs(buttons) do
                v[1]:Destroy()
                table.remove(buttons, _)
            end
    
            for _,v in pairs(uis) do
                table.remove(uis, _)
                v:Destroy()
            end
    
            local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            
            local luaTable = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://scriptblox.com/api/script/search?q="..GameName.."&mode=free&max=100&page=1"))
    
            local scripts = luaTable["result"]["scripts"]
    
            
    
            for _,v in pairs(scripts) do
    
                if not v["isPatched"] then

                    local getImage = v["game"]["imageUrl"]
                    local CheckImage = isfile("ScriptBlox/Chace-SearcherKarma-Chache/"..v["slug"]..".png")
                    if not CheckImage then
                        --// Download Image
                        local fu = string.split(getImage, "/")
                        if fu[1] == "https" then

                            local getData = syn.request({
                                Url = getImage,
                                Method = "GET",
                            }).Body

                            writefile("ScriptBlox/Chace-SearcherKarma-Chache/"..v["slug"]..".png", getData)

                        else

                            local getData = syn.request({
                                Url = "https://scriptblox.com"..getImage,
                                Method = "GET",
                            }).Body

                            writefile("ScriptBlox/Chace-SearcherKarma-Chache/"..v["slug"]..".png", getData)

                        end

                    end

                    local useless, Button = fcs:AddScript(v["title"], v["scriptType"], 1,1,v["views"],getasset(readfile("ScriptBlox/Chace-SearcherKarma-Chache/"..v["slug"]..".png")),v["game"]["name"])
    
                    table.insert(buttons, {Button, v["script"]})
                    table.insert(uis, useless)
                    
                end
    
            end
        end)
        if e then
            warn(e)
        end

    end

end
coroutine.wrap(mainLoop)()
coroutine.wrap(detectButtons)()

UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.Home then
        UI.Enabled = not UI.Enabled
    end
end)

