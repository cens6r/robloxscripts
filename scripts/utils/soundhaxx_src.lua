local s,f = pcall(function()
local SOUND,MARKET,RANK,STRING,GUI = {},{},{},{},{}
local CORE = {}
local Player = game.Players.LocalPlayer
local Rank = "Member"
local REMOTE = {}
CORE.Version="1.0"
REMOTE.RemoteConnection=true
local GameOwner = "[ Client ]"
local PlaceName = "Unknown"
local PlaceInfo = {}
local IsStudio = false
local IsSB = false
local Date = nil
local Fonts = {}
local PendingRequests = {}
local RemoteData = {RemoteAdminWait = 5, ChatLogWait = 20, TrelloWait = 10}
local KeyBinds = {}
local Crowns = {}
local LastKeys = {}
local Cars = {}
local ScriptCache,MarketCache,PackageCache = {},{}
local StringReplacements = {}
local SoundInfo = {["ID"] = 0, ["Name"] = "None", ["Creator"] = "None"}
local NoBet = {"/", "-", "(", ")", ""}
local ShouldFilter = true
local Settings = {
	Ranks = {
		["Owner"] = {};
		["Admin"] = {};
		["Member"] = {};
		["Banned"] = {};
		["Crashed"] = {};
		["Muted"] = {};
	};
	
	Prefix = ".";
	Bet = " ";
	MinimumAge = 0;
	ServerLocked = false;
	ColorScheme = "Red";
	TransparencyScheme = 50;
	Fun = true;
	EnableAdminMenu = true;
	EnableTaskBar = true;
	FreeAdmin = false;
	Font = "Arial";
	
	DisableAbuse = false;
	AbuseList = {"kill", "punish", "respawn", "smoke", "blind", "strobe", "flash", "control", "give", "health", "clone", "loopfling", "fling", "drug", "explode", "splode", "ragdoll", "change", "insert", "decal", "taketools", "removetools", "bomb", "say", "sink", "asteroid", "gun", "health", "damage", "btools", "missile", "reck", "truck", "debug"};
	AbusableGear = {55028088, 73089166, 73089190, 73089204, 73089214, 73089239, 73089259, 58921588, 65347268, 130113146, 139578207, 21001552, 58901335, 36431591, 35268363, 16201421, 16200402, 16200204, 16200373, 60791062, 58880579, 73089204, 73089239, 73089259, 36270159, 36334760, 36738185, 58901481, 58901575, 73089229, 73089214, 35200756, 36068233, 36017373, 35223828, 35201552, 55027987, 35205409, 36738142, 16975388, 35226945, 18474459};
	
	LinkedAccount = "";
	DataKey = "";
	
	ExecuteNotificationSound = 0; --177578949
	EnableSounds = true;
	
	VIPMemberID = 0;
	VIPAdminID = 0;
	
	GroupID = 0;
	GroupBanRank = 0;
	GroupMemberRank = 0;
	GroupAdminRank = 0;
	GroupOwnerRank = 0;
	GroupRankBan = 0;
	BannedGroupIDs = {};
	
	IRCServer = "";
	IRCChannel = "";
	IRCCommandExecuters = {};
	
	TrelloToken = ""
}
local Colors = {
	["WHITE"] = Color3.new(1,1,1);
	["BLACK"] = Color3.new(0,0,0);
	["GRAY"] = Color3.new(0.5,0.5,0.5);
	["RED"] = Color3.new(1,0,0);
	["GREEN"] = Color3.new(0,1,0);
	["BLUE"] = Color3.new(0,0,1);
	["YELLOW"] = Color3.new(1,1,0);
	["PINK"] = Color3.new(1,0,1);
	["MAGENTA"] = Color3.new(1,0,1);
	["CYAN"] = BrickColor.new("Cyan").Color;
	["TEAL"] = BrickColor.new("Teal").Color;
	["BROWN"] = Color3.new(0.55,0.25,0.075);
	["PURPLE"] = Color3.new(0.5,0,0.5);
	["RANDOM"] = Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255);
}
local ViewSettings = {
		["Version"] = {CORE.Version.Value, false, nil};
		["Prefix"] = {Settings.Prefix, 3, "Prefix"};
		["Font"] = {Settings.Font, 3, "Font"};
		["Color Scheme"] = {Settings.ColorScheme, 3, "ColorScheme"};
		["Transparency Scheme"] = {Settings.TransparencyScheme * 100, 3, "TransparencyScheme"};
		["Server Locked"] = {Settings.ServerLocked, 3, "ServerLocked"};
		["Fun Commands"] = {Settings.Fun, 3, "Fun"};
		["Disable Abuse"] = {Settings.DisableAbuse, 3, "DisableAbuse"};
		["Minimum Account Age"] = {Settings.MinimumAge, 3, "MinimumAge"};
		["Execute Notification Sound ID"] = {Settings.ExecuteNotificationSound, 3, "ExecuteNotificationSound"};
		["Enable Sounds"] = {Settings.EnableSounds, 3, "EnableSounds"};
		["Group ID"] = {Settings.GroupID, false, "GroupID"};
		["Group Banned Rank"] = {Settings.GroupBanRank, false, "GroupBanRank"};
		["Group Member Rank"] = {Settings.GroupMemberRank, false, "GroupMemberRank"};
		["Group Admin Rank"] = {Settings.GroupAdminRank, false, "GroupAdminRank"};
		["Group Owner Rank"] = {Settings.GroupOwnerRank, false, "GroupOwnerRank"};
		["Banned Group IDs"] = {Settings.BannedGroupIDs, false, "BannedGroupIDs"};
		["IRC Server"] = {Settings.IRCServer, false, "IRCServer"};
		["IRC Channel"] = {Settings.IRCChannel, false, "IRCChannel"};
		["Remote Connection"] = {REMOTE.RemoteConnection, false, nil};
		["Bet"] = {Settings.Bet, 3, "Bet"};
	}
	function STRING:LeetSpeak(Input)
	if tostring(Input) then Input = string.upper(tostring(Input)) else return end
	Input = string.gsub(Input, "LEET", "1337")
	Input = string.gsub(Input, "SECRET", "M".."AKERMODELLUA")
	Input = string.gsub(Input, "E", "3")
	Input = string.gsub(Input, "O", "0")
	Input = string.gsub(Input, "A", "4")
	Input = string.gsub(Input, "X", "x")
	Input = string.gsub(Input, "I", "1")
	Input = string.gsub(Input, "S", "$")
	return Input
