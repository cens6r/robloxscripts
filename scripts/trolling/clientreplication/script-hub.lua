-- loadstring: loadstring(game:GetObjects('rbxassetid://695486499')[1].Source)()

--List
wait(1)
game:GetObjects('http://www.roblox.com/asset/?id=694610398')[1].Parent = game.CoreGui -- archived file: https://github.com/cens6r/robloxscripts/blob/main/scripts/etc/other_stuff/694610398.rbxm
x = game.CoreGui.ScriptHub.Box
x.Visible = false
wait(2)
x.Position = UDim2.new(0, -500, 0, 220)
x.Visible = true
x:TweenPosition(UDim2.new(0, 5, 0, 220), "Out", "Quad", 2, false)
wait(0.3)

local FEChecker = game.CoreGui.ScriptHub.Box.Bottom
	if game.Workspace.FilteringEnabled == true then
		FEChecker.Text = "FE = Enabled"
	else
		FEChecker.Text = "FE = Disabled"
	end

local MusicVisualizerTrueOrFalse = Instance.new("BoolValue", game.CoreGui.ScriptHub)
MusicVisualizerTrueOrFalse.Name = "MusicVisualizer"
	
local List = game.CoreGui.ScriptHub.Box.List
local Main = game.CoreGui.ScriptHub.Box.Main
local Server = game.CoreGui.ScriptHub.Box.Server
local Music = game.CoreGui.ScriptHub.Box.Music
local Quickscoping = game.CoreGui.ScriptHub.Box.Quickscoping
local Credits = game.CoreGui.ScriptHub.Box.Credits
local ScriptExec = game.CoreGui.ScriptHub.Box.Executer
local Rape = game.CoreGui.ScriptHub.Box.Rape
local MusicVisualizer = game:GetObjects('rbxassetid://698126933')[1].Source -- archived file: https://github.com/cens6r/robloxscripts/blob/main/scripts/etc/other_stuff/698126933.rbxm

List.Main.MouseButton1Down:connect(function()
	Main.Visible = true
	Server.Visible = false
	Music.Visible = false
	Quickscoping.Visible = false
	Credits.Visible = false
	ScriptExec.Visible = false
	Rape.Visible = false
end)


List.Server.MouseButton1Down:connect(function()
	Server.Visible = true
	Main.Visible = false
	Music.Visible = false
	Quickscoping.Visible = false
	Credits.Visible = false
	ScriptExec.Visible = false
	Rape.Visible = false
end)

List.Music.MouseButton1Down:connect(function()
	Main.Visible = false
	Server.Visible = false
	Music.Visible = true
	Quickscoping.Visible = false
	Credits.Visible = false
	ScriptExec.Visible = false
	Rape.Visible = false
	
wait(0.1)
	if game.CoreGui.ScriptHub.MusicVisualizer.Value == false then
		game.CoreGui.ScriptHub.MusicVisualizer.Value = true
		loadstring(MusicVisualizer)()
	end	
end)

List.Quickscoping.MouseButton1Down:connect(function()
	Main.Visible = false
	Server.Visible = false
	Music.Visible = false
	Quickscoping.Visible = true
	Credits.Visible = false
	ScriptExec.Visible = false
	Rape.Visible = false
end)

List.Credits.MouseButton1Down:connect(function()
	Main.Visible = false
	Server.Visible = false
	Music.Visible = false
	Quickscoping.Visible = false
	Credits.Visible = true
	ScriptExec.Visible = false
	Rape.Visible = false
end)

List.Executer.MouseButton1Down:connect(function()
	Main.Visible = false
	Server.Visible = false
	Music.Visible = false
	Quickscoping.Visible = false
	Credits.Visible = false
	ScriptExec.Visible = true
	Rape.Visible = false
end)

List.Rape.MouseButton1Down:connect(function()
	Main.Visible = false
	Server.Visible = false
	Music.Visible = false
	Quickscoping.Visible = false
	Credits.Visible = false
	ScriptExec.Visible = false
	Rape.Visible = true
end)

--List

loadstring(game:GetObjects("rbxassetid://713508584")[1].Source)()

--Main

wait(0.05)
loadstring(game:GetObjects("rbxassetid://714903320")[1].Source)()

