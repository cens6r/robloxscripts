--funcs.lua
do
getgenv().funcs = funcs or {}
local playerservice = game:GetService("Players")
local deb = game:GetService("Debris")
local lplr = playerservice.LocalPlayer
local runservice = game:GetService("RunService")
local rustepped = runservice.Stepped
local ruhb = runservice.Heartbeat
local tpserv = game:GetService("TeleportService")
local ffind=table.find
local checkcaller=clonefunction(checkcaller)
getgenv().wait = task.wait
getgenv().spawn=task.spawn --use task.spawn instead noob, locals faster we no want use globals
getgenv().funcs.runs = runservice
getgenv().funcs.deb = deb
getgenv().funcs.plrs = playerservice
getgenv().funcs.lplr = lplr
getgenv().funcs.uip=game:GetService("UserInputService")
getgenv().funcs.rawmeta=getrawmetatable(game)
funcs.protectedlist=funcs.protectedlist or {};
local newind
funcs.newind=funcs.newind or hookmetamethod(game,"__index",newcclosure(function(...)
local ret={rawget(funcs,"newind")(...)}
if not checkcaller() and #ret>=1 and ffind(rawget(funcs,"protectedlist"),ret[1]) then
return
end
return unpack(ret)
end))
funcs.nmcall=funcs.nmcall or hookmetamethod(game,"__namecall",newcclosure(function(...)
local ret={rawget(funcs,"nmcall")(...)}
if not checkcaller() and #ret>=1 and ffind(rawget(funcs,"protectedlist"),ret[1]) then
return
end
return unpack(ret)
end))
local function normalizeblue(nnnn) --changed from global to local, you most likely don't need this in your script or globals.
return "%"..nnnn
end
getgenv().funcs.normalizemagic = function(magic,p)
local str=string.gsub(magic,"[%(+%)+%^+%*+%$+%.+%[+%]+%++%-+%?+%%+]",normalizeblue)
return p and str[1] or str
end

funcs.rndmstr=function(minim,lenim)
local array = {}
	local length = math.random(minim or 10,lenim or 20)
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	array=table.concat(array)
	local rndm=math.random(1,4);
	if rndm==1 then
		array=array..tostring(math.random(1,9999999))
	elseif rndm==2 then
		array=tostring(math.random(1,9999999))..array
	end
return array
end
getgenv().getchar=function(x,y,p)
p=p or funcs.lplr
local ch=p.Character or p.CharacterAdded:Wait()
if ch and x~=nil then
return y and ch:FindFirstChildOfClass(x) or not y and ch:FindFirstChild(x)
else
return ch
end
end
getgenv().funcs.rebindsl = function(KEYS)
local mouseLockController = funcs.lplr.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("CameraModule"):WaitForChild("MouseLockController")
local obj = mouseLockController:FindFirstChild("BoundKeys")
if obj then
	obj.Value = KEYS
else
	obj = Instance.new("StringValue")
	obj.Name = "BoundKeys"
	obj.Value = KEYS
	obj.Parent = mouseLockController
end
end

local con
getgenv().funcs.autoc1 = function()
if not con then
funcs.sendnotif("autoclicker","loaded","rbxassetid://8209859518",3)

