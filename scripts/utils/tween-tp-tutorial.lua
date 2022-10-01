-- scriptblox thread: https://scriptblox.com/script/Universal-Script-Tween-Teleport-Tutorial-6168

--[[ scriptblox desc:

Tween teleport is a safe way to teleport in games that have anti-cheat If you set the right number to teleport, you will be able to teleport legit without getting flagged by the anti-cheat. It also looks nice, and you can use it for farming and collecting items that require you to not teleport instantly.



How to use it :
1. first of all you will need coordinates grabber like :
loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Developers-tools/main/Coordinates%20Grabber'))()
2. Click Grab Coordinates
3. Click Copy
4. Replace x,y,z with the coordinates you got
5. change the tween teleport speed (line 3) "1" to any number

]]

local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(1,Enum.EasingStyle.Quad); -- Change the number to lower to speed it up and higher to slow it down.
function tp(...)
local tic_k = tick();
local params = {...};
local cframe = CFrame.new(params[1],params[2],params[3]);
local tween,err = pcall(function()
local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
      tween:Play();
end)
   if not tween then return err end
end
tp(x,y,z); -- Change x,y,z to the coordinates you got