--Server
game.CoreGui.ScriptHub.Box.Server.BTN1.MouseButton1Down:connect(function()
wait(0.2)
	local rekt = Instance.new('ColorCorrectionEffect', game.Lighting)
rekt.TintColor = Color3.new(155, 1, 0)
rekt.Brightness = 0.2
rekt.Contrast = 1
rekt.Saturation = 1
local topkek = Instance.new('BlurEffect', game.Lighting)
topkek.Size = 3
local bloom = Instance.new('BloomEffect', game.Lighting)
bloom.Intensity = 0.4
bloom.Size = 56
bloom.Threshold = 1

for i,v in next,workspace:children''do
  if(v:IsA'BasePart')then
    me=v;
    bbg=Instance.new('BillboardGui',me);
    bbg.Name='stuf';
    bbg.Adornee=me;
    bbg.Size=UDim2.new(2.5,0,2.5,0)
    tlb=Instance.new'TextLabel';
    tlb.Text='666 666 666 666 666 666';
    tlb.Font='SourceSansBold';
    tlb.FontSize='Size48';
    tlb.TextColor3=Color3.new(1,0,0);
    tlb.Size=UDim2.new(1.25,0,1.25,0);
    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
    tlb.BackgroundTransparency=1;
    tlb.Parent=bbg;
    end;end;
      s=Instance.new'Sound';
      s.Parent=workspace;
      s.SoundId='rbxassetid://152840862';
      s.Pitch=1;
      s.Volume=1;
      s.Looped=true;
      s:play();
      --end;end)();
      function xds(dd)
        for i,v in next,dd:children''do
          if(v:IsA'BasePart')then
            v.BrickColor=BrickColor.new'Really black';
            v.TopSurface='Smooth';
            v.BottomSurface='Smooth';
            a=Instance.new('PointLight',v);
            a.Color=Color3.new(1,0,0);
            a.Range=15;
            a.Brightness=5;
            f=Instance.new('Fire',v);
            f.Size=19;
            f.Heat=22;
            end;
            game.Lighting.TimeOfDay=0;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(0,0,0);
            game.Lighting.Ambient=Color3.new(1,0,0);
            game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(0,0,0);
        local dec = 'http://www.roblox.com/asset/?id=19399245';
            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
            if #(v:GetChildren())>0 then
                   xds(v) 
              end
         end
    end
xds(game.Workspace)
end)

game.CoreGui.ScriptHub.Box.Server.BTN2.MouseButton1Down:connect(function()
wait(0.2)
	Instance.new("ColorCorrectionEffect", game.Lighting).Saturation = 99999998430674944.000
end)

game.CoreGui.ScriptHub.Box.Server.BTN3.MouseButton1Down:connect(function()
wait(0.2)
	--Ultimate V2.2
m = Instance.new("Message")
m.Parent = Workspace
m.Text = ("Loaded PePe Rage Script/Server Destruction")
game.Workspace.Gravity = 75
game.Lighting.TimeOfDay = ("5:00")
game.Lighting.FogEnd = 300


wait(1)
m:Remove()

while true do
wait(0.5)
b = Instance.new("BlurEffect")
b.Parent = game.Lighting
h = Instance.new("Hint")
h.Parent = game.Workspace
h.Text = ("It is the ultimate end of the server.")
game.Workspace.Gravity = 30
game.Lighting.TimeOfDay = ("0:00")
game.Lighting.FogEnd = 75
game.StarterPlayer.CameraMode = ("LockFirstPerson")
game.Workspace.Camera.FieldOfView = 200

for i,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Part")then
v.BrickColor = BrickColor.new('le color')
v.Name = ("locked")
v.Locked = true
v.Anchored = false
end
end
end
end)

