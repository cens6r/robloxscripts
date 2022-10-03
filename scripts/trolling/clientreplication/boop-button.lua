local function LoadLibrary(x)
    return require(game:GetService("ReplicatedStorage"):WaitForChild("LoadLibrary"):FindFirstChild(x))
end
--[[Salvo_Starly[Salvy].Thingy_2018.7]]--
--[[Project Name: https://cdn.discordapp.com/attachments/459898357855420417/470482392667389972/unknown.png ]]--
--[[help]]--
--[[Run in Non-local btw]]--
--[[and i can't even find fox shirt/pants because]]--
chr=game:GetService("Players").SMUGs_ACC.Character
Rooot=chr.HumanoidRootPart
create=LoadLibrary("RbxUtility").Create

ArtificialHB=create("BindableEvent"){
Parent=script,
Name="Heartbeat"}

script:WaitForChild("Heartbeat")

frame=0.0166666666666666667
tf=0
allowframeloss=false
tossremainder=false
lastframe=tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s,p)
tf=tf+s
if tf >=frame then
if allowframeloss then
script.Heartbeat:Fire()
lastframe=tick()
else
for i=1,math.floor(tf/frame) do
script.Heartbeat:Fire()
end
lastframe=tick()
end
if tossremainder then
tf=0
else
tf=tf-frame*math.floor(tf/frame)
end
end
end)

function swait(num)
if num==0 or num==nil then
ArtificialHB.Event:wait()
else
for i=0,num do
ArtificialHB.Event:wait()
end
end
end


function rayCast(Position,Direction,Range,Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Position,Direction.unit*(Range or 999.999)),Ignore)
end

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface=10,10,10,10,10,10
end

function parts2(Par,name,size,color,mat,ref,tra)
local part=create("Part"){
Parent=Par,
Name=name,
Size=size,
CanCollide=true,
Anchored=true,
BrickColor=BrickColor.new(color),
Material=mat,
Reflectance=ref,
Transparency=tra}
--Position=Torso.Position}
NoOutline(part)
part:BreakJoints()
return part 
end

function parts(Par,name,size,color,mat,ref,tra)
local part=create("Part"){
Parent=Par,
Name=name,
Size=size,
CanCollide=false,
Anchored=false,
BrickColor=BrickColor.new(color),
Material=mat,
Reflectance=ref,
Transparency=tra}
--Position=Torso.Position}
NoOutline(part)
part:BreakJoints()
return part 
end

function meshs(Par,name,scale,mtype,id)
local mesh=create("SpecialMesh"){
Parent=Par,
Name=name,
Scale=scale,
MeshType=mtype}
if id~="" then
mesh.MeshId="rbxassetid://"..id
end
return mesh
end

function welds(Par,name,p0,p1,c0,c1)
local weld=create("Weld"){
Parent=Par,
Name=name,
Part0=p0,
Part1=p1,
C0=c0,
C1=c1}
return weld
end

function sounds(Par,id,vol,pit)
local sound=create("Sound"){
Parent=Par,
SoundId="rbxassetid://"..id,
Volume=vol,
PlaybackSpeed=pit}
sound:Play()
game:GetService("Debris"):AddItem(sound,10)
return sound
end

function pssounds(Par,id,vol,pit,octave,pri)
local psound=create("Sound"){
Parent=Par,
SoundId="rbxassetid://"..id,
Volume=vol,
PlaybackSpeed=pit,
MaxDistance=66666666}
psound:Play()
local pitch=create("PitchShiftSoundEffect"){
Parent=psound,
Octave=octave,
Priority=2,
Enabled=true
}
game:GetService("Debris"):AddItem(psound,10)
return psound
end

function particles(par,zoff,color,id,lemi,linf,direct,sizmin,sizmax,tramin,tramax,lifemin,lifemax,rotmin,rotmax,speed,velocity,lock,timelimit)
local aaa=NumberSequence.new({NumberSequenceKeypoint.new(0, sizmin),NumberSequenceKeypoint.new(1, sizmax)})
local bbb=NumberSequence.new({NumberSequenceKeypoint.new(0, tramin),NumberSequenceKeypoint.new(1, tramax)})
local parti=create("ParticleEmitter"){
Color=ColorSequence.new(BrickColor.new(color).Color),
LightEmission=lemi,
LightInfluence=linf,
Texture="rbxassetid://"..id,
Transparency=bbb,
Size=aaa,
ZOffset=zoff,
--Acceleration=Vector3.new(0, 2, 0),
LockedToPart=lock,
EmissionDirection=direct,
Lifetime=NumberRange.new(lifemin,lifemax),
Rate=12000,
Rotation=NumberRange.new(-360, 360),
RotSpeed=NumberRange.new(-rotmin, rotmax),
Speed=NumberRange.new(speed),
VelocitySpread=velocity,
Enabled=true,
Parent=par
}
if timelimit~=nil then
coroutine.resume(coroutine.create(function(p)
swait(timelimit)
parti.Enabled=false
end),parti)
game:GetService("Debris"):AddItem(parti,10)
end
return parti
end

