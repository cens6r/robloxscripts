
local UIlib = loadstring(game:HttpGet("https://exoticstingyhypotenuse.teresbest.repl.co/ui.lua"))()
   local FarmingSpeed = 1

    local Win = UIlib:Window("Nub.xyz", "PLS DONATE ðŸ’¸")
    local main = Win:Tab("Main")
    local Misc = Win:Tab("Misc")
	     Misc:Slider("Walk Speed", 0, 250, 28, function(v)
     
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
     
     end)
     
     Misc:Slider("Jump Power", 0, 250, 50, function(v)
     
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
         
         end)
  
         Misc:Slider("Gravity", 0, 250, 196.2, function(v)
          game.workspace.Gravity = v
         end)
		 	           Misc:Button("Fake Headless", function()
game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Head.face:Destroy()
         end)
	       main:Slider("Robux", 0, 100000000, 1000000, function(v)
         robux = v
         end)

	
         main:Button("Donate (For You)", function()
        _G.WhoDonated = game.Players.LocalPlayer.Name
_G.HowMuchRobux = robux
_G.WhoGotRobux = game.Players.LocalPlayer.Name
_G.SmiteAnimationId = "ID" -- the id of the person that will appear on the 1mil effect

loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolthatseazy/ezaza/main/PlsDonateFakeDono.txt'),true))()

         end)
	  main:Label("-- Donate To someone --")	

	        main:Slider("Robux", 0, 100000000, 1000000, function(v)
         robux1 = v
         end) 
		    local Players_Table = {}
      for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer then
            table.insert(Players_Table, v.Name)
        end
      end


   local players =   main:Dropdown("Select Player", Players_Table, function(t)
        Player = t
      end)
	        main:Button("Refresh", function()
players:Clear()
             local Players_Table = {}
      for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer then
            players:Add(v.Name)
        end
      end
			end)
	           main:Button("Donate", function()
        _G.WhoDonated = game.Players.LocalPlayer.Name
_G.HowMuchRobux = robux1
_G.WhoGotRobux = Player
_G.SmiteAnimationId = "ID" -- the id of the person that will appear on the 1mil effect

loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolthatseazy/ezaza/main/PlsDonateFakeDono.txt'),true))()

         end)
--[[
_G.WhoDonated = game.Players.LocalPlayer.Name
_G.HowMuchRobux = 1000000
_G.WhoGotRobux = game.Players.LocalPlayer.Name
_G.SmiteAnimationId = "ID" -- the id of the person that will appear on the 1mil effect

loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolthatseazy/ezaza/main/PlsDonateFakeDono.txt'),true))()
]]