game.CoreGui.ScriptHub.Box.Server.BTN4.MouseButton1Down:connect(function()
wait(0.2)
	-- input
function GetRecursiveChildren(Part, Children)
        for _, Part in pairs(Part:GetChildren()) do
                pcall(function()
                        table.insert(Children, Part)
                        GetRecursiveChildren(Part, Children)
                end)
        end
        return Children
end


local Phrases = {
        "YOU ARE NOW Deo's L\2OVE-PUPPY",
        "SergeantSmokey was here!",
        "SergeantSmokey was here!",
        "SergeantSmokey was here!",
        "SergeantSmokey was here!",
        "SergeantSmokey was here!!",
        "SergeantSmokey was here!",
        "Meow.",
        "SergeantSmokey was here!",
        "1x1x1x1 Was Not Here",
        "SergeantSmokey was here!",
        "SergeantSmokey was here!",
        "Oh, let's blow some things up!",
        "SergeantSmokey was here!",
        "Eat my shirt!",
        "No shirt, no shoes, no torso, no service.",
        "You got owned, bi-yatch.",
        "I heard you like hacks. Me too! Wow, we have so much in common! Want to go out some time?",
        "The Aperture Science Weighted Companion Cube will not stab you, and cannot speak.",
        "Please wait while I warm up the neurotoxins...",
        "Goodbye my only friend... / Wait, did you think I meant you? / That would be funny, / if it weren't so sad.",
        "Yousa gonna dia!",
        "THIS IS SPART- ERR I MEAN DEO!",
        "SergeantSmokey flashes!",
        "SergeantSmokey flashes!",
        "I'm wild for leo.",
        "HURR DURR.",
        "DURR.",
        "HURR.",
        "I'll kick your puppy!",
        "Oh lawdy...",
        "What have I done?!",
        ":3",
        "Who's the noob? You are, hurr.",
        "Deo l\2oves you with hate.",
        "Deo would like to take this moment to tell you how much he hates you.",
        "Deo is your new and old God.",
        "Deo is the cake.",
        "Telamon is mad you took his chicken.",
        "LEROOOOOOOOOOOOOOY JENKIIIIIIIIIIIIIIIIIIIIIIINS",
        "Clockwork was never de-admined D;",
        "We all have hearts of gold! Excuse me while I shatter said gold into pieces.",
        "I shot Santa. Christmas is canceled.",
        "I eat children.",
        "Don't be surprised if the world ends. That's just my way of saying hello.",
        "I'M GOING TO SM\2OKE A LOT OF CR\2ACK.",
        "Life is wonderful. Without it we'd all be dead.",
        "Daddy, why doesn't this magnet pick up this floppy disk?",
        "Give me ambiguity or give me something else.",
        "I.R.S.: We've got what it takes to take what you've got!",
        "We are born naked, wet and hungry. Then things get worse.",
        "Make it idiot proof and someone will make a better idiot.",
        "He who laughs last thinks slowest!",
        "Always remember you're unique, just like everyone else.",
        "\"More hay, Trigger?\" \"No thanks, Roy, I'm stuffed!\"",
        "A flashlight is a case for holding dead batteries.",
        "Lottery: A tax on people who are bad at math.",
        "Error, no keyboard - press F1 to continue.",
        "There's too much blood in my caffeine system.",
        "Artificial Intelligence usually beats real stupidity.",
        "Hard work has a future payoff. Laziness pays off now.",
        "\"Very funny, Scotty. Now beam down my clothes.\"",
        "Puritanism: The haunting fear that someone, somewhere may be happy.",
        "Consciousness: that annoying time between naps.",
        "Don't take life too seriously, you won't get out alive.",
        "I don't suffer from insanity. I enjoy every minute of it.",
        "Better to understand a little than to misunderstand a lot.",
        "The gene pool could use a little chlorine.",
        "When there's a will, I want to be in it.",
        "Okay, who put a \"stop payment\" on my reality check?",
        "We have enough youth, how about a fountain of SMART?",
        "Programming is an art form that fights back.",
        "\"Daddy, what does FORMATTING DRIVE C mean?\"",
        "All wiyht. Rho sritched mg kegtops awound?",
        "My mail reader can beat up your mail reader.",
        "Never forget: 2 + 2 = 5 for extremely large values of 2.",
        "Nobody has ever, ever, EVER learned all of WordPerfect.",
        "To define recursion, we must first define recursion.",
        "Good programming is 99% sweat and 1% coffee.",
        "Home is where you hang your @",
        "The E-mail of the species is more deadly than the mail.",
        "A journey of a thousand sites begins with a single click.",
        "You can't teach a new mouse old clicks.",
        "Great groups from little icons grow.",
        "Speak softly and carry a cellular phone.",
        "C:\\ is the root of all directories.",
        "Don't put all your hypes in one home page.",
        "Pentium wise; pen and paper foolish.",
        "The modem is the message.",
        "Too many clicks spoil the browse.",
        "The geek shall inherit the earth.",
        "A chat has nine lives.",
        "Don't byte off more than you can view.",
        "Fax is stranger than fiction.",
        "What boots up must come down.",
        "Windows will never cease.   (ed. oh sure...)",
        "In Gates we trust.    (ed.  yeah right....)",
        "Virtual reality is its own reward.",
        "Modulation in all things.",
        "A user and his leisure time are soon parted.",
        "There's no place like http://www.home.com",
        "Know what to expect before you connect.",
        "Oh, what a tangled website we weave when first we practice.",
        "Speed thrills.",
        "Give a man a fish and you feed him for a day; teach him to use the Net and he won't bother you for weeks."
}


Textures = {
        "http://www.roblox.com/Asset/?id=59515602",
        "http://www.roblox.com/Asset/?id=48308661",
        "http://www.roblox.com/Asset/?id=42198984",
        "http://www.roblox.com/Asset/?id=59421095",
        "http://www.roblox.com/Asset/?id=59454680",
        "http://www.roblox.com/Asset/?id=59784967",
        "http://www.roblox.com/Asset/?id=45791014",
        "http://www.roblox.com/Asset/?id=58492970",
        "http://www.roblox.com/Asset/?id=59278856"
}


Instance.new("Sky", game:GetService("Lighting")).CelestialBodiesShown = false
Instance.new("Message", Workspace)
Instance.new("Hint", Workspace)


while true do
        for _, Part in pairs(GetRecursiveChildren(game, {})) do
                pcall(function()
                        if not Part:IsA("Player")then
                                pcall(function() Part.Name = Phrases[math.random(1, #Phrases)] end)
                                pcall(function() Part.Text = Phrases[math.random(1, #Phrases)] end)
                                pcall(function() Part.Image = Textures[math.random(1, #Textures)] end)
                                pcall(function() Part.TextureId = Textures[math.random(1, #Textures)] end)
                                pcall(function() Part.Texture = Textures[math.random(1, #Textures)] end)
                                pcall(function() Part.ShirtTemplate = Textures[math.random(1, #Textures)] end)
                                pcall(function() Part.PantsTemplate = Textures[math.random(1, #Textures)] end)
                                pcall(function() Part.Graphic = Textures[math.random(1, #Textures)] end)
                                pcall(function() Part.Color = Color3.new(math.random(), math.random(), math.random()) end)
                                pcall(function() Part.Color3 = Color3.new(math.random(), math.random(), math.random()) end)
                                pcall(function()
                                        Part.SkyboxUp = Textures[math.random(1, #Textures)]
                                        Part.SkyboxDn = Textures[math.random(1, #Textures)]
                                        Part.SkyboxLf = Textures[math.random(1, #Textures)]
                                        Part.SkyboxRt = Textures[math.random(1, #Textures)]
                                        Part.SkyboxFt = Textures[math.random(1, #Textures)]
                                        Part.SkyboxBk = Textures[math.random(1, #Textures)]
                                end)
                                pcall(function()
                                        Part.TextColor3 = Color3.new(math.random(), math.random(), math.random())
                                        Part.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random())
                                        Part.BorderColor3 = Color3.new(math.random(), math.random(), math.random())
                                end)
                                pcall(function()
                                        Part.Pitch = math.random() * 5
                                        Part.Volume = 1
                                        Part.Looped = true
                                        Part:Play()
                                end)
                                pcall(function()
                                        if math.random(1, 5) == 1 then Part.Anchored = false end
                                        if Part.Anchored == false then
                                                Part.Velocity = Vector3.new(math.random(-10, 10), math.random(0, 50), math.random(-10, 10))
                                                Part.RotVelocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
                                        end
                                        Part.Locked = false
                                        Part.BrickColor = BrickColor.random()
                                        Part.TopSurface = "Weld"
                                        Part.BottomSurface = "Weld"
                                        Part.FrontSurface = "Weld"
                                        Part.BackSurface = "Weld"
                                        Part.LeftSurface = "Weld"
                                        Part.RightSurface = "Weld"
                                        Part:BreakJoints()
                                end)
                        end
                end)
                if math.random(1, 50) == 1 then wait() end
        end
end
s.Parent = game.workspace
end)

game.CoreGui.ScriptHub.Box.Server.BTN5.MouseButton1Down:connect(function()
wait(0.2)
	Game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")
end)

game.CoreGui.ScriptHub.Box.Server.BTN6.MouseButton1Down:connect(function()
wait(0.2)
function a(b) 
for i,v in next, b:GetChildren() do
if v:IsA("Part") then
bbg = Instance.new("BillboardGui")
bbg.Adornee=v
bbg.Parent=v
bbg.Size=UDim2.new(3,0,3,0)
bbg.StudsOffset=Vector3.new(0,2,0)
fr = Instance.new("Frame", bbg)
fr.BackgroundTransparency=1
fr.Size=UDim2.new(1,0,1,0)
tl = Instance.new("TextLabel", fr)
tl.FontSize="Size48"
tl.BackgroundTransparency=1
tl.Text="Hitler"
tl.TextColor3=Color3.new(1,0,0)
tl.Size=UDim2.new(1,0,1,0)
end
a(v)
end
end
a(workspace)
end)

game.CoreGui.ScriptHub.Box.Quickscoping.BTN1.MouseButton1Down:connect(function()
wait(0.2)
game.Players.LocalPlayer.PlayerGui.Shop.Frame["C14 Timberwolf"].Cost.Value = 0
game.Players.LocalPlayer.PlayerGui.Shop.Frame["C14 Timberwolf"].Text = "C14 Timberwolf: Free By LyonPlayz :D"
game.Players.LocalPlayer.PlayerGui.Shop.Frame["Intervention"].Cost.Value = 0
game.Players.LocalPlayer.PlayerGui.Shop.Frame["Intervention"].Text = "Intervention: Free By LyonPlayz :D"
game.Players.LocalPlayer.PlayerGui.Shop.Frame["DSR 50"].Cost.Value = 0
game.Players.LocalPlayer.PlayerGui.Shop.Frame["DSR 50"].Text = "DSR 50: Free By LyonPlayz :D"
game.Players.LocalPlayer.PlayerGui.Shop.Frame["Ballista"].Cost.Value = 0
game.Players.LocalPlayer.PlayerGui.Shop.Frame["Ballista"].Text = "Ballista: Free By LyonPlayz :D"
end)

game.CoreGui.ScriptHub.Box.Quickscoping.BTN2.MouseButton1Down:connect(function()
wait(0.2)
local a = game.Lighting.M82A3:Clone()
local b = game.Lighting.GrappleHook:Clone()
local c = game.Lighting.Peacekeeper:Clone()
local d = game.Lighting.Glock19:Clone()
a.Parent = game.Players.LocalPlayer.Backpack
b.Parent = game.Players.LocalPlayer.Backpack
c.Parent = game.Players.LocalPlayer.Backpack
d.Parent = game.Players.LocalPlayer.Backpack
end)

game.CoreGui.ScriptHub.Box.Quickscoping.BTN3.MouseButton1Down:connect(function()
wait(0.2)
game.Players.LocalPlayer.leaderstats.Cash.Value = 1000000000
game.Players.LocalPlayer.leaderstats.Kills.Value = 1000000000
game.Players.LocalPlayer.leaderstats.Spree.Value = 1000000000
game.Players.LocalPlayer.leaderstats.Deaths.Value = 0
end)

game.CoreGui.ScriptHub.Box.Quickscoping.BTN4.MouseButton1Down:connect(function()
wait(0.2)
game.Workspace["Auto-Music Player"]:Destroy()
end)

game.CoreGui.ScriptHub.Box.Quickscoping.BTN5.MouseButton1Down:connect(function()
game.Players.LocalPlayer.PlayerGui.Shop:Destroy()
end)

player = game.Players.LocalPlayer
Bars = "Bars___"..player.Name


game.CoreGui.ScriptHub.Box.Music.Stop.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = ""
end)

game.CoreGui.ScriptHub.Box.Music.BTN1.MouseButton1Down:connect(function()
local SoundId = 438917260
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN2.MouseButton1Down:connect(function()
local SoundId = 396066454
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN3.MouseButton1Down:connect(function()
local SoundId = 132019875
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN4.MouseButton1Down:connect(function()
local SoundId = 160173462
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN5.MouseButton1Down:connect(function()
local SoundId = 254700363
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN6.MouseButton1Down:connect(function()
local SoundId = 415989637
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN7.MouseButton1Down:connect(function()
local SoundId = 556024053
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN8.MouseButton1Down:connect(function()
local SoundId = 508221840
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN9.MouseButton1Down:connect(function()
local SoundId = 594633792
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN10.MouseButton1Down:connect(function()
local SoundId = 684694253
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN11.MouseButton1Down:connect(function()
local SoundId = 684649886
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN12.MouseButton1Down:connect(function()
local SoundId = 276205512
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN13.MouseButton1Down:connect(function()
local SoundId = 149652657
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN14.MouseButton1Down:connect(function()
local SoundId = 145827209
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN15.MouseButton1Down:connect(function()
local SoundId = 167100083
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN16.MouseButton1Down:connect(function()
local SoundId = 383518073
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN17.MouseButton1Down:connect(function()
local SoundId = 262866051
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

game.CoreGui.ScriptHub.Box.Music.BTN18.MouseButton1Down:connect(function()
local SoundId = 401059459
local Sound = game.Players.LocalPlayer.Character[Bars].Sound
game.Players.LocalPlayer.Character[Bars].Sound.SoundId = "rbxassetid://"..tostring(SoundId)
Sound:Play()
end)

local ScriptExecScript = game.CoreGui.ScriptHub.Box.Executer.ScrollingFrame.Script

game.CoreGui.ScriptHub.Box.Executer.Execute.MouseButton1Down:connect(function()
	loadstring(ScriptExecScript.Text)()
end)