mh=Instance.new("Model",workspace)
mh.Name="Sh"

ref=parts2(mh,"ha",Vector3.new(.2,.2,.2),"Dark green",Enum.Material.SmoothPlastic,0,1)
ref.Anchored=true
ref.CFrame=Rooot.CFrame*CFrame.new(0,0,-15)
local hit=nil
local pos
repeat
swait()
ref.CFrame=Rooot.CFrame*CFrame.new(0,0,-15)
hit,pos=rayCast(ref.Position,-ref.CFrame.upVector,300,chr)
until hit~=nil

if hit~=nil then
ref.CFrame=CFrame.new(pos)
Ground=parts2(mh,"Ground",Vector3.new(16, 0.300000001, 16),"Dark green",Enum.Material.SmoothPlastic,0,0)
--Ground.CFrame=Ground.CFrame*CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Ground.CFrame=ref.CFrame*CFrame.Angles(0,math.rad(math.random(-360,360)),0)
Ground.BrickColor=hit.BrickColor
Ground.Material=hit.Material
Ground.BackSurface=hit.BackSurface
Ground.BottomSurface=hit.BottomSurface
Ground.FrontSurface=hit.FrontSurface
Ground.LeftSurface=hit.LeftSurface
Ground.RightSurface=hit.RightSurface
Ground.TopSurface=hit.TopSurface
Part=parts2(mh,"Part",Vector3.new(1.00000095, 4.19999838, 1.19999981),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0, 2.05000019, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
BM=create("BlockMesh"){
Parent=Part,
Scale=Vector3.new(.99,.99,.99)
}
Part=parts2(mh,"Part",Vector3.new(2.40000081, 0.99999845, 2.59999943),"Medium stone grey",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.0598062277, 4.10000038, 9.53674316e-07, 0.500000238, 0.866025388, 0, -0.866025388, 0.500000238, 0, 0, 0, 1)
BM=create("BlockMesh"){
Parent=Part,
Scale=Vector3.new(.99,.99,.99)
}
Part=parts2(mh,"Part",Vector3.new(0.100000001, 4.19999838, 0.0999996886),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.450000763, 2.05000019, -0.550002098, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 4.19999838, 0.0999996886),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.450000763, 2.05000019, 0.550002098, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 4.19999838, 0.0999996886),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.449998379, 2.05000019, 0.550002098, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 4.19999838, 0.0999996886),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.449998379, 2.05000019, -0.550002098, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 0.0999981984, 2.60000014),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.125482798, 5.3209281, 2.86102295e-06, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(1.00000012, 0.0999981984, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.515195489, 5.09592962, 1.25000381, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 0.0999981984, 2.60000014),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.904906034, 4.87092781, 2.86102295e-06, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(1.00000012, 0.0999981984, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.515195489, 5.09592962, -1.24999428, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 0.0999981984, 2.60000014),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(1.02451789, 3.32906961, 2.86102295e-06, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 0.0999981984, 2.60000014),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.245094895, 2.87906957, 2.86102295e-06, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(1.00000012, 0.0999981984, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.634804964, 3.10407043, 1.25000381, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(1.00000012, 0.0999981984, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.634804964, 3.10407043, -1.24999428, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 2.39999819, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.329907417, 3.87499976, 1.25000381, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 2.39999819, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.449514985, 4.32499981, 1.25000381, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 2.39999819, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(-0.329907417, 3.87499976, -1.24999428, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Part=parts2(mh,"Part",Vector3.new(0.100000001, 2.39999819, 0.100000001),"Really black",Enum.Material.SmoothPlastic,0,0)
Part.CFrame=Ground.CFrame*CFrame.new(0.449514985, 4.32499981, -1.24999428, 0.866025329, -0.500000119, 0, 0.500000119, 0.866025329, 0, 0, 0, 1)
Button=parts2(mh,"Button",Vector3.new(1, 0.400000006, 1),"Persimmon",Enum.Material.SmoothPlastic,0,0)
Button.CFrame=Ground.CFrame*CFrame.new(0.579421639, 4.39999866, 9.53674316e-07, 0.500000238, 0.866025388, 0, -0.866025388, 0.500000238, 0, 0, 0, 1)
CM=create("CylinderMesh"){
Parent=Button,
}
SG=create("SurfaceGui"){
Parent=Button,
CanvasSize=Vector2.new(220,220),
LightInfluence=0,
Face="Top"
}
TL=create("TextLabel"){
Parent=SG,
AnchorPoint=Vector2.new(.5,.5),
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(.5,0,.5,0),
BackgroundTransparency=1,
Text="BooP",
Font="SourceSansBold",
TextScaled=true,
TextWrapped=true
}

CD=create("ClickDetector"){
Parent=Button,
MaxActivationDistance=5
}
local doing=false
CD.MouseClick:connect(function(plr)
if doing then return end
doing=true
print(plr.Name)
local orig=Button.CFrame
pssounds(Button,"190411970",1.3,1,1.7,3)

for i=1,15 do
swait()
Button.CFrame=Button.CFrame:Lerp(orig*CFrame.new(0,-.22,0),.2)
end
coroutine.resume(coroutine.create(function()
swait(20)
local chr=plr.Character
if not chr:findFirstChild("hfyuhhhh") then
local turning=create("ObjectValue"){
Parent=chr,
Name="hfyuhhhh",}
game:GetService("Debris"):AddItem(turning,4)
if not chr:findFirstChild("furrified") or chr:findFirstChild("furrified").Value~="amidoneyet" then
local heed=chr:findFirstChild("Head")
if heed then
sounds(heed,"1274525620",2,1)
swait(120)
sounds(heed,"1042362525",1.5,1)
local isfurrifiedornot=create("StringValue"){
Parent=chr,
Name="furrified",
Value="amidoneyet"
}

local shirt
local pants
local bcolor
if chr:findFirstChildOfClass("Shirt") then
shirt=chr:findFirstChildOfClass("Shirt")
else
shirt=create("Shirt"){
Parent=chr}
end

if chr:findFirstChildOfClass("Pants") then
pants=chr:findFirstChildOfClass("Pants")
else
pants=create("Pants"){
Parent=chr}
end

if chr:findFirstChildOfClass("BodyColors") then
bcolor=chr:findFirstChildOfClass("BodyColors")
end

if chr:findFirstChildOfClass("ShirtGraphic") then
chr:findFirstChildOfClass("ShirtGraphic"):Remove()
end

for _,c in pairs(chr:children()) do
local ha1=string.match(c.Name,"Ear")
local ha2=string.match(c.Name,"Tail")
if ha1 then
c:Remove()
end
if ha2 then
c:Remove()
end
end

local m=Instance.new("Model",chr)
m.Name="enjoy"

local bc={}
local asset="rbxassetid://"
local randomf=math.random(1,5)
if randomf==1 then
shirt.ShirtTemplate=asset.."22600739"
pants.PantsTemplate=asset.."22601914"
bc={1,1,1}
local Ear=parts(m,"Ear",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local EarWeld=welds(Ear,"EarWeld",heed,Ear,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-07, -0.900000572, -0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1))
local EarMesh=meshs(Ear,"Mesh",Vector3.new(0.5, 0.5, 0.5),Enum.MeshType.FileMesh,"361948302")
EarMesh.TextureId="rbxassetid://32447680"


elseif randomf==2 then
shirt.ShirtTemplate=asset.."85870930"
pants.PantsTemplate=asset.."85856446"
bc={218/255,154/255,90/255}
local Ear=parts(m,"Ear",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local EarWeld=welds(Ear,"EarWeld",heed,Ear,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-07, -0.900000572, -0.100000381, 1, 0, 0, 0, 1, 0, 0, 0, 1))
local EarMesh=meshs(Ear,"Mesh",Vector3.new(0.5, 0.5, 0.5),Enum.MeshType.FileMesh,"361948302")
EarMesh.TextureId="rbxassetid://382112958"

elseif randomf==3 then
shirt.ShirtTemplate=asset.."115316811"
pants.PantsTemplate=asset.."115316833"
bc={253/255,229/255,154/255}
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.124053955, -0.566539764, -0.394683838, 0.000740000105, -0.706898034, 0.707315087, 0.96593821, -0.182528064, -0.183431029, 0.258771867, 0.683358371, 0.68268472))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.850118637, -0.531934738, -0.580001831, -1.89999919e-05, -0.706765771, 0.707447767, 0.965938449, -0.183080822, -0.18287836, 0.258772254, 0.683347404, 0.682695627))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.82464981, -0.531873703, -0.580329895, -1.89999919e-05, -0.706765771, 0.707447767, 0.965938449, -0.183080822, -0.18287836, 0.258772254, 0.683347404, 0.682695627))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.281705856, 0.557655334, -0.615679741, -2.0000005e-05, -0.706740201, 0.707473159, 0.965924859, 0.183096692, 0.182934299, -0.258822978, 0.683369458, 0.682654202))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.41859055, -0.531812668, -0.580516815, -1.89999919e-05, -0.706765771, 0.707447767, 0.965938449, -0.183080822, -0.18287836, 0.258772254, 0.683347404, 0.682695627))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.282100677, -0.555849075, -0.615329742, 0.000740000105, -0.706898034, 0.707315087, 0.96593821, -0.182528064, -0.183431029, 0.258771867, 0.683358371, 0.68268472))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.4105072, 0.532569885, -0.580607414, -2.0000005e-05, -0.706740201, 0.707473159, 0.965924859, 0.183096692, 0.182934299, -0.258822978, 0.683369458, 0.682654202))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.81210357, 0.81210345),"Bright red",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000350952148, -1.27872849, -0.189393997, -1, 0, -8.49999997e-05, -8.21134818e-05, -0.258388996, 0.966040969, -2.19630638e-05, 0.966040969, 0.258388996))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(0.406051725, 2.43631077, 0.812103391),Enum.MeshType.FileMesh,"9944765")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.81210357, 0.81210345),"Bright red",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000442504883, -0.341218948, 0.528078079, 1, 0, 5.19999994e-05, -5.02208895e-05, 0.259339094, 0.965786338, -1.34856336e-05, -0.965786457, 0.259339094))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(0.406051725, 2.43631077, 0.812103391),Enum.MeshType.FileMesh,"9944765")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.842046738, 0.532718658, -0.580115318, -2.0000005e-05, -0.706740201, 0.707473159, 0.965924859, 0.183096692, 0.182934299, -0.258822978, 0.683369458, 0.682654202))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.81656647, 0.532611847, -0.580400467, -2.0000005e-05, -0.706740201, 0.707473159, 0.965924859, 0.183096692, 0.182934299, -0.258822978, 0.683369458, 0.682654202))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.32484144, 0.81210345),"Navy blue",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.124465942, 0.567241669, -0.394832611, -2.0000005e-05, -0.706740201, 0.707473159, 0.965924859, 0.183096692, 0.182934299, -0.258822978, 0.683369458, 0.682654202))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.81210357, 0.81210345),"Bright red",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000328063965, -1.17512703, -0.88457489, -1, 3.09999996e-05, -9.2000002e-05, -8.69912328e-05, -0.70682621, 0.707387209, -4.30990112e-05, 0.707387209, 0.70682621))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(0.406051725, 2.43631077, 0.812103391),Enum.MeshType.FileMesh,"9944765")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.81210357, 0.81210345),"Bright red",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, -0.64663744, -0.323652267, 1, -5.50000004e-05, 4.09999993e-05, 4.25408143e-05, 0.966053009, 0.258343995, -5.38170934e-05, -0.258343995, 0.966053009))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(0.406051725, 2.43631077, 0.812103391),Enum.MeshType.FileMesh,"9944765")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 0.81210357, 0.81210345),"Bright red",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000423431396, -0.368656158, -0.307619095, 1, -2.59999997e-05, 7.59999966e-05, 2.60354882e-05, 0.999999881, -0.000466999947, -7.59878458e-05, 0.000467001926, 0.999999881))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(0.406051725, 2.43631077, 0.812103391),Enum.MeshType.FileMesh,"9944765")
local Hair=parts(m,"Hair",Vector3.new(0.81210357, 2.92357278, 1.6242069),"Bright red",Enum.Material.SmoothPlastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000377655029, -0.444030762, -0.396792412, -1, 3.09999996e-05, -9.2000002e-05, -8.69912328e-05, -0.70682621, 0.707387209, -4.30990112e-05, 0.707387209, 0.70682621))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(1.5, 1, 1),Enum.MeshType.Sphere,"")

