

local UIlib = loadstring(game:HttpGet("https://exoticstingyhypotenuse.teresbest.repl.co/ui.lua"))()
   local FarmingSpeed = 1

    local Win = UIlib:Window("Nub.xyz", "Ninja Legends")
    local main = Win:Tab("Main")
	      local misc = Win:Tab("Misc")
  local FP = main:Label("")
  spawn(function()
      while game:GetService("RunService").RenderStepped:wait() do
          FP:Refresh("FPS : "..tostring(game:GetService("Stats").Workspace.FPS:GetValueString()))
      end
  end)
  local Time = main:Label("")
  spawn(function()
      while task.wait() do
          local Data = os.date("*t")
          Time:Refresh("Real Time : "..Data.hour..":"..Data.min..":"..Data.sec)
      end
  end)
main:line()
	       main:Toggle("Auto Swing", false, function(v)
getgenv().autoswing = v
    while true do
        if not getgenv().autoswing then return end
        for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:FindFirstChild("ninjitsuGain") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                break
            end
        end
        local A_1 = "swingKatana"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1)
        wait()
	end 
end)
   main:Toggle("Auto Sell", false, function(v)
		getgenv().autosell = v
    while true do
        if getgenv().autoswing == false then return end
        game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait()
        game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
        wait()
	end   
end)
   main:Toggle("Auto Buy Swords", false, function(v)
		getgenv().buyswords = v
		while true do
			if not getgenv().buyswords then return end
			local A_1 = "buyAllSwords"
			local A_2 = "Inner Peace Island"
			local Event = game:GetService("Players").LocalPlayer.ninjaEvent
			Event:FireServer(A_1, A_2)
			wait(0.3)
	end  
end)
   main:Toggle("Auto Buy Belts", false, function(v)
getgenv().buybelts = v
		while true do
			if not getgenv().buybelts then return end
			local A_1 = "buyAllBelts"
			local A_2 = "Inner Peace Island"
			local Event = game:GetService("Players").LocalPlayer.ninjaEvent
			Event:FireServer(A_1, A_2)
			wait(0.3)
	end    
end)
   main:Toggle("Auto Rank", false, function(v)
 aa = v
            while aa do task.wait()
            
                for i = 2, ranks do 
                    local ohString1 = "buyRank"
                    local ohString2 = ranks [i]
                    
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1 , ohString2)
                end
            end  
end)
   main:Toggle("Auto Hoops", false, function(v)
gg = v
while gg do task.wait()
	for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
		v.touchPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		wait(0.1)
	end
end
end)

   main:Toggle("Auto Buy Skills", false, function(v)
ff = v
		while ff do task.wait()
			
			local ohString1 = "buyAllSkills"
		local ohString2 = "Blazing Vortex Island"
		
		game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(ohString1, ohString2)
	end
end)
		 --[[
main:line()
main:Label("-- Egg --")


 main:Dropdown("Select Egg", Eggs, function(t)
    Settings.Egg = t
      end)
		 	       main:Toggle("Auto Egg", Settings.AutoEgg, function(State)
Settings.AutoEgg = State
spawn(function()
    while wait() and Settings.AutoEgg do 
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer({},Settings.Egg,0)
    end
end)
         end)
     main:line()
		main:Label("-- Teleports --")
		   
 main:Dropdown("Teleport to Island", Islands, function(t)
    Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands[t].Path:GetModelCFrame() 
      end)


		 	  
		]]
	
		  misc:Slider("Walk Speed", 0, 250, 28, function(v)
     
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
     
     end)
     
     misc:Slider("Jump Power", 0, 250, 50, function(v)
     
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
         
         end)
  
         misc:Slider("Gravity", 0, 250, 196.2, function(v)
          game.workspace.Gravity = v
         end)
		 	           misc:Button("Auto Collect Al Chests + Unlock All Islands", function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
	if string.match(v.Name,"Chest") and v:IsA("Model") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.circleOuter.Position)
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
		wait(0.5)
	end 
end
         end)
--[[
_G.WhoDonated = game.Players.LocalPlayer.Name
_G.HowMuchRobux = 1000000
_G.WhoGotRobux = game.Players.LocalPlayer.Name
_G.SmiteAnimationId = "ID" -- the id of the person that will appear on the 1mil effect

loadstring(game:HttpGet(('https://raw.githubusercontent.com/lolthatseazy/ezaza/main/PlsDonateFakeDono.txt'),true))()
]]