local mym = funcs.lplr:GetMouse()
getgenv().XxautocxX = false
con = funcs.uip.InputBegan:Connect(function(inpuut,proc)
if inpuut.UserInputType == Enum.UserInputType.Keyboard and funcs.uip:IsKeyDown(Enum.KeyCode.Q) and inpuut.KeyCode == Enum.KeyCode.X then
getgenv().XxautocxX = not getgenv().XxautocxX
if XxautocxX then funcs.sendnotif("autoclicker","enabled (q+x)","rbxassetid://8209859518",3) else funcs.sendnotif("autoclicker","disabled","rbxassetid://8209859518",3) end
while XxautocxX and con do
mouse1click()
mouse1click()
task.wait()
end
end
end)
else
funcs.sendnotif("autoclicker","removed","rbxassetid://8209859518",7)
con:Disconnect() con=nil
end
end
getgenv().funcs.instanceholder = funcs.instanceholder or Instance.new("Folder")
funcs.instanceholder.Name=math.random(1,99999999)
table.insert(funcs.protectedlist,funcs.instanceholder)
funcs.instanceholder.Parent=game:GetService("CoreGui")
--[[getgenv().funcs.addhook = function(x,txt)
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = x
				BillboardGui.Name = "Sight"
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				BillboardGui.MaxDistance = 99999999
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = txt
				TextLabel.ZIndex = 10
end--]]
getgenv().funcs.getholder=function(name)
local fd=name and funcs.instanceholder:FindFirstChild(name)
if not fd then
fd=Instance.new("Folder")
fd.Name=tostring(name) or #funcs.instanceholder:GetChildren()+1
fd.Parent=funcs.instanceholder
end
return fd
end
local function verval(vals,def)