elseif randomf==4 then
shirt.ShirtTemplate=asset.."1439583280"
pants.PantsTemplate=asset.."1439568311"
bc={99/255,95/255,98/255}
local Hair=parts(m,"Hair",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local HairWeld=welds(Hair,"HairWeld",heed,Hair,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-06, -0.661822319, 0.36447978, 1, -2.76821957e-23, -1.62062088e-06, 4.19447446e-07, 0.965925872, 0.258818984, 1.56539966e-06, -0.258818984, 0.965925872))
local HairMesh=meshs(Hair,"Mesh",Vector3.new(0.00400000019, 0.00400000019, 0.00400000019),Enum.MeshType.FileMesh,"1090451665")
HairMesh.TextureId="rbxassetid://1089187398"
local Ear=parts(m,"Ear",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local EarWeld=welds(Ear,"EarWeld",heed,Ear,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-06, -0.616568089, -0.0486409664, 1, -2.76821957e-23, -1.62062088e-06, 2.76820442e-23, 1, -9.3880563e-23, 1.62062088e-06, 9.38805188e-23, 1))
local EarMesh=meshs(Ear,"Mesh",Vector3.new(0.699999988, 0.699999988, 0.699999988),Enum.MeshType.FileMesh,"2038789971")
EarMesh.TextureId="rbxassetid://160671771"
local Ear=parts(m,"Ear",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Black",Enum.Material.Plastic,0,0)
local EarWeld=welds(Ear,"EarWeld",heed,Ear,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-06, -0.616568089, 0.0513590574, 1, -2.76821957e-23, -1.62062088e-06, 2.76820442e-23, 1, -9.3880563e-23, 1.62062088e-06, 9.38805188e-23, 1))
local EarMesh=meshs(Ear,"Mesh",Vector3.new(0.550000012, 0.400000006, 0.600000024),Enum.MeshType.FileMesh,"2038789971")