end
local ClientInfo,LoopKills,List,Flings,Beeps = {},{},{},{},{}
	StringReplacements = {
	{"_SERVERTIME", "total server time in seconds", false, function(Player) return tostring(math.floor(Workspace.DistributedGameTime)) end};
	{"_PLACEID", "the current place's ID", false, function(Player) return tostring(game.PlaceId) end};
	{"_CREATORID", "the game's creator's user ID", false, function(Player) return tostring(game.CreatorId) end};
	{"_CREATOR", "the game's creator's username", false, function(Player) return GameOwner end};
	{"_PLACENAME", "the current place's name", false, function(Player) return PlaceName end};
	{"_REVPLACENAME", "the current place's name in reverse", false, function(Player) return string.reverse(PlaceName) end};
	{"_PLACEDESC", "the current place's description", false, function(Player) return PlaceInfo.Description end};
	{"_RANDOM", "a random number from 1-10000", false, function(Player) return tostring(math.random(1,10000)) end};
	{"_DATE", "the current date (if Http connected)", false, function(Player) return Date or "Cannot get date. Http not connected" end};
	{"_TIME", "the current time", false, function(Player) return 0 end};
	
	{{"_SOUNDID", "_SONGID", "_MUSICID"}, "the ID of the sound playing", false, function(Player) return tostring(SoundInfo["ID"]) end};
	{{"_SOUNDCREATOR", "_SONGCREATOR", "_MUSICCREATOR"}, "the name of the creator of the sound playing", false, function(Player) return SoundInfo["Creator"] end};
	{{"_SOUND", "_SONG", "_MUSIC"}, "the name of the sound playing", false, function(Player) return SoundInfo["Name"] end};
	{"_FONT", "the font of the admin", false, function(Player) return Settings.Font end};
	{"_COLOR", "the color scheme of the admin", false, function(Player) return Settings.ColorScheme end};
	{{"_TRANS", "_TRANSPARENCY"}, "the transparency scheme of the admin", false, function(Player) return tostring(Settings.TransparencyScheme * 100).."%%" end};
	
	{"_USERID", "player's UserID", true, function(Player) return tostring(Player.UserId) end};
	{"_NAMELEN", "player's username length", true, function(Player) return tostring(string.len(Player.Name)) end};
	{"_REVNAME", "player's username in reverse", true, function(Player) return string.reverse(Player.Name) end};
	{"_UPNAME", "player's username in uppercase", true, function(Player) return string.upper(Player.Name) end};
	{"_LOWNAME", "player's username in lowercase", true, function(Player) return string.lower(Player.Name) end};
	{"_NAME", "player's username", true, function(Player) return Player.Name end};
	{"_LEETNAME", "player's username in leetspeak", true, function(Player) return STRING:LeetSpeak(Player.Name) end};
	{"_ACCOUNTAGE", "player's account age", true, function(Player) return tostring(Player.AccountAge) end};
	{"_AGE", "player's account age", true, function(Player) return tostring(Player.AccountAge) end};
	{{"_BENCHMARK", "_BENCH"}, "player's benchmark score (if available)", true, function(Player) if true then return tostring("q") end end};
	{"_WALKSPEED", "player's WalkSpeed", true, function(Player) if Player.Character and Player.Character:FindFirstChild("Humanoid") then return tostring(Player.Character.Humanoid.WalkSpeed) else return "No humanoid" end end};
	{"_HEALTH", "player's health", true, function(Player) if Player.Character and Player.Character:FindFirstChild("Humanoid") then return tostring(Player.Character.Humanoid.Health) else return "No humanoid" end end};
	{"_MAXHEALTH", "player's MaxHealth", true, function(Player) if Player.Character and Player.Character:FindFirstChild("Humanoid") then return tostring(Player.Character.Humanoid.MaxHealth) else return "No humanoid" end end};
	{"_RANKNUM", "player's rank number", true, function(Player) return tostring(1) end};
	{"_RANK", "player's rank", true, function(Player) return 1 end};
	{{"_POS", "_POSITION"}, "player's position", true, function(Player) tostring("") end};
}
	function STRING:FormatReplace(Player, Input, From)
	local Output = Input
	for _,ReplaceData in pairs(StringReplacements) do
		local ReplaceString = ReplaceData[1]
		local ReplaceStrings = {}
		if type(ReplaceString) == "table" then
			ReplaceStrings = ReplaceString
		else
			ReplaceStrings = {ReplaceString}
		end
		for _,ReplaceString in pairs(ReplaceStrings) do
			if not Player and ReplaceData[3] then else -- does nothing if a player isn't given but the operation requires a player
				local Replacement = ReplaceData[4](Player)
				if type(Replacement) == "string" then
					Output = string.gsub(Output, ReplaceString, Replacement)
				else
				end
			end
		end
	end
	if true then
		return Output
	else
		return STRING:DetermineFilter(Output, Player)
	end