if type(vals)=='table' then
for i,v in pairs(vals) do
if v~= nil then
return v
end
end
elseif vals~=nil then
return vals
end
return def
end
funcs.hookedinst={}
getgenv().funcs.addhook=function(v,tb)
		v=v:IsA("Model") and (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") or v.PrimaryPart or v:FindFirstChildOfClass("BasePart")) or v
		if not v then return 'fish_not_found' end
		tb=tb or {}
		tb={["maxdis"]=verval({tb.maxdis,tb.maxdist,tb.maxdistance},math.huge),
		["color"]=verval({tb.color;tb.txtcolor},Color3.fromRGB(255,255,255)),
		["text"]=tb.text or v:IsA("Model") and v.Name or v.Parent.Name,
		["txtcolor"]=verval({tb.txtcolor,tb.textcolor,tb.color},Color3.fromRGB(255,255,255)),
		["job"]=funcs.getholder(tb.job or "generic_esp"),
		["txtenabled"]=verval({tb.textenabled,tb.txtenabled},true),
		["autorem"]=verval({tb.autoremove,tb.autorem},true),
		["offset"]=verval(tb.offset,Vector3.new(0,2,0)),
		["dep"]=verval({tb.additionaldependencies;tb.dep},{}),
		["transp"]=verval({tb.transp,tb.transparency,tb.trans},.8),
		["rez"]=verval({tb.rez,tb.res},true),
		["toreturn"]={};
		["1h"]=verval(tb["1h"],true);
		["cons"]=tb.cons or {}
		}
		local fh=tb["1h"] and funcs.hookedinst[v]
		for x,n in pairs(funcs.hookedinst) do if not x or not n then table.remove(funcs.hookedinst,x) end end
		if fh and fh.toreturn and fh.toreturn.justquit then fh.toreturn.justquit() end
		funcs.hookedinst[v]=tb
		if getproperties(v).Size then
        local a = Instance.new("BoxHandleAdornment")
        a.Size = v.Size
        a.AlwaysOnTop = true
        a.Parent = tb.job
        a.ZIndex = 1
        a.Transparency = tb.transp
        a.Adornee = v
        a.Color3 = tb.color
		a.Name=v.Name
		tb.toreturn.box=a
		end
		if tb.txtenabled then
        local b = Instance.new("BillboardGui")
        b.Adornee = v
        b.MaxDistance = tb.maxdis
        b.AlwaysOnTop = true
        b.Parent = tb.job
        b.ExtentsOffset = tb.offset
        b.Size = UDim2.fromScale(4,2)
		b.Name=v.Name
		tb.toreturn.billboardgui=b
        local c = Instance.new("TextLabel")
        c.Text = tb.text or v.Parent.Name
        c.BackgroundTransparency = 1
        c.Size = UDim2.fromScale(1,1)
        c.TextScaled = true
        c.Parent = b
        c.TextColor3 = tb.txtcolor
		tb.toreturn.textbox=c
		end
		if tb["rez"] and tb.toreturn.box then
		local function M_e_M_e_M_e()
		if c~=nil then
		c.TextWrap=false
		c.TextScaled=false
		end
		end
		local function M_L_M_L_M_L()
		if c~=nil then
		c.TextWrap=true
		c.TextScaled=true
		end
		end
		tb.toreturn.box.MouseEnter:Connect(M_e_M_e_M_e)
		tb.toreturn.box.MouseLeave:Connect(M_L_M_L_M_L)
		end
		

		tb.toreturn.justquit=function()
		if not tb then return end
		for i,vv in pairs(tb.toreturn) do
		if typeof(vv)=='Instance' then
		funcs.deb:AddItem(vv,0)
		end
		tb.toreturn[i]=nil
		end
		for i,vv in pairs(tb.cons) do
		if vv then vv:Disconnect() end
		end
		funcs.hookedinst[v]=nil
		v,tb=nil,nil
		end
		if tb.autorem then
		--if a then a:GetPropertyChangedSignal("Adornee"):Connect(tb.autorema) end
		--if b then b:GetPropertyChangedSignal("Adornee"):Connect(tb.autoremb) end
		table.insert(tb.cons,v.AncestryChanged:Connect(function(x,y) if not y and tb and tb.toreturn and tb.toreturn.justquit then tb.toreturn.justquit() end end))
		table.insert(tb.cons,v.Destroying:Connect(tb.toreturn.justquit))
		end
		
		for i,x in pairs(tb.dep) do
		if typeof(x)=="Instance" then
		table.insert(tb.cons,x.Destroying:Connect(tb.toreturn.justquit))
		elseif typeof(x)=="RBXScriptConnection" then
		table.insert(tb.cons,x:Connect(tb.toreturn.justquit))
		end
		end
		return tb.toreturn
end

getgenv().funcs.toplaceid = function(id)
funcs.lplr:Kick()
task.wait(.5)
tpserv:Teleport(id,Lplr)
end
--[[
getgenv().funcs.copyjobid = function()
setclipboard(game.JobId)
end
getgenv().funcs.copyplaceid = function()
setclipboard(game.PlaceId)
end--]]

getgenv().funcs.sg = game:GetService("StarterGui")
getgenv().funcs.sendnotif = function(top,bottomtextuwu,icopain,durrrrr)
funcs.sg:SetCore("SendNotification", {
Title = top or "";
Text = bottomtextuwu or ""; -- bottom text uwu
Icon = icopain or "rbxassetid://9101806464";
Duration = durrrrr or 5; -- durrrrr in seconds

})
end
local http=game:GetService('HttpService')
getgenv().funcs.save = function(name,data,encode)
if encode then
writefile(name,http:JSONEncode(data))
else
writefile(name,data)
end
end
getgenv().funcs.load = function(name,default)

	if not isfile(name) then writefile(name, http:JSONEncode(default)) end

	return http:JSONDecode(readfile(name))
end
getgenv().funcs.sl = function()
funcs.lplr.DevEnableMouseLock = not funcs.lplr.DevEnableMouseLock
end
getgenv().funcs.xgetplr = function(String,mode) --Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
	local curp=playerservice:GetPlayers()
        for i,v in pairs(curp) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end
	   for i,v in pairs(curp) do
            if not table.find(Found,v) and v.DisplayName:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end
    return not mode and Found or Found[1]    
end
getgenv().funcs.turtlespyload = function() -- i cannot remember these therefore will write a function for them
loadfile("rspy.lua")()
end
getgenv().funcs.kickblur = function()
runservice:SetRobloxGuiFocused(false)
end
getgenv().funcs.rem = function(x,xx)
local im = x:WaitForChild(tostring(xx),20)
if im ~= nil then
deb:AddItem(im,0)
end
end
--[[getgenv().funcs.xxget = function(name)
return xgetplr(name,true)
end--]]
local function tablematch(x,y)
for ii,vv in pairs(x) do if y[ii] and y[ii]~=vv then return false end end 
return true
end
getgenv().funcs.wfcofclass = function(parent: Instance, class: string, RELEASEDATE: number?, recursive: boolean?, options: table?)
	options=options or {}
	local vrs={}
	vrs.child = parent:FindFirstChildWhichIsA(class,recursive);
	if vrs.child and (not options.reqprop or tablematch(getproperties(vrs.child),options.reqprop)) and (not options.reqhprop or tablematch(getproperties(vrs.child),options.reqhprop)) then return vrs.child end
	vrs.bndable=Instance.new("BindableEvent")
	vrs.wfcfunc=function(x)
		if x:IsA(class) and (not options.reqprop or tablematch(getproperties(x),options.reqprop)) and (not options.reqhprop or tablematch(gethiddenproperties(x),options.reqhprop)) then
			vrs.bndable:Fire(x)
		end
	end
	vrs.evf=function(x) vrs.child=nil for i,v in pairs(vrs) do if typeof(v)=='Instance' then funcs.deb:AddItem(v,0) elseif typeof(v)=='RBXScriptConnection' then v:Disconnect() end vrs[i]=nil end vrs=nil return x end
	vrs.evc=vrs.bndable.Event:Connect(vrs.evf)
	vrs.con=parent[recursive and "DescendantAdded" or "ChildAdded"]:Connect(vrs.wfcfunc)
    if type(RELEASEDATE)~="boolean" then task.delay(RELEASEDATE or 10,vrs.bndable.Fire,vrs.bndable) end
	return vrs.bndable.Event:Wait()
end 
--[[
funcs.wfcofclass(parent: Instance, class: string, RELEASEDATE: number?, recursive: boolean?, options: table?)
options={
reqprop={"Name"="amongus"} --only return if Instance.Name=amongus
reqhprop={"HiddenImpostor"="Coral"} -- only return if <hidden> Instance.HiddenImpostor="Coral"
}
--]]
--[[
task.spawn(function() local bitch=funcs.wfcofclass(getchar(),"BodyVelocity") print(bitch:GetFullName()) end)
task.wait()
local stupidretard=Instance.new("BodyVelocity",getchar())
--]]

--proximity and touchinterest
--[[getgenv().funcs.prox = function()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ProximityPrompt") then
coroutine.wrap(function()
v.Enabled = true
fireproximityprompt(v,0)
end)()
end
end
end--]]
--[[if charfuncs == true then
local looptouching = {}
getgenv().funcs.looptouch = function(interest,val)
local plrh = getchar() and getchar():WaitForChild("HumanoidRootPart",40)
local intt
local totalnum = 0
if interest:IsA("TouchTransmitter") then
intt = interest.Parent
elseif interest:FindFirstChildOfClass("TouchTransmitter") then
intt = interest
else
print("next time give me something with a touchinterest idiot")
return
end
local inttn = intt:GetFullName()
if not table.find(looptouching,inttn) then
table.insert(looptouching,inttn)
wait(0)
if tonumber(val) == nil then
coroutine.wrap(function()
while ruhb:Wait() and table.find(looptouching,inttn) do
firetouchinterest(plrh,intt,0)
firetouchinterest(plrh,intt,1)
totalnum = totalnum + 1
if not table.find(looptouching,inttn) then
break
end
end
print(totalnum)
end)()
print("FIRE!")
elseif tonumber(val) ~= nil then
coroutine.wrap(function()
local nn = tonumber(val)
while wait(nn) and table.find(looptouching,inttn) do
firetouchinterest(plrh,intt,0)
firetouchinterest(plrh,intt,1)
totalnum = totalnum + 1
if not table.find(looptouching,inttn) then
break
end
end
print(totalnum)
end)()
print("FIRE!")
end
else
unfuck(looptouching,inttn)
print("disabled")
end

end

end--]]
--END
--no clue who released printbeenest code
getgenv().funcs.printbeenest = function(xx,mm) --thread idk
local rettable
if mm == nil then
rettable = "{"
else
rettable = mm .. " = " .. "{"
end
local pparent = ""
	for x, y in pairs(xx) do
	local isxokay=not tonumber(x) and tostring(x).." = "
	if type(y) == "string" then
		coroutine.wrap(function()
			rettable = rettable ..isxokay.. '"'.. tostring(y) ..'", '
		end)()
	elseif type(y) == "number" then
		coroutine.wrap(function()
			rettable = rettable ..isxokay.. tostring(y) ..','
		end)()
	elseif typeof(y):lower() == "boolean" then
		coroutine.wrap(function()
			rettable = rettable ..isxokay..tostring(y) .. ","
		end)()
	elseif type(y):lower() == "table" then
		if pparent ~= "" then
			rettable = rettable ..isxokay.. tostring(pparent) .. "." .. x .. " = {" .. tostring(table.concat(y,",")) .. "},"
			coroutine.wrap(function()
			print(funcs.printbeenest(y,tostring(x)))
			end)()
		else
			rettable = rettable .. x .. " = {" .. tostring(table.concat(y,",")) .. "},"
			coroutine.wrap(function()
			print(funcs.printbeenest(y,tostring(x)))
			end)()
		end
	elseif typeof(y):lower() == "function" then
		coroutine.wrap(function()
		rettable = rettable ..isxokay.. ","
		end)()
	elseif type(y):lower() == "instance" then
		coroutine.wrap(function()
		rettable = rettable ..isxokay.. y:GetFullName() .. ","
		end)()
	else
		if pparent ~= "" then
		rettable = rettable .. tostring(pparent) .. "." .. tostring(y) .. " = " .. tostring(y) .. ","
		else
		rettable = rettable .. tostring(y) .. "=" .. tostring(y) .. ","
		end
	end
	pparent = tostring(x)
	end
	rettable = rettable .. "}"
	wait(0)
return rettable
end
--infinite yield fe code (rj)
getgenv().rj = function() --infinite yield
	if #playerservice:GetPlayers() <= 1 then
		funcs.lplr:Kick("\nRejoining...")
		task.wait(.5)
		game:GetService('TeleportService'):Teleport(game.PlaceId, funcs.lplr)
	else
		funcs.lplr:Kick("\nRejoining...")
		task.wait(.5)
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, funcs.lplr)
end
end