elseif randomf==5 then
shirt.ShirtTemplate=asset.."170964235"
pants.PantsTemplate=asset.."170962374"
bc={248/255,220/255,116/255}
local EarFur=parts(m,"EarFur",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Br. reddish orange",Enum.Material.Plastic,0,0)
local EarFurWeld=welds(EarFur,"EarFurWeld",heed,EarFur,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-06, -0.830033302, 0.049999088, 1, 0, 0, 0, 1, 0, 0, 0, 1))
local EarFurMesh=meshs(EarFur,"Mesh",Vector3.new(0.0450000018, 0.0399999991, 0.0299999993),Enum.MeshType.FileMesh,"1902315254")
local Ear=parts(m,"Ear",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local EarWeld=welds(Ear,"EarWeld",heed,Ear,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-07, -0.899971485, -0.0499875918, 1, 0, 0, 0, 1, 0, 0, 0, 1))
local EarMesh=meshs(Ear,"Mesh",Vector3.new(0.600000024, 0.600000024, 1),Enum.MeshType.FileMesh,"361948302")
EarMesh.TextureId="rbxassetid://382107464"

end

bcolor.HeadColor3=Color3.new(bc[1],bc[2],bc[3])
bcolor.LeftArmColor3=Color3.new(bc[1],bc[2],bc[3])
bcolor.RightArmColor3=Color3.new(bc[1],bc[2],bc[3])
bcolor.LeftLegColor3=Color3.new(bc[1],bc[2],bc[3])
bcolor.RightLegColor3=Color3.new(bc[1],bc[2],bc[3])
bcolor.TorsoColor3=Color3.new(bc[1],bc[2],bc[3])