end
function GUI:GetColor(ColorName)
	if not ColorName then ColorName = Settings.ColorScheme end
	return Colors[string.upper(ColorName)]
end
local HTMLDecode = {
	["35"] = "#";
	["36"] = "$";
	["37"] = "%%";
	["38"] = "*";
	["39"] = "'";
	["58"] = ":";
	["59"] = ";";
	["60"] = "<";
	["62"] = ">";
}


local Assets = {
	Packages = {
		[27112438] = {27112025,27112039,27112052,27112056,27112068};
		[139610216] = {139607570,139607625,139607673,139607718,139607770,139610147};
		[77518833] = {77518564,77518616,77518654,77518696,77518737};
		[32336368] = {32336059,32336117,32336182,32336243,32336306};
		[59772975] = {59772137,59772181,59772219,59772279,59772667,59721671};
		[54116460] = {54116290,54116338,54116373,54116394,54116432};
		[39977366] = {39976703,39976829,39976927,39977192,39977295};
		[32357766] = {32357663,32357631,32357619,32357584,32357558};
		[27123973] = {27121265,27121306,27121353,27121393,27121432};
		[55717536] = {55717271,55717330,55717388,55717434,55717491};
		[28279963] = {28279160,28279217,28279859,28279894,28279938};
		[27403592] = {27402580,27402546,27402641,27402714,27402742};
		[86499905] = {86499666,86499698,86499716,86499753,86499793,86498113,62724852,86487766};
		[86500185] = {86500054,86500078,86500036,86500008,86500064,86487700,86498048,62234425};
		[48474394] = {48474356,48474294};
		[187996626] = {187996057,187996098,187996167,187996258,187996321,187996409,187996534};
		[223826660] = {223824598,223825145,223825310,223825496,223825618,223825761,223825893,223800426};
		[188835832] = {188835233,188835327,188835428,188835511,188835586,188835673,188644771};
		[139581948] = {139581117,139581174,139581230,139581292,139581375,139581559,139581668,139581823};
		[33378577] = {33378366,33378438,33378484,33378522,33378540};
		[101744863] = {101742885,101743631,101716880,101744248,101744215,101744371};
		[136793141] = {136792342,136792633,136792698,136792747,136792820,136795159,136795130};
		[91658555] = {91657680,91657749,91657884,91657986,91658092,91658290,90249118};
		[41851073] = {41850825,41850868,41850915,41851009,41850959}
	};
	AssetTypes = {
		[0] = "Product";
		[1] = "Image";
		[2] = "T-Shirt";
		[3] = "Audio";
		[4] = "Mesh";
		[5] = "Lua";
		[6] = "HTML";
		[7] = "Text";
		[8] = "Hat";
		[9] = "Place";
		[10] = "Model";
		[11] = "Shirt";
		[12] = "Pants";
		[13] = "Decal";
		[16] = "Avatar";
		[17] = "Head";
		[18] = "Face";
		[19] = "Gear";
		[21] = "Badge";
		[22] = "Group Emblem";
		[24] = "Animation";
		[25] = "Arms";
		[26] = "Legs";
		[27] = "Torso";
		[28] = "Right Arm";
		[29] = "Left Arm";
		[30] = "Left Leg";
		[31] = "Right Leg";
		[32] = "Package";
		[33] = "YouTube Video";
		[34] = "Game Pass";
		[38] = "Plugin";
		[39] = "SolidModel";
		[40] = "MeshPart";
		[41] = "Hair Accessory";
		[42] = "Face Accessory";
		[43] = "Neck Accessory";
		[44] = "Shoulder Accessory";
		[45] = "Front Accessory";
		[46] = "Back Accessory";
	};
	AccessoryTypes = {
		["all"] = 19;
		["hats"] = 9;
		["hair"] = 20;
		["face"] = 21;
		["neck"] = 22;
		["shoulder"] = 23;
		["front"] = 24;
		["back"] = 25;
		["waist"] = 26;
	};
}