--[[[noface^
local ch = lplr.Character or lplr.CharacterAdded:Wait()
if game.PlaceId == 6003728526 then
getgenv().ulanonametag = function()
ch = lplr.Character or lplr.CharacterAdded:Wait()
if ch:FindFirstChild("Head"):FindFirstChildOfClass("BillboardGui") then
deb:AddItem(ch:FindFirstChild("Head"):FindFirstChildOfClass("BillboardGui"),0)
end
lplr.CharacterAdded:Connect(function(cha)
ch = cha or lplr.CharacterAdded:Wait()
local xh = ch:WaitForChild("Head")
WaitForChildOfClass(xh,"BillboardGui")
if xh:FindFirstChildOfClass("BillboardGui") then
deb:AddItem(xh:FindFirstChildOfClass("BillboardGui"),0)
end
end)
end
local morphpath = game:GetService("Workspace").Spawn
getgenv().charchoose = function(name)
ch = lplr.Character or lplr.CharacterAdded:Wait()
local choosenf
for i,v in pairs(morphpath:GetDescendants()) do
if v:IsA("Folder") and v.Name == name then
for b,x in pairs(v:GetDescendants()) do
--second arg below might have to be removed later on
if x:IsA("TouchTransmitter") and x:IsDescendantOf(v) then
firetouchinterest(ch:FindFirstChild("HumanoidRootPart"),x.Parent,0)
firetouchinterest(ch:FindFirstChild("HumanoidRootPart"),x.Parent,1)
print("done -")
end
end
end
end

end

end
--ula gameid check end ^
end--]]

--charfuncs ^
--[[
if game.PlaceId == 6907620011 then
loadfile('ccessentials.lua')()
end
--]]
--funcs.turtlespyload()
getgenv().funcs_loaded = true
--[[for i,v in pairs(listfiles("funcsdependents")) do
loadfile(v)()
end--]]
end