local tor1=chr:findFirstChild("Torso")
local tor2=chr:findFirstChild("UpperTorso")
local tor3=chr:findFirstChild("LowerTorso")
if tor1 then
local p1=particles(tor1,1.8,"Black","390022172",.3,0,"Top",13,.1,0,1,1,1.2,-55,55,26,10000,false,15)
p1.Acceleration=Vector3.new(0, 15, 0)
p1.Color=ColorSequence.new(Color3.new(bc[1],bc[2],bc[3]))
p1.Speed=NumberRange.new(-26,26)
local p2=particles(tor1,1.5,"Black","390022172",.3,0,"Top",13,.1,0,1,1,1.2,-55,55,26,10000,false,15)
p2.Acceleration=Vector3.new(0, 15, 0)
p2.Color=ColorSequence.new(Color3.new(bc[1],bc[2],bc[3]))
p2.Speed=NumberRange.new(-26,26)
local p3=particles(tor1,1.2,"Black","390022172",.3,0,"Top",13,.1,0,1,1,1.2,-55,55,26,10000,false,15)
p3.Acceleration=Vector3.new(0, 15, 0)
p3.Color=ColorSequence.new(Color3.new(bc[1],bc[2],bc[3]))
p3.Speed=NumberRange.new(-26,26)
local p4=particles(tor1,.9,"Black","390022172",.3,0,"Top",13,.1,0,1,1,1.2,-55,55,26,10000,false,15)
p4.Acceleration=Vector3.new(0, 15, 0)
p4.Color=ColorSequence.new(Color3.new(bc[1],bc[2],bc[3]))
p4.Speed=NumberRange.new(-26,26)
if randomf==1 then
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100032806, 1.5999949, -1.40357666, 1, 0, 0, 0, 1, 0, 0, 0, 1))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1.29999995, 1.29999995, 1.29999995),Enum.MeshType.FileMesh,"791316026")
TailMesh.TextureId="rbxassetid://32447680"