local CharacterCache = {
	{"MakerModelLua", 38837082};
	{"LuaModelMaker", 20920633};
	{"builderman", 156};
	{"Shedletsky", 261};
	{"Telamon", 13645};
	{"ROBLOX", 1};
}

local FaceCovert = {
	Left = "xpos";
	Right = "xneg";
	Front = "zpos";
	Back = "zneg";
	Top = "ypos";
	Bottom = "yneg";
}
function REMOTE:GetURL(URL, Player)
	if string.sub(URL,1,4) ~= "http" then
		URL = "http://"..URL
	end
	local Return = nil
	ypcall(function() Return = Server.HS:GetAsync(URL, true) end)
	if Return then
		return Return
	elseif Player then
		GUI:SendMessage(Speaker, "Unable to find link", "RED URL given is either invalid or httpservice is disabled", "Error")
	end
end
local Meshes = {
	["crown"] = {1, 1078075};
	["king"] = {1, 11419761};
	["teapot"] = {0.03, 1029523};
	["apple"] = {2.5, 16190555};
	["potato"] = {1, 25268275};
	["panda"] = {0.5, 20709221};
	["dominus"] = {0.5, 21057410};
	["fedora"] = {0.75, 13640868};
	["noob"] = {1, 20929341};
	["knife"] = {0.3, 121944778};
	["book"] = {0.3, 1136139};
}

local NotifySounds = {
	["Hover"] = 223134269;
	["Select"] = 292141227;
}
function CORE:HandleEvent(Obj, EventName, Func, NewThread)
	local function Handle()
		if false then
			local Event = CORE:CreateRemoteEvent(Obj, EventName)
			return Event.OnServerEvent:connect(function(Player, ...)
				Func(...)
			end)
		else
			return Obj[EventName]:connect(Func)
		end
	end
	if NewThread then
		Spawn(Handle)
	else
		Handle()
	end
end
function CORE:ExecuteResource(ResourceName, Parent, Data)
	local ReturnScript = nil
	local Executed = true
	if script:FindFirstChild("Resources") then
		local RawResource = script.Resources:FindFirstChild(ResourceName)
		if RawResource then
			local Resource = RawResource:Clone()
			Resource.Disabled = true
			Resource.Parent = Parent
			if Data then
				for Key,Value in pairs(Data) do
					if Resource[Key] then
						Resource[Key].Value = Value
					end
				end
			end
			wait()
			Resource.Disabled = false
			ReturnScript = Resource
		else
			Executed = false
		end
	else
		Executed = false
	end
	if Executed == false then
		if not Data then Data = {} end
		local Source = ScriptCache[ResourceName]
		
		if not Source then
			--Source = REMOTE:GetURL(CORE.Domain.."/Lua/Resources/"..ResourceName..".lua")
			if Source then
				ScriptCache[ResourceName] = Source
			end
		end
		
		if Data and Source then
			for Key,Value in pairs(Data) do
				Source = string.gsub(Source, "@@"..Key.."@@", tostring(Value))
			end
		end
		
		if Source then
			if NLS then
				ReturnScript = NLS(Source, Parent)
			elseif createLocalScriptWithSource then
				ReturnScript = createLocalScriptWithSource(Source)
				ReturnScript.Parent = Parent
			end
		end
	end
	return ReturnScript
end
function SOUND:MakeSound(Parent, ID, Volume, Pitch, Looped)
	if not Volume then Volume = 0.5 end
	if not Pitch then Pitch = 1 end
	if tonumber(ID) then ID = "rbxassetid://"..ID end
	if Looped == nil then Looped = false end
	
	local Sound = Instance.new("Sound", Parent)
	Sound.Pitch = Pitch
	Sound.Volume = Volume
	Sound.SoundId = ID
	Sound.Looped = Looped
	return Sound
end
function GUI:ContrastColor(Color)
	if type(Color) == "string" then Color = GUI:GetColor(Color) end
	if not Color then Color = GUI:GetColor() end
	return Color
end
function SOUND:PlayNotification(Player, ID, Volume, OverrideSettings)
	if not Player or not ID then return nil end
	if NotifySounds[ID] then ID = NotifySounds[ID] end
	local ClientSound = SOUND:MakeSound(game.CoreGui or Player, ID, Volume or 0.3)
	if Settings.EnableSounds or OverrideSettings then
		coroutine.wrap(function()
			wait()
			ClientSound:Play()
			Delay(5, function() ClientSound:Destroy() end)
		end)()
	end
	return Sound
end
function GUI:TellAdmin()
	if not Player then return end
	
	local ValidAdmin,Rank = true,Rank
	if ValidAdmin == true then
		spawn(function() GUI:SendMessage("Script Message", "RED This script was made by n4tWasTerminated#0505. NO SKIDDING!", 7903410082, 5) end)
		if Settings.EnableSounds == true and game.CoreGui then
			local SoundID = 237866523
			if Rank == "Admin" then SoundID = 237866621 elseif Rank == "Owner" then SoundID = 237866707 end
			local Sound = SOUND:MakeSound(game.CoreGui, SoundID, 0.5, 1)
			Sound:Play()
			coroutine.wrap(function()
				wait(4)
				Sound:Stop()
				Sound:Destroy()
			end)()
		end
	end