elseif randomf==2 then
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164413452, 0.615199089, -1.21084404, 1, 0, 0, 0, 0.866025388, 0.500000238, -0, -0.500000238, 0.866025388))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.0199900009, 0.0199900009, 0.0199900009),Enum.MeshType.FileMesh,"724804409")
TailMesh.TextureId="rbxassetid://724804426"

local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164413452, 0.615197182, -2.17293358, 1, 0, 0, 0, 0.866025388, 0.500000238, -0, -0.500000238, 0.866025388))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.0221500006, 0.0215000007, 0.0215000007),Enum.MeshType.FileMesh,"724806354")
TailMesh.TextureId="rbxassetid://724806370"

local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0317649841, 0.677487373, -3.07471275, 1, 0, 0, 0, 0.866025388, 0.500000238, -0, -0.500000238, 0.866025388))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.0160000008, 0.0160000008, 0.0160000008),Enum.MeshType.FileMesh,"724808307")
TailMesh.TextureId="rbxassetid://724808317"

elseif randomf==3 then
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62599683, -2.9747963, -0.0741539001, -5.19999994e-05, -0.998480976, -0.0550980009, -3.30000003e-05, -0.0550980009, 0.998480976, -1, 5.37392407e-05, -3.00847751e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11830735, 1.11830735, 1.11830723),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.408844948, -3.56463909, 0.0168571472, -2.90000116e-05, -0.707438231, -0.706775248, 2.90000116e-05, -0.706775248, 0.707438231, -1, 1.92257055e-08, 4.10122047e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.30469191, 1.30469191, 1.30469179),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.371618271, -3.63825703, 0.0168609619, -2.90000116e-05, -0.707438231, -0.706775248, 2.90000116e-05, -0.706775248, 0.707438231, -1, 1.92257055e-08, 4.10122047e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11830735, 1.11830735, 1.11830723),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0295295715, -0.108186722, 2.5878067, -1, 1.29999999e-05, -5.50000004e-05, -2.96785911e-05, 0.707399249, 0.706814229, 4.80955459e-05, 0.706814229, -0.707399249))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0722866058, 1.70418358, -0.0296897888, -2.00000068e-05, 0.70742023, 0.706793249, 0, 0.706793249, -0.70742023, -1, -1.41484097e-05, -1.41358678e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11830735, 1.11830735, 1.11830723),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0299568176, 0.108133316, 2.58780289, 1, 7.9999998e-05, -8.2999999e-05, -2.07128255e-06, -0.707413733, -0.706799746, -0.000115259318, 0.706799746, -0.707413733))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0297164917, -0.108057022, -2.58780861, 1, 0, -3.30000003e-05, 2.3323717e-05, 0.707434237, 0.706779242, 2.3345332e-05, -0.706779242, 0.707434237))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.55275297, -2.19260597, 0.000579833984, 3.50000046e-05, -0.989940107, 0.141487017, -6.20000064e-05, 0.141487017, 0.989940107, -1, -4.34201065e-05, -5.64242473e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11862481, 1.11862481, 0.771764338),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0295333862, 0.10787487, -2.58781815, -1, 7.00000019e-05, 0, -4.95238601e-05, -0.707483649, -0.70672965, -4.94710803e-05, -0.70672965, 0.707483649))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")

elseif randomf==4 then
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1920929e-07, 0.46000886, -1.44207358, 1, 0, 0, 0, 0.965926647, 0.258815914, 0, -0.258815914, 0.965926647))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.00860000029, 0.00860000029, 0.00860000029),Enum.MeshType.FileMesh,"1090461034")
TailMesh.TextureId="rbxassetid://160671771"

elseif randomf==5 then
local Tail=parts(m,"Tail",Vector3.new(1.54882455, 2.94931364, 1.82564664),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0942802429, -3.24203277, -1.82473111, 0.999233246, -0.0207640063, -0.0331940092, 0.0261324625, -0.277635038, 0.960331142, -0.029156141, -0.960462213, -0.276879549))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.926802099, 1.15850294, 0.926802874),Enum.MeshType.FileMesh,"1527559")
local Tail=parts(m,"Tail",Vector3.new(2.15046096, 2.1504612, 2.53481174),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0643630028, -2.65595365, 0.711223841, 0.999233365, -0.00478200195, -0.038857013, 0.0145906098, -0.875523686, 0.4829548, -0.0363297202, -0.483151466, -0.874782681))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1.06126332, 1.32657969, 1.06126416),Enum.MeshType.FileMesh,"1527559")
local Tail=parts(m,"Tail",Vector3.new(2.06805229, 2.06805229, 2.06805229),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0543036461, 1.14408493, -1.51761961, 0.999233127, -0.00479500042, -0.0388620049, 0.00889959093, 0.994310737, 0.106145993, 0.0381319374, -0.106410436, 0.993590832))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1,1,1),Enum.MeshType.Sphere,"")
local Tail=parts(m,"Tail",Vector3.new(1.79162455, 1.79162455, 1.79162455),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0542817116, 0.913724184, -1.01084352, 0.999233127, -0.00479500042, -0.0388620049, 0.00889959093, 0.994310737, 0.106145993, 0.0381319374, -0.106410436, 0.993590832))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1,1,1),Enum.MeshType.Sphere,"")
local Tail=parts(m,"Tail",Vector3.new(1.68042839, 5.04128504, 1.6804297),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor1,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.63389683, -3.31336451, -0.0124211311, 0.0121870022, 0.970601141, -0.240385026, 0.0372119956, 0.239796117, 0.97010982, 0.999233127, -0.0207679346, -0.0331956074))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.746856809, 0.746856987, 0.746857703),Enum.MeshType.FileMesh,"16215937")

end
elseif tor2 and tor3 then
if randomf==1 then
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999927521, 0.799994469, -1.49525185, 1, 4.92077027e-29, 0, 4.92077027e-29, 1, 0, 0, 0, 1))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1.29999995, 1.29999995, 1.29999995),Enum.MeshType.FileMesh,"791316026")	
TailMesh.TextureId="rbxassetid://32447680"

elseif randomf==2 then
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0114212036, 0.076540947, -0.543827057, 1, 4.92077027e-29, 0, 4.26151211e-29, 0.866025388, 0.500000238, -2.46038634e-29, -0.500000238, 0.866025388))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.0199900009, 0.0199900009, 0.0199900009),Enum.MeshType.FileMesh,"724804409")
TailMesh.TextureId="rbxassetid://724804426"
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0114212036, 0.0765390396, -1.5059166, 1, 4.92077027e-29, 0, 4.26151211e-29, 0.866025388, 0.500000238, -2.46038634e-29, -0.500000238, 0.866025388))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.0221500006, 0.0215000007, 0.0215000007),Enum.MeshType.FileMesh,"724806354")
TailMesh.TextureId="rbxassetid://724806370"
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.036781311, 0.138829231, -2.40769577, 1, 4.92077027e-29, 0, 4.26151211e-29, 0.866025388, 0.500000238, -2.46038634e-29, -0.500000238, 0.866025388))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.0160000008, 0.0160000008, 0.0160000008),Enum.MeshType.FileMesh,"724808307")
TailMesh.TextureId="rbxassetid://724808317"
	