end
function GUI:CreateForm(Player, TitleText, Size, Position, IconID, ShowFormButtons, ColorScheme, TransparencyScheme, AutoOffset, TweenPosition, NoModal, NoScrollFrame)
	if not Player then return nil end
	if not game.CoreGui then return nil end
	local TaskBar = game.CoreGui:FindFirstChild("M".."ake".."rMod".."el".."Lua's TaskBar")
	if not TitleText then TitleText = "Unknown" end
	if not Size then Size = UDim2.new(0.5,0,0.5,0) end
	if not Position then Position = UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,0.5-(Size.Y.Scale/2),-Size.Y.Offset/2) end
	if not IconID then IconID = 19919809 end
	if ShowFormButtons == nil then ShowFormButtons = true end
	if not ColorScheme then ColorScheme = Settings.ColorScheme end
	if not TransparencyScheme then TransparencyScheme = Settings.TransparencyScheme end
	if AutoOffset == nil then AutoOffset = true end
	if TweenPosition == nil then TweenPosition = true end
	if NoModal == nil then NoModal = false end
	if NoScrollFrame == nil then NoScrollFrame = false end
	
	local IsClosed = false
	local Minus = nil
	local Offset = 0
	local ContentType = "ScrollingFrame"
	local TweenSpeed = 0.3
	
	if AutoOffset then
		for _,Item in pairs(game.CoreGui:GetChildren()) do
			if Item.Name == "M".."a".."k".."erModelLua's Admin Form" then
				if Item.IsActive.Value == true then
					if Item.IsTrueForm.Value == true then
						Offset = Offset + 50
					end
				end
			end
		end
	end
	
	if NoScrollFrame == true then
		ContentType = "Frame"
	end
	
	SOUND:PlayNotification(Player, 155331654)
	
	local Position = Position + UDim2.new(0,Offset,0,Offset)
	local MinimizePos = Position
	
	local SG = Instance.new("ScreenGui", game.CoreGui) SG.Name = string.char(76 + 1, 97, 107, 10 ^ 2 + 1, 114, 77, 111, 10 ^ 2, 101, 108, 76, 117, 97, 39, 115).." Admin Form"
	local IsActive = Instance.new("BoolValue", SG) IsActive.Name = "IsActive" IsActive.Value = true
	local IsTrueForm = Instance.new("BoolValue", SG) IsTrueForm.Name = "IsTrueForm" IsTrueForm.Value = ShowFormButtons
	
	local Dragger = Instance.new("Frame", SG) 
	Dragger.Name = "Dragger" 
	Dragger.Position = UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,-Size.Y.Scale,-Size.Y.Offset - 90) 
	Dragger.Size = Size + UDim2.new(0, 0, 0, 40) 
	Dragger.BackgroundColor3 = GUI:GetColor(ColorScheme) 
	Dragger.BorderColor3 = GUI:ContrastColor(ColorScheme) 
	Dragger.BorderSizePixel = 2 
	Dragger.BackgroundTransparency = 0.9 
	Dragger.Active = true 
	Dragger.ClipsDescendants = true 
	Dragger.Draggable = true
	local FormBar = Instance.new("Frame", Dragger) FormBar.Name = "FormBar" FormBar.Position = UDim2.new(0, 0, 0, 0) FormBar.Size = UDim2.new(1, 0, 0, 40) FormBar.BackgroundTransparency = 1
	local Splitter = Instance.new("Frame", Dragger) Splitter.Name = "Splitter" Splitter.Position = UDim2.new(0, 0, 0, 35) Splitter.Size = UDim2.new(1, 0, 0, 2) Splitter.BackgroundColor3 = GUI:ContrastColor(ColorScheme) Splitter.BorderColor3 = GUI:ContrastColor(ColorScheme)
	local X = Instance.new("ImageButton", FormBar) X.Name = "X" X.Position = UDim2.new(1, -30, 0, 5) X.Size = UDim2.new(0, 25, 0, 25) X.BackgroundTransparency = 1 X.Image = "rbxassetid://275572394"
	local IconHolder = Instance.new("ImageLabel", FormBar) IconHolder.Name = "IconHolder" IconHolder.Position = UDim2.new(0, 5, 0, 5) IconHolder.Size = UDim2.new(0, 35, 0, 25) IconHolder.BackgroundTransparency = 1 IconHolder.Image = "rbxassetid://276002222"
	local Icon = Instance.new("ImageLabel", IconHolder) Icon.Name = "Icon" Icon.Position = UDim2.new(0, 3, 0.5, -10) Icon.Size = UDim2.new(0, 20, 0, 20) Icon.BackgroundTransparency = 1 Icon.Image = "rbxassetid://"..IconID  
	local TitleBegin = Instance.new("ImageLabel", FormBar) TitleBegin.Name = "TitleBegin" TitleBegin.Position = UDim2.new(0, 30, 0, 5) TitleBegin.Size = UDim2.new(0, 35, 0, 25) TitleBegin.BackgroundColor3 = Color3.new(1, 1, 1) TitleBegin.BackgroundTransparency = 1 TitleBegin.Image = "rbxassetid://275589160"
	local TitleEnd = Instance.new("ImageLabel", FormBar) TitleEnd.Name = "TitleEnd" TitleEnd.Position = UDim2.new(1, -76, 0, 5) TitleEnd.Size = UDim2.new(0, 25, 0, 25) TitleEnd.BackgroundTransparency = 1 TitleEnd.Image = "rbxassetid://275589154" 
	local Title = Instance.new("TextLabel", FormBar) Title.Name = "Title" Title.Position = UDim2.new(0, 50, 0, 5) Title.Size = UDim2.new(1, -120, 0, 25) Title.BackgroundColor3 = Color3.new(101/255, 102/255, 102/255) Title.BorderSizePixel = 0 Title.Text = TitleText Title.Font = "ArialBold" Title.FontSize = "Size18" Title.TextXAlignment = "Left" Title.TextColor3 = GUI:ContrastColor(ColorScheme) Title.ClipsDescendants = true
	
	local Body = Instance.new("TextButton", Dragger) Body.Name = "Body" Body.Position = UDim2.new(0, 0, 0, 40) Body.Size = UDim2.new(1, 0, 1, -40) Body.BackgroundColor3 = Color3.new(1, 1, 1) Body.BackgroundTransparency = 1 Body.Text = "" Body.Modal = true Body.Active = true Body.Modal = not NoModal
	local Content = Instance.new(ContentType, Body) Content.Name = "Content" Content.Size = UDim2.new(1, 0, 1, 0) Content.BackgroundTransparency = 1
	if ContentType == "ScrollingFrame" then Content.CanvasSize = Size end
	--local ResizeContainer = Instance.new("Frame", SG) ResizeContainer.Name = "ResizeContainer" ResizeContainer.Size = UDim2.new(0, 20, 0, 20) ResizeContainer.BackgroundColor3 = Color3.new(1, 1, 1) ResizeContainer.BackgroundTransparency = 1
	--local Resizer = Instance.new("ImageLabel", ResizeContainer) Resizer.Name = "Resizer" Resizer.Size = UDim2.new(1, 0, 1, 0) Resizer.BackgroundColor3 = Color:GetColor() Resizer.BackgroundTransparency = Settings.TransparencyScheme Resizer.BorderSizePixel = 0 Resizer.Image = "rbxassetid://199287674" Resizer.Active = true Resizer.Draggable = true  
	
	CORE:ExecuteResource("GUIEffect", SG, {["Transparency"] = Settings.TransparencyScheme + 0.1, ["GUIName"] = "Dragger"})
	
	local Functions = Instance.new("Folder", SG) Functions.Name = "Functions"
	
	local Close = Instance.new("BindableFunction", Functions) Close.Name = "Close"
	local Closed = Instance.new("BindableEvent", Functions) Closed.Name = "Closed"
	local Minimize = Instance.new("BindableFunction", Functions) Minimize.Name = "Minimize"
	local Minimized = Instance.new("BindableEvent", Functions) Minimized.Name = "Minimized"
	local Restore = Instance.new("BindableFunction", Functions) Restore.Name = "Restore"
	local Restored = Instance.new("BindableEvent", Functions) Restored.Name = "Restored"
	
	if Settings.EnableTaskBar then
		Minus = Instance.new("ImageButton", FormBar) Minus.Name = "Minus" Minus.Position = UDim2.new(1, -58, 0, 5) Minus.Size = UDim2.new(0, 35, 0, 25) Minus.BackgroundTransparency = 1 Minus.Image = "rbxassetid://275589157"
	else
		TitleEnd.Position = UDim2.new(1, -50, 0, 5)
		Title.Size = UDim2.new(1, -95, 0, 25)
	end
	
	if not ShowFormButtons then
		X:Destroy()
		TitleEnd:Destroy()
		Title.Size = UDim2.new(1, -55, 0, 25)
	end
	
	local function CloseForm()
		if IsClosed == false then
			IsActive.Value = false
			IsClosed = true
			ypcall(function() Dragger:TweenPosition(UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,1,Size.Y.Offset + 20), "Out", "Quint", TweenSpeed, true, function() wait(1) if SG then SG:Destroy() end end) end)
			Closed:Fire()
			SOUND:PlayNotification(Player, 206375138)
		end
	end
	
	local function MinimizeForm()
		if IsActive.Value == true then
			IsActive.Value = false
			Minimized:Fire()
			MinimizePos = Dragger.Position
			ypcall(function() Dragger:TweenPosition(UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,-Size.Y.Scale,-Size.Y.Offset - 90), "Out", "Quad", TweenSpeed, true) end)
		end
	end
	
	local function RestoreForm()
		if IsActive.Value == false then
			IsActive.Value = true
			Restored:Fire()
			ypcall(function() Dragger:TweenPosition(MinimizePos, "Out", "Quint", TweenSpeed, true) end)
		end
	end
	
	if X then CORE:HandleEvent(X, "MouseButton1Down", CloseForm) end
	if Minus then CORE:HandleEvent(Minus, "MouseButton1Down", MinimizeForm) end
	
	Close.OnInvoke = CloseForm
	Minimize.OnInvoke = MinimizeForm
	Restore.OnInvoke = RestoreForm
	
	if TweenPosition then Dragger:TweenPosition(Position, "Out", "Quint", TweenSpeed, true) end
	
	if TaskBar then
		TaskBar:WaitForChild("AddForm")
		TaskBar.AddForm:Fire(SG, IconID, Closed, Minimized, Restore)
	end
	
	return Content, Close, Closed, Minimize, Minimized, Restore, Restored