elseif randomf==3 then
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.843925238, -2.62317848, -0.0257034302, -5.19999994e-05, -0.998480976, -0.0550980009, -3.30000003e-05, -0.0550980009, 0.998480976, -1, 5.37392407e-05, -3.00847751e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11830735, 1.11830735, 1.11830723),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.757294655, -2.78115463, 0.065372467, -2.90000116e-05, -0.707438231, -0.706775248, 2.90000116e-05, -0.706775248, 0.707438231, -1, 1.92257055e-08, 4.10122047e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.30469191, 1.30469191, 1.30469179),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.720067978, -2.85477448, 0.0653762817, -2.90000116e-05, -0.707438231, -0.706775248, 2.90000116e-05, -0.706775248, 0.707438231, -1, 1.92257055e-08, 4.10122047e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11830735, 1.11830735, 1.11830723),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0189476013, -0.456589699, 1.8042984, -1, 1.29999999e-05, -5.50000004e-05, -2.96785911e-05, 0.707399249, 0.706814229, 4.80955459e-05, 0.706814229, -0.707399249))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.276143074, 0.920688629, 0.0188236237, -2.00000068e-05, 0.70742023, 0.706793249, 3.47796707e-29, 0.706793249, -0.70742023, -1, -1.41484097e-05, -1.41358678e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11830735, 1.11830735, 1.11830723),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0186405182, 0.456553459, 1.80430984, 1, 7.9999998e-05, -8.2999999e-05, -2.07128255e-06, -0.707413733, -0.706799746, -0.000115259318, 0.706799746, -0.707413733))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0187950134, -0.456501961, -1.80432129, 1, 4.92077027e-29, -3.30000003e-05, 2.3323717e-05, 0.707434237, 0.706779242, 2.3345332e-05, -0.706779242, 0.707434237))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Cyan",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.716974258, -2.00093269, 0.0491027832, 3.50000046e-05, -0.989940107, 0.141487017, -6.20000064e-05, 0.141487017, 0.989940107, -1, -4.34201065e-05, -5.64242473e-05))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.11862481, 1.11862481, 0.771764338),Enum.MeshType.FileMesh,"45914920")
local Part=parts(m,"Part",Vector3.new(0.931922793, 0.931922793, 0.931922674),"Bright blue",Enum.Material.SmoothPlastic,0,0)
local PartWeld=welds(Part,"PartWeld",tor3,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0189151764, 0.456376076, -1.80435181, -1, 7.00000019e-05, 0, -4.95238601e-05, -0.707483649, -0.70672965, -4.94710803e-05, -0.70672965, 0.707483649))
local PartMesh=meshs(Part,"Mesh",Vector3.new(1.86384571, 1.86384571, 0.931922734),Enum.MeshType.FileMesh,"9944765")

elseif randomf==4 then
local Tail=parts(m,"Tail",Vector3.new(0.200000003, 0.200000003, 0.200000003),"Medium stone grey",Enum.Material.Plastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-06, -0.425635099, -1.28332019, 1, -2.76821957e-23, -1.62062088e-06, 4.19442472e-07, 0.965926647, 0.258815914, 1.56540091e-06, -0.258815914, 0.965926647))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.00860000029, 0.00860000029, 0.00860000029),Enum.MeshType.FileMesh,"1090461034")
TailMesh.TextureId="rbxassetid://160671771"

elseif randomf==5 then
local Tail=parts(m,"Tail",Vector3.new(1.54882455, 2.94931364, 1.82564664),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0017407909, -3.09211588, -0.936053276, 0.999233186, -0.0207640063, -0.0331956297, 0.0261340197, -0.277635038, 0.960331082, -0.0291565899, -0.960462213, -0.276879489))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.926802099, 1.15850294, 0.926802874),Enum.MeshType.FileMesh,"1527559")
local Tail=parts(m,"Tail",Vector3.new(2.15046096, 2.1504612, 2.53481174),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0144351125, -1.92029297, 1.23408258, 0.999233305, -0.00478200195, -0.0388586335, 0.0145913921, -0.875523686, 0.48295477, -0.0363311395, -0.483151466, -0.874782622))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1.06126332, 1.32657969, 1.06126416),Enum.MeshType.FileMesh,"1527559")
local Tail=parts(m,"Tail",Vector3.new(2.06805229, 2.06805229, 2.06805229),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0245064758, 0.241568685, -1.52395749, 0.999233067, -0.00479500042, -0.0388636254, 0.00889976323, 0.994310737, 0.106145978, 0.0381335467, -0.106410436, 0.993590772))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1,1,1),Enum.MeshType.Sphere,"")
local Tail=parts(m,"Tail",Vector3.new(1.79162455, 1.79162455, 1.79162455),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0245280415, 0.0112080574, -1.01718163, 0.999233067, -0.00479500042, -0.0388636254, 0.00889976323, 0.994310737, 0.106145978, 0.0381335467, -0.106410436, 0.993590772))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(1,1,1),Enum.MeshType.Sphere,"")
local Tail=parts(m,"Tail",Vector3.new(1.68042839, 5.04128504, 1.6804297),"Daisy orange",Enum.Material.SmoothPlastic,0,0)
local TailWeld=welds(Tail,"TailWeld",tor3,Tail,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.78932238, -3.62787461, 0.0801220536, 0.0121866129, 0.970601141, -0.240385041, 0.0372135676, 0.239796117, 0.970109761, 0.999233067, -0.0207679346, -0.0331972279))
local TailMesh=meshs(Tail,"Mesh",Vector3.new(0.746856809, 0.746856987, 0.746857703),Enum.MeshType.FileMesh,"16215937")

end
end

end

end
end
end))
for i=1,14 do
swait()
Button.CFrame=Button.CFrame:Lerp(orig,.32)
end
doing=false
end)

swait()
script.Parent=Button
end