end
function STRING:GetSplit(String, NumArgs, BetSplit)
	if not String then return nil end
	if BetSplit == nil then BetSplit = " " end
	if NumArgs == nil then NumArgs = math.huge end
	
	if NumArgs <= 0 then return {String} end
	
	local RecentParse = 1
	local Args = {}
	for i = 1,NumArgs do
		local Find1, Find2 = string.find(string.lower(String),string.lower(BetSplit),RecentParse)
		if Find1 and Find2 then
			table.insert(Args, string.sub(String,RecentParse,Find1 - 1))
			RecentParse = Find2 + 1
		else
			break
		end
	end
	table.insert(Args,string.sub(String,RecentParse,#String))
	return Args
end

spawn(function()
        local runningOnSounds={}

function getSoundId(githubLink,fileName)
    if not isfile("ArchivedSounds/"..tostring(fileName)..".mp3") then
        writefile("ArchivedSounds/"..tostring(fileName)..".mp3",syn.request({Url=githubLink, Method='GET'}).Body)
    end
    return getsynasset("ArchivedSounds/"..tostring(fileName)..".mp3")
end

function getDownloadLink(id)
    local request=syn.request({
        Method="GET",
        Url="https://www.roblox.com/library/"..tostring(id).."/"
    }) 

    return request.Body:split('data-mediathumb-url="')[2]:split('"')[1]
end

if not isfolder("ArchivedSounds") then
    makefolder("ArchivedSounds")
end

function changed(sound,val)
     local s,f=pcall(function()
     if val=="SoundId" then
                if sound.SoundId:sub(1,13)=="rbxassetid://" then
                    if game:GetService("MarketplaceService"):GetProductInfo(tonumber(sound.SoundId:sub(14,#sound.SoundId))).IsPublicDomain then
                        local timepos=sound.TimePosition
                        sound:Stop()
                        sound.SoundId=getSoundId(getDownloadLink(tonumber(sound.SoundId:sub(14,#sound.SoundId))),sound.SoundId:sub(14,#sound.SoundId))
                        sound:Play()
                        sound.TimePosition=timepos
                    else
                        if _G.Settings["Notifications"] then  GUI:SendMessage("Script Message", "RED The sound, "..tostring(sound.SoundId)..", is private.", 7903410082, 5)end
                    end
                elseif sound.SoundId:sub(1,32)=="http://www.roblox.com/asset/?id=" then
                    if game:GetService("MarketplaceService"):GetProductInfo(tonumber(sound.SoundId:sub(33,#sound.SoundId))).IsPublicDomain then
                        local timepos=sound.TimePosition
                        sound:Stop()
                        sound.SoundId=getSoundId(getDownloadLink(tonumber(sound.SoundId:sub(33,#sound.SoundId))),sound.SoundId:sub(33,#sound.SoundId))
                        sound:Play()
                        sound.TimePosition=timepos
                    else
                        if _G.Settings["Notifications"] then  GUI:SendMessage("Script Message", "RED The sound, "..tostring(sound.SoundId)..", is private.", 7903410082, 5) end
                    end
                else
                    if sound.SoundId:sub(1,11)~="rbxasset://"then
                    if _G.Settings["Notifications"] then GUI:SendMessage("Script Message", "RED Could not get sound URL ["..sound.SoundId.."].", 7903410082, 5) end
                    end
                end
     end 
    end) if not s then print(f) spawn(function()wait(30)changed(sound,val)end) end
end

function soundyy(sound)
    if sound:IsA("Sound") and not table.find(runningOnSounds,sound) then
        table.insert(runningOnSounds,sound)
        spawn(function() changed(sound,"SoundId") end)
        spawn(function() sound.Changed:Connect(function(val) changed(sound,val) end) end)
    end
end
local mythingtext=nil
local count=0
if Drawing then
    mythingtext=Drawing.new("Text")
    mythingtext.Center=true
    mythingtext.Outline=true
    mythingtext.Size=50
    mythingtext.Font=1
    mythingtext.Text="hi"
    mythingtext.Visible=true
    mythingtext.Color=Color3.new(1,1,1)
    mythingtext.OutlineColor=Color3.new(0,0,0)
    mythingtext.Position=Vector2.new(workspace.CurrentCamera.ViewportSize.X/2,20)
end
local maxamnt=#game:GetDescendants()
for i,v in pairs(game:GetDescendants()) do
    spawn(function()
        pcall(function()
            count=count+1
            mythingtext.Text="Finding sounds... ("..tostring(count).."/"..tostring(maxamnt)..")"
            if count==maxamnt then mythingtext:Remove() end
        end)
        if instance:IsA("Sound") then 
            spawn(function()
                soundyy(instance)
            end)
        end
    end)
end
game.DescendantAdded:Connect(function(instance)
    spawn(function()
        game:GetService("RunService").RenderStepped:Wait()
        if instance:IsA("Sound") then 
            spawn(function()
                soundyy(instance)
            end)
        end
    end)
end)
end)
function GUI:SendMessage(TitleText, BodyText, IconID, Time, AutoTime, Speaker)
    Player=game.Players.LocalPlayer
	if not Player or not Player:IsA("Player") then return nil end
	if BodyText == "" then return nil end
	if not game.CoreGui then return nil end
	
	local MessageSplit = STRING:GetSplit(BodyText, 1, " ") or {BodyText}
	local TextColor = GUI:GetColor(MessageSplit[1])
	if TextColor then BodyText = MessageSplit[2] end
	BodyText = string.sub(STRING:FormatReplace(Player, BodyText, Speaker or Player),1,1000)
	
	local Frame, Close, Closed, _, Minimized = GUI:CreateForm(Player, TitleText, UDim2.new(0.2,100,0.1,100), nil, IconID)
	local Body = Instance.new("TextLabel", Frame) Body.Name = "Body" Body.Size = UDim2.new(1,0,1,0) Body.BackgroundTransparency = 1 Body.Text = BodyText Body.Font = Settings.Font Body.FontSize = "Size18" Body.TextStrokeTransparency = 0 Body.TextWrapped = true Body.TextYAlignment = "Top"
	
	if Frame then
		local FormBar = Frame.Parent.Parent.FormBar
		local Said = false
		local Speak = Instance.new("ImageButton", FormBar) Speak.Name = "Speak" Speak.Position = UDim2.new(1, -87, 0, 5) Speak.Size = UDim2.new(0, 35, 0, 25) Speak.BackgroundColor3 = Color3.new(1, 1, 1) Speak.BackgroundTransparency = 1 Speak.Image = "rbxassetid://276195369"
		if Settings.EnableTaskBar then
			FormBar.TitleEnd.Position = UDim2.new(1, -106, 0, 5)
			FormBar.Title.Size = UDim2.new(1, -145, 0, 25)
		else
			Speak.Position = UDim2.new(1, -58, 0, 5)
			FormBar.TitleEnd.Position = UDim2.new(1, -76, 0, 5)
			FormBar.Title.Size = UDim2.new(1, -120, 0, 25)
		end
		CORE:HandleEvent(Speak, "MouseButton1Down", function()
			if not Said then
				Said = true
				SOUND:SayConvertedText(SOUND:ConvertText(BodyText), Frame)
			end
		end)
		
		if TextColor then
			Body.TextColor3 = TextColor
		else
			Body.TextColor3 = Color3.new(1,1,1)
		end
		
		if tonumber(Time) then coroutine.wrap(function()
			if AutoTime then
				Time = Time + math.floor(#BodyText/7)
			end
			local Alive = true
			
			local function StopTimer() Alive = false end
			Closed.Event:connect(StopTimer)
			Minimized.Event:connect(StopTimer)
			
			Frame.Size = Frame.Size + UDim2.new(0,0,0,-30)
			Frame.Position = Frame.Position + UDim2.new(0,0,0,30)
			local Ticker = Instance.new("TextLabel", Frame.Parent) Ticker.Size = UDim2.new(1, 0, 0, 30) Ticker.TextColor3 = GUI:ContrastColor() Ticker.BackgroundTransparency = 1 Ticker.Text = Time Ticker.Font = "ArialBold" Ticker.FontSize = "Size18"
			local Stop = Instance.new("ImageButton", Frame.Parent) Stop.Name = "Stop" Stop.Position = UDim2.new(1,-30,0,0) Stop.Size = UDim2.new(0, 25, 0, 25) Stop.BackgroundColor3 = Color3.new(1, 1, 1) Stop.BackgroundTransparency = 1 Stop.Image = "rbxassetid://49494354"
			CORE:HandleEvent(Stop, "MouseButton1Down", StopTimer)
			for i = Time,0,-1 do
				for ii = 1,10 do
					if Alive == true then
						Ticker.Text = i
						wait(0.1)
					else
						break
					end
				end
			end
			if Alive == true then
				Close:Invoke()
			else
				Ticker:Destroy()
				Stop:Destroy()
				Frame.Size = Frame.Size + UDim2.new(0,0,0,30)
				Frame.Position = Frame.Position + UDim2.new(0,0,0,-30)
			end
		end)() end
		
		CORE:ExecuteResource("CalculateScrollY", Body)
	end
end

GUI:TellAdmin()
end) if not s then print(f) end
