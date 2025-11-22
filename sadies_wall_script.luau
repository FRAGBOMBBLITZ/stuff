-- all credit to sadie / sadeecake for this


local script = game:GetObjects("rbxassetid://12159968777")[1]
--script.Parent = workspace

--sadeecake hi
--I'm tired of everything
RegisterPart={
	H,
	P,
	N,
	DistScale,
	BloodScale,
	Humanoid,
	LocalisedCFrame
}
DamageStats={
	MinDamage,
	MaxDamage,
	MinKnockback,
	MaxKnockback
}
--

local function require(modle)
if modle ~= nil and typeof(modle) == "Instance" and modle:IsA("ModuleScript") then
local result = nil
getgenv().SCRIMPTLOACTION = modle
local WELOVE = [[local script = getgenv().SCRIMPTLOACTION getgenv().SCRIMPTLOACTION = nil ]]..modle.Source
pcall(function()
result = loadstring(WELOVE)()
end)
getgenv().SCRIMPTLOACTION = nil
--print(tostring(modle).." "..tostring(result))
if result ~= nil then
return result
end
end
end

local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
local Instance=setmetatable({new = function(type,args) local instance = Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent = args elseif string.lower(typeof(args)) == "table" then for i,v in pairs(args) do pcall(function() instance[i] = v end) end end end return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})
local Player,UIS,Mouse,CrossClient=game:GetService("Players").LocalPlayer,nil,nil,nil
local Client=script.Data.Scripts.SClient
local Rem = {}
local InfoRef = {}
do
	local function NewEv(MultipleFuncs)
		local Table={FE=true}
		if MultipleFuncs then
			Table.Funcs={}
		end
		Table.Connect=function(self,Name,Func) -- t:Connect(nil,...) nil - skip indexing and keep it as a rewritable function
			local T={}
			local TableFuncs=Name~=nil
			if not TableFuncs then
				self.Function=Func
			else
				self.Funcs[Name]=Func
			end
			T.Disconnect=function(self)
				if not TableFuncs then
					self.Function=nil
				else
					self.Funcs[Name]=nil
				end
			end
			T.disconnect=T.Disconnect
			return T
		end
		Table.connect=Table.Connect
		return Table
	end
	CrossClient={Events=NewEv(true),Functions=NewEv(true)}
	UIS={InputBegan=NewEv(),InputEnded=NewEv()}
	Mouse={Hit=CFrame.new(),Target=CFrame.new(),Origin=CFrame.new(),TargetSurface=Vector3.new()}
	local function FireEUIS(self,Name,...)
		local F=UIS[Name]
		if F and F.FE then
			if F.Function then
				F.Function(...)
			elseif F.Funcs then
				for i,v in pairs(F.Funcs) do
					v(...)
				end
			end
		end
	end
	CrossClient.AddFunction=function(self,Type,Name,Function)
		if not self then return end
		if type(Name)=="function" then Function=Name Name=nil end
		assert(CrossClient[Type.."s"],"unsupported event type")
		if Name then
			CrossClient[Type.."s"][Name]=Function
		else
			table.insert(CrossClient[Type.."s"],Function)
		end
	end
	CrossClient.RemoveFunction=function(self,Type,Name)
		if not self then return end
		assert(CrossClient[Type.."s"],"unsupported event type")
		assert(Name,"no event name given")
		CrossClient[Type.."s"][Name]=nil
	end
	CrossClient.FireClient=function(self,Type,Name,...)
		if not self then return end
		assert(CrossClient[Type.."s"],"unsupported event type")
		assert(Name,"no event name given")
		if Type=="Event" then
			return Rem.FireClient(Player,Name,...)
		elseif Type=="Function" then
			return InfoRef.InvokeClient(Player,Name,...)
		end
	end
	UIS.FireEv=FireEUIS
	InfoRef.InvokeServer = function(PLR,...)
		if PLR~=Player then return end
		local Args={...}
		if Args[1]=="R" then
			return CrossClient.Functions[Args[2]](Args[3])
		end
	end
	Rem.FireServer = function(PLR,IO,L,...)
		if PLR~=Player then return end
		local Args={...}
		if #Args>0 then
			if Args[1]=="S" then
				local T={} for i,v in pairs({...}) do if i>2 then table.insert(T,v) end end
				return CrossClient.Events[Args[2]](unpack(#T>0 and T or {1}))
			end
		end
		if IO.Mouse then
			Mouse.Hit=IO.Hit
			Mouse.Target=IO.Target
			Mouse.Origin=IO.Origin
			Mouse.TargetSurface=IO.TargetSurface
		else
			if IO.UserInputState==Enum.UserInputState.Begin then
				UIS:FireEv("InputBegan",IO,L)
			else
				UIS:FireEv("InputEnded",IO,L)
			end
		end
	end
end
--}{		Default Functions	   }{--
local ins=Instance.new
local v3=Vector3.new
local v2=Vector2.new
local cf=CFrame.new
local angles=CFrame.Angles
local ud=UDim.new
local ud2=UDim2.new
local c3=Color3.new
local rgb=Color3.fromRGB
local hsv=Color3.fromHSV
local bc=BrickColor.new
local bcRandom=BrickColor.Random
local palette=BrickColor.palette
local cs=ColorSequence.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local nr=NumberRange.new
local random=math.random
local rad=math.rad
local sin=math.sin
local cos=math.cos
local tan=math.tan
local cotan=math.CosSin
local floor=math.floor
local pi=math.pi
local abs=math.abs
local sqrt=math.sqrt
local clamp=math.clamp
local ray=Ray.new
local huge=math.huge
--}{		Useful Functions	   }{-- baah
function Tween(Object,Args,Info)
	if Object and Args then
		Info = Info or TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
		if typeof(Info) == "table" then Info = TweenInfo.new(unpack(Info)) end
		game:GetService("TweenService"):Create(Object,Info,Args):Play()
	end
end
function Sound(Id,Volume,Pitch,Parent,MaxDistance,EmitterSize,Looped)
	local S=ins("Sound",{Volume=Volume or 1;Pitch=Pitch or 1;MaxDistance=MaxDistance or 500;EmitterSize=EmitterSize or 5;Looped=Looped or false;SoundId="rbxassetid://"..Id,Parent=Parent})
	S:Play()
	coroutine.wrap(function()
		if S.Looped then return end
		if S.IsLoaded then
			Instance.Remove(S,S.TimeLength/S.Pitch)
		else
			S.Loaded:Connect(function()
				Instance.Remove(S,S.TimeLength/S.Pitch)
			end)
		end
	end)()
	return S
end
function Raycast(Origin,Direction,Blacklist,MaxDistance,IgnoreWater)
	return workspace:FindPartOnRayWithIgnoreList(ray(Origin,Direction.Unit*MaxDistance),Blacklist or {},false,IgnoreWater)
end
function Lerp(a,b,t)
	return a+(b-a)*t
end
--// Character indexing
local Char = game:GetService("Players").LocalPlayer.Character
local char = Char
local realchar = char
local Hum,hum=Char:FindFirstChildOfClass("Humanoid"),Char:FindFirstChildOfClass("Humanoid")
local hrp,HRP=Char.HumanoidRootPart,Char.HumanoidRootPart
local h,t,ra,la,rl,ll=char.Head,char.Torso,char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"]
local nec,rutj,rs,ls,rh,lh=t.Neck,hrp.RootJoint,t["Right Shoulder"],t["Left Shoulder"],t["Right Hip"],t["Left Hip"]
local S=script.Data.Models.Wakizashi
local Hols=script.Data.Models.holster
hum.RequiresNeck=false
local Models,Modules=script.Data.Models,script.Data.Scripts.Modules
local Damage=require(Modules.Damage)
local BDrops=require(Modules.BodyDroplets)
--
local Muted=false
local OTick=tick()
local TimePos=0
local Songs={{4685112165,1,.25},{1947120512,1,.25},{5186752366,1,.25},{5616948242,1,.25},{3965441599,1,.25},{5477846129,1,.25}}
local HitSounds={4678745096,4681189157,4681189562,4681190180}
local SongPos=random(1,#Songs)
--
local Mus=Sound(Songs[SongPos][1],Songs[SongPos][3],Songs[SongPos][2],t,100,5,true)
--
print(BDrops)
BDrops.Properties.LocalGravity=v3(0,-.15,0)
BDrops.Properties.Size=.1
BDrops.AddIgnore(char)
hum.WalkSpeed=50
S.Parent=t
Hols.Parent=t
ins("NoCollisionConstraint",{Part0=t,Part1=h,Parent=t})
--
for i,v in pairs(char:GetDescendants()) do
	if v:IsA("LocalScript") and v.Name == "Animate" then
    v.Disabled = true
	end
end

for i,v in pairs(hum:GetPlayingAnimationTracks()) do
v:Stop()
end

--[[
for i,v in pairs({S,Hols}) do
	pcall(function()
		--game:GetService("PhysicsService"):SetPartCollisionGroup(v,"FakeRep")
	end)
	local BP=ins("BodyPosition",{MaxForce=v3(huge,huge,huge),P=50000,D=500,Position=v.Position,Name="BP",Parent=v})
	local BG=ins("BodyGyro",{MaxTorque=v3(huge,huge,huge),P=50000,D=500,CFrame=v.CFrame,Name="BG",Parent=v})
end
]]
--
local function NewBeamRing(CF,Size,Width,Ang,Trans,Col,SizeT,WidthT,AngT,TransT,ColT,Time,Style,Dir)
	assert(CF,"no cframe given")
	Size,Width,Ang,Trans,Col,SizeT,WidthT,AngT,TransT,ColT,Time,Style,Dir=Size or 5,Width or 1,Ang or 90,Trans or 0,Col or c3(1,1,1),SizeT or 10,WidthT or 5,AngT or 0,TransT or 1,ColT or c3(1,1,1),Time or 1.5,Style or Enum.EasingStyle.Back,Dir or Enum.EasingDirection.Out
	local P=Models.NewBeamRing:Clone()
	local TV,CV=ins("NumberValue",{Value=Trans}),ins("Color3Value",{Value=Col})
	local A1,A2,A3,A4=P.A1,P.A2,P.A3,P.A4
	local B1,B2,B3,B4=P.B1,P.B2,P.B3,P.B4
	P.CFrame=CF
	A1.Position,A2.Position,A3.Position,A4.Position=v3(0,0,Size/2),v3(0,0,-Size/2),v3(Size/2,0,0),v3(-Size/2,0,0)
	A1.Orientation,A2.Orientation,A3.Orientation,A4.Orientation=v3(Ang,0,0),v3(Ang,-180,0),v3(Ang,90,0),v3(Ang,-90,0)
	B1.Transparency,B2.Transparency,B3.Transparency,B4.Transparency=ns(Trans),ns(Trans),ns(Trans),ns(Trans)
	B1.Color,B2.Color,B3.Color,B4.Color=cs(Col),cs(Col),cs(Col),cs(Col)  --  v lazy lol
	B1.Width0,B1.Width1,B2.Width0,B2.Width1,B3.Width0,B3.Width1,B4.Width0,B4.Width1=Width*2,Width*2,Width*2,Width*2,Width*2,Width*2,Width*2,Width*2
	B1.CurveSize0,B1.CurveSize1,B2.CurveSize0,B2.CurveSize1,B3.CurveSize0,B3.CurveSize1,B4.CurveSize0,B4.CurveSize1=(Size/2)*.60000000,(Size/2)*.60000000,-(Size/2)*.60000000,-(Size/2)*.60000000,(Size/2)*.60000000,(Size/2)*.60000000,-(Size/2)*.60000000,-(Size/2)*.60000000
	P.Parent=h
	Tween(A1,{Position=v3(0,0,SizeT/2),Orientation=v3(AngT,0,0)},{Time,Style,Dir,0,false,0}) Tween(A2,{Position=v3(0,0,-SizeT/2),Orientation=v3(AngT,180,0)},{Time,Style,Dir,0,false,0}) Tween(A3,{Position=v3(SizeT/2,0,0),Orientation=v3(AngT,90,0)},{Time,Style,Dir,0,false,0}) Tween(A4,{Position=v3(-SizeT/2,0,0),Orientation=v3(AngT,-90,0)},{Time,Style,Dir,0,false,0})
	Tween(TV,{Value=TransT},{Time,Style,Dir,0,false,0}) Tween(CV,{Value=ColT},{Time,Style,Dir,0,false,0})
	Tween(B1,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=(SizeT/2)*.6,CurveSize1=(SizeT/2)*.6},{Time,Style,Dir,0,false,0}) Tween(B2,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=-(SizeT/2)*.60000000,CurveSize1=-(SizeT/2)*.60000000},{Time,Style,Dir,0,false,0}) Tween(B3,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=(SizeT/2)*.60000000,CurveSize1=(SizeT/2)*.60000000},{Time,Style,Dir,0,false,0}) Tween(B4,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=-(SizeT/2)*.60000000,CurveSize1=-(SizeT/2)*.60000000},{Time,Style,Dir,0,false,0})
	TV.Changed:Connect(function()
		B1.Transparency,B2.Transparency,B3.Transparency,B4.Transparency=ns(TV.Value),ns(TV.Value),ns(TV.Value),ns(TV.Value)
		B1.Color,B2.Color,B3.Color,B4.Color=cs(CV.Value),cs(CV.Value),cs(CV.Value),cs(CV.Value)
	end)
	if Time>0 then Instance.Remove(P,Time+.25) end
	return P
end
local function Death(char)
	local Hum=char:FindFirstChildOfClass("Humanoid")
	--[[for i,v in next,char:GetDescendants() do
		if v:IsA("BasePart") and v:CanSetNetworkOwnership() then
			v:SetNetworkOwner(Player)
		end
	end]]
	--Ragdoll:Ragdollify(char,true)
end
--Damage:SetGlobalDeathEffectFunction(Death)
--
CrossClient:AddFunction("Event","ConfirmDamage",function(Parts,DamageStats)
	local HumTable={}
	for i,v in next,Parts do
		local PartScale=1
		for i,n in next,{leg=1,arm=1,hand=.75,foot=.75,torso=1.5,head=15} do
			if string.find(string.lower(v.H.Name),i) then
				PartScale=n
				break
			end
		end
		v.BloodScale=PartScale
		if v.H.Parent and v.H.Parent:FindFirstChildWhichIsA("Humanoid") then
			local H=v.H.Parent:FindFirstChildWhichIsA("Humanoid")
			if not HumTable[H] then
				HumTable[H]=0
			end
			HumTable[H]=HumTable[H]+PartScale
		end
	end
	for i,v in next,Parts do
		local BloodScale=v.BloodScale*v.DistScale
		if v.Humanoid then
			local Scale=HumTable and HumTable[v.Humanoid] or 1
			Sound(HitSounds[random(1,#HitSounds)],.15+(Scale^.5)*.1,random(.9,1.1,100),v.H,30,5)
			local Damage=0
			local KBScale=clamp((Damage-DamageStats.MinDamage)/(DamageStats.MaxDamage-DamageStats.MinDamage),0,1)
			local KB=DamageStats.MinKnockback+(DamageStats.MaxKnockback-DamageStats.MinKnockback)*KBScale
			Instance.Remove(ins("BodyVelocity",{MaxForce=v3(1,1,1)*1e4,Velocity=-v.N*KB,Parent=v.H}),.15)
			if v.Humanoid.Health<=Damage and v.Humanoid.Health>0 then
				Death(v.H.Parent)
				local Time=random(.5,1.5,10)
				local BAtt=ins("Attachment",{Position=v.LocalisedCFrame.Position,Parent=v.H})
				for i,v in next,v.H.Parent:GetChildren() do
					if not v:IsA("BasePart") then continue end
					if string.find(v.Name,"Hand") or string.find(v.Name," Arm") then
						v:ApplyImpulse(v.CFrame.LookVector*15)
						local X=.5
						if string.find(v.Name,"Left") then X = .5 else X = -.5 end
						local Att=ins("Attachment",{Position=v3(v.Size.X*X,-v.Size.Y*.5,-v.Size.Z*.5),Parent=v})
						local AP=ins("AlignPosition",{Attachment0=Att,Attachment1=BAtt,MaxForce=5000,ReactionForceEnabled=true,Parent=Att})
						Instance.Remove(Att,Time)
					else
						if Scale<10 then continue end
						coroutine.wrap(function()
							for i=1,random(1,3) do
								task.wait(random(0,.5,100))
								v:ApplyAngularImpulse(v3(random(-15,15,10),random(-15,15,10),random(-15,15,10)))
							end
						end)()
					end
				end
				Instance.Remove(BAtt,Time)
			else
				--v.Humanoid.Health=v.Humanoid.Health-Damage
			end
		end
		coroutine.wrap(function()
			for l=1,math.random(1+BloodScale,4+BloodScale) do
				if not v.H.Parent then break end
				local hadtogroove = 1
				if l==1 then hadtogroove = random(1,3) else hadtogroove = 1 end
				for i=1,hadtogroove do
				    
					local RandV=v3(random(-.15,.15,100),random(-.15,.15,100),random(-.15,.15,100))
					local Vel=l==1 or random(0,1)==1
					local longwaydrive = nil
					local xrayvisionsee = nil
					if Vel then longwaydrive = v.LocalisedCFrame.LookVector*.5 else longwaydrive = RandV end
					if Vel then xrayvisionsee = ((v.H.CFrame*v.LocalisedCFrame).LookVector+RandV)*random(5,10,10)*(1+BloodScale*.2) else xrayvisionsee = nil end
					
					BDrops.Create({
						Target=v.H,
						At=v.LocalisedCFrame.Position+longwaydrive,
						Direction=xrayvisionsee,
						RelativeModel=v.H.Parent,
						BasicTrail=true,
						LocalBasicTrail=true,
						Properties={
							Size=.1+BloodScale*.01
						}
					})
				end
				task.wait(random(.05,.25,100))
			end
		end)()
	end
end)
--
UIS.InputBegan:Connect(nil,function(IO,L)
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
		if IO.KeyCode==Enum.KeyCode.M then
			Muted=not Muted
		elseif IO.KeyCode==Enum.KeyCode.N then
			SongPos = SongPos+1
		elseif IO.KeyCode==Enum.KeyCode.B then
			SongPos = SongPos-1
		end
		if SongPos>#Songs then SongPos=1 elseif SongPos<1 then SongPos=#Songs end
	end
end)
UIS.InputEnded:Connect(nil,function(IO,L)
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
	elseif IO.UserInputType==Enum.UserInputType.MouseButton1 then
	end
end)
local alexnightshow = nil
alexnightshow = game:GetService("RunService").Heartbeat:Connect(function(dt)
if char.Parent ~= nil then
	BDrops.Update(dt)
	if Mus and Mus.Parent~=t then Instance.Remove(Mus) Mus=Sound(Songs[SongPos][1],Songs[SongPos][3],Songs[SongPos][2],t,100,5,true) Mus.TimePosition=TimePos end
	Mus.SoundId,Mus.Pitch,Mus.Volume,Mus.Looped,Mus.Name,Mus.Playing="rbxassetid://"..Songs[SongPos][1],Songs[SongPos][2],Songs[SongPos][3],true,"VMus",not Muted
	TimePos=Mus.TimePosition
	if Mus.TimeLength-Mus.TimePosition<.5 and Mus.IsLoaded then
		TimePos=0
		Mus.TimePosition=0
		if #Songs>1 then
			local SP=SongPos
			repeat
				SongPos=random(1,#Songs)
			until SongPos~=SP
		end
	end
	if tick()-OTick>.5 then
		for i,v in pairs(char:GetDescendants()) do
			if v:IsA("BasePart") and not v.Anchored then
				pcall(function() end)
			end
		end
		OTick=tick()
	end
else
alexnightshow:Disconnect()
end
end)
wait()
local DamageStats={new=function(MinDamage,MaxDamage,MinKnockback,MaxKnockback) local D={MinDamage=MinDamage or 10,MaxDamage=MaxDamage or 20,MinKnockback=MinKnockback or 10,MaxKnockback=MaxKnockback or 15} return D end}
local Player,UIS=game:GetService("Players").LocalPlayer,game:GetService("UserInputService") local Mouse=Player:GetMouse()
--}{		Default Functions	   }{--
local ins=Instance.new
local v3=Vector3.new
local v2=Vector2.new
local cf=CFrame.new
local angles=CFrame.Angles
local ud=UDim.new
local ud2=UDim2.new
local c3=Color3.new
local rgb=Color3.fromRGB
local hsv=Color3.fromHSV
local bc=BrickColor.new
local bcRandom=BrickColor.Random
local palette=BrickColor.palette
local cs=ColorSequence.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local nr=NumberRange.new
local random=math.random
local rad=math.rad
local sin=math.sin
local cos=math.cos
local tan=math.tan
local cotan=math.CosSin
local floor=math.floor
local pi=math.pi
local abs=math.abs
local sqrt=math.sqrt
local clamp=math.clamp
local ray=Ray.new
local huge=math.huge
--
local CSFuncs={Events={},Functions={}}
function CreateCSFunc(Type,Name,Func)
	if CSFuncs[Type.."s"] then
		CSFuncs[Type.."s"][Name]=Func
		return Func
	end
end
function CSFire(self,AT,Name,...)
	if not self then return end
	if AT=="S" then
		return Rem.FireServer(nil,false,AT,Name,...)
	elseif AT=="R" then
		return InfoRef.InvokeServer(AT,Name,...)
	end
end
function CSTrig(self,Type,Name,...)
	if not self then return end
	if CSFuncs[Type.."s"] and CSFuncs[Type.."s"][Name] then
		return CSFuncs[Type.."s"][Name](...)
	end
end
CSFuncs.new=CreateCSFunc
CSFuncs.Fire=CSFire
CSFuncs.Trigger=CSTrig
--
local Cam=workspace.CurrentCamera
local Wak=t:WaitForChild("Wakizashi")
local Holster=t:WaitForChild("holster")
local fh=h
local ft=t
local fra=ra
local fla=la
local frl=rl
local fll=ll
local fw=Wak
local fhol=Holster
hrp.Anchored=true
local Anims=require(Modules.Animations)
local TA=require(Modules.Parent.SClient.TAAnimate)
local BP=require(Modules.Parent.SClient.BeatProfile)
local PTOS=CFrame.new().PointToObjectSpace
local Cross=Vector3.new().Cross
local IKD=UIS.IsKeyDown
local Dot=Vector3.new().Dot
local Inverse=CFrame.new().Inverse
--
local WClimbWS=8
local ClimbTick=tick()
local FallVal,FallingSince=nil,nil
local Using,Climbing,Hitbox,ToMouse,Hanging,HeadTracking=false,false,false,false,false,true
local InputLocked,CantClimbMove,JumpedFromWall,Drawn=false,false,false,false
local Dancing,Sitting,Crying,Sprinting=false,false,false,true
local Sine,Change=0,1
local CSine=0
local GlobalDT=0
local Combo=1
local Mus=t:FindFirstChild("VMus")
local Prof=BP.Create({{LowGain=-7.5}},Mus)
local WClimbKeys={
	W=Vector3.new(0,1,0),
	S=Vector3.new(0,-1,0),
	A=Vector3.new(-1,0,0),
	D=Vector3.new(1,0,0)
}
local Physics={}
local ClimbIgnore={char,realchar}
local Locks={false,false,false,false,false,false,false,Move=false,Reset=function(self) self.Move=false for i=1,#self do self[i]=false end end}
--
local HangCF=cf()
local CurFlinch,TargFlinch=v3(),v3()
local necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
local rutjC0,rutjC1=cf(),cf()
local rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
local lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
local rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
local lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
local wC0,wC1=cf(la.Size.X/3,-la.Size.Y/2+.075,0),cf(0,-1.7,0)*angles(-90,180,0,true)
local hC0,hC1=cf(-t.Size.X/2,-t.Size.Y/2+.1,t.Size.Y/4),cf(0,-1,0)*angles(-110,-30,0,true)
local cnec,crutj,crs,cls,crh,clh=cf(),cf(),cf(),cf(),cf(),cf()
local rap,lap,rlp,llp=v3(),v3(),v3(),v3()
local Accel=v3(0,-3,0)
local Poses={
	Idle={
		angles(-10,-55,5,true),
		cf(0,-0.25,-0.2)*angles(-15,55,0,true),
		cf(0.25,0.25,-0.5)*angles(210,30,-45,true),
		cf(0.1,-0.5,-0.25)*angles(40,-30,-35,true),
		cf(0.35,0.4,-0.15)*angles(0,-50,5,true)*angles(10,0,0,true),
		cf(0,0,-0.15)*angles(15,20,-3,true),
	},
	IdleAction={
		cf(),
		cf(),
		cf(),
		cf(),
		cf(),
		cf(),
	},
	Sit={
		cf(0,0,0)*angles(-15,15,5,true),
		cf(0,-1.65,0)*angles(20,-25,0,true),
		cf(0,-0.35,0.1)*angles(-30,0,10,true)*angles(0,-50,0,true),
		cf(0.3,-0.25,-0.1)*angles(70,0,60,true),
		angles(70,15,-10,true),
		cf(0,0.9,-0.65)*angles(20,5,0,true),
	},
	Cry={
		cf(0,0,0)*angles(-50,0,0,true),
		cf(0,-1.9,1)*angles(-15,0,0,true),
		cf(-0.25,-0.4,-0.5)*angles(100,0,-80,true)*angles(0,70,0,true),
		cf(0.25,-0.4,-0.5)*angles(100,0,70,true)*angles(0,-70,0,true),
		cf(0,1.25,-0.45)*angles(50,5,-5,true),
		cf(0,1.1,-0.5)*angles(60,-10,7,true),
	},
	Hang={
		angles(-15,0,0,true),
		cf(0,0,.4)*angles(5,0,0,true),
		cf(),--cf(0,0,-.75)*angles(150,0,0,true)*angles(0,60,0,true),
		cf(),--cf(0,0,-.75)*angles(150,0,0,true)*angles(0,-60,0,true),
		cf(),--cf(0,.35,-.35)*angles(10,-5,5,true),
		cf(),--cf(0,.35,-.35)*angles(10,5,-5,true),
	},
}
local TransTween=nil
--
Physics[1]={
	P=ft.CFrame*hC0.Position,
	PP=ft.CFrame*hC0.Position,
	Follow=ft,
	AddCF=hC0,
	AngleLimit=50
}
Prof.SensDown=.2
Prof.SensUp=.25
Prof.Sound.Parent=t
Prof.BufferSize=10
local sw=ins("Motor6D",{Name="Handle";Part0=fla;Part1=fw;C0=wC0;C1=wC1;Parent=Wak})
local hol=ins("Motor6D",{Name="Holster1";Part0=ft;Part1=fhol;C0=hC0;C1=hC1;Parent=Holster})
local JointParts={
	n=nec,
	rj=rutj,
	rs=rs,
	ls=ls,
	rh=rh,
	lh=lh,
	h=sw
}
--
local clerp=CFrame.new().Lerp
function Lerp(a,b,t)
	return a+(b-a)*t
end
function Reflect(V,N)
	return -2*V:Dot(N)*N+V
end
function TwoVecToAng(v1,v2,rad)
	return math.acos(v1.CFrame.LookVector:Dot((v2-v1.Position).Unit))*(rad and 1 or 180/math.pi)
end
function Bezier(a,b,c,t)
	return a:Lerp(c,t):Lerp(c:Lerp(b,t),t)
end
--
function PlayAnimSingle(...)
	local Joints_={nec=nec,rutj=rutj,rs=rs,ls=ls,rh=rh,lh=lh}
	local CFs_={necC0=necC0,necC1=necC1,rutjC0=rutjC0,rutjC1=rutjC1,rsC0=rsC0,rsC1=rsC1,lsC0=lsC0,lsC1=lsC1,rhC0=rhC0,rhC1=rhC1,lhC0=lhC0,lhC1=lhC1}
	for i,v in pairs({...}) do
		if Joints_[v[1]] then
			local T={}
			table.foreach(v[2],function(i,v) T[i]=v end)
			local C0=((CFs_[v[1].."C0"] or cf(0,0,0))*(T.C0 or cf(0,0,0))) or CFs_[v[1].."C0"]
			local C1=((CFs_[v[1].."C1"] or cf(0,0,0))*((T.C1 or cf(0,0,0))):Inverse())
			for i,v in pairs(T) do if i=="C0" then T.C0=C0 elseif i=="C1" then T.C1=C1 end end
			Tween(Joints_[v[1]],T,v[3])
		end
	end
end
function PlayAnim(Table,AddFuncs)
	AddFuncs=AddFuncs or {}
	local Waits=Table.Waits
	for i=1,#Table do
		local v=Table[i]
		if i~="Waits" and Waits[i] then
			local WaitTime=Waits[i]
			PlayAnimSingle(unpack(v))
			if WaitTime>0 then wait(WaitTime) end
			if AddFuncs[i] then AddFuncs[i]() end
		end
	end
end
local function SolveRot(CF,Pos,Full,a,b,Inv,Det)
	if Full then
		local L=PTOS(CF,Pos)
		local Lu=L.Unit
		local c=L.Magnitude
		local Ax=Cross(v3(0,0,-1),Lu)
		local Ang=math.acos(-Lu.Z)
		local Pl=CFrame.fromAxisAngle(Ax,Ang)
		if c<math.max(a,b)-math.min(a,b) then
			return Pl*cf(0,0,math.max(a,b)-math.min(a,b)-c)*angles(math.pi*.5,0,0)
		elseif c>a+b then
			return Pl*cf(0,0,a+b-c)*angles(math.pi/2,0,0)
		else
			local t1=-math.acos((-b^2+a^2+c^2)/(2*a*c))
			local t2=math.acos((b^2-a^2+c^2)/(2*b*c))
			if Inv then t1=-t1 t2=-t2 end
			if Det then
				return Pl,t1+math.pi*.5,t2-t1
			else
				return Pl*angles(t1+math.pi*.5,0,0)*cf(0,-a,0)*angles(t2-t1,0,0)*cf(0,a,0)
			end
		end
	else
		local L=PTOS(CF,Pos)
		local Lu=L.Unit
		local Ax=Cross(v3(0,0,-1),Lu)
		local Ang=math.acos(-Lu.Z)
		local P=CFrame.fromAxisAngle(Ax,Ang)*angles(math.pi*.5,0,0)
		return P
	end
end
local function SolveIKR6(CF,Pos,a,b,Inv)
	local L=PTOS(CF,Pos)
	local Lu=L.Unit
	local c=L.Magnitude
	local Ax=Cross(v3(0,0,-1),Lu)
	local Ang=math.acos(-Lu.Z)
	local Pl=CFrame.fromAxisAngle(Ax,Ang)
	--
	
end
function GetCC(Pos,Range,Ignore,Turn)
	Pos=Pos or hrp.Position
	Range=Range or 5
	Ignore=Ignore or {char,realchar}
	local Chars,CharsDist={},{}
	for i,v in pairs(workspace:FindPartsInRegion3WithIgnoreList(Region3.new(Pos-Vector3.new(1,1,1)*Range,Pos+Vector3.new(1,1,1)*Range),Ignore,100)) do
		if v.Parent:FindFirstChildOfClass("Humanoid") then
			local HUM=v.Parent:FindFirstChildOfClass("Humanoid")
			local T=HUM.Parent:FindFirstChild("Torso") or HUM.Parent:FindFirstChild("UpperTorso")
			local Hit=Raycast(Pos,T.Position-Pos,{char,realchar},(Pos-T.Position).Magnitude+.1,true)
			local Ex=false
			for i,q in pairs(Chars) do
				if v:IsDescendantOf(q[1].Parent) then Ex=true break end
			end
			if T and (Hit and Hit:IsDescendantOf(HUM.Parent)) and HUM.Health>0 and not Ex then
				table.insert(Chars,{T,HUM})
				table.insert(CharsDist,(Pos-T.Position).Magnitude)
			end
		end
	end
	if #Chars==0 then return end
	local Closest=math.min(unpack(CharsDist))
	for i=1,#Chars do
		if (Pos-Chars[i][1].Position).Magnitude==Closest then
			if Turn then hrp.CFrame=CFrame.new(Pos,Vector3.new(Chars[i][1].Position.X,Pos.Y,Chars[i][1].Position.Z)) end
			return Chars[i][1].Parent,Chars[i][1],Chars[i][2]
		end
	end
end
function Sound(Id,Volume,Pitch,Parent,MaxDistance,EmitterSize,Looped)
	local S=ins("Sound",{Volume=Volume or 1;Pitch=Pitch or 1;MaxDistance=MaxDistance or 500;EmitterSize=EmitterSize or 5;Looped=Looped or false;SoundId="rbxassetid://"..Id,Parent=Parent})
	S:Play()
	coroutine.wrap(function()
		if S.Looped then return end
		if S.IsLoaded then
			Instance.Remove(S,S.TimeLength/S.Pitch)
		else
			S.Loaded:Connect(function()
				Instance.Remove(S,S.TimeLength/S.Pitch)
			end)
		end
	end)()
	return S
end
function UpdPhysics(dt)
	local SegLength=2
	for i,v in next,Physics do
		local Vel=v.P-v.PP
		v.PP=v.P
		v.P=v.P+Vel*.95+Accel*dt
		local Root=v.Follow.CFrame*v.AddCF.Position
		v.P=v.P+(v.P-Root).Unit*(SegLength-(v.P-Root).Magnitude)
	end
end
function GetJointCF(...)
	local CF=hrp.CFrame
	for i,v in next,{...} do
		CF=CF*v.C0*Inverse(v.C1)
	end
	return CF
end
function CheckHumanoid(H)
	local Status=true
	if H:GetAttribute("LastHit") then
		if tick()-H:GetAttribute("LastHit")<.1 then
			Status=false
		else
			H:SetAttribute("LastHit",tick())
		end
	else
		H:SetAttribute("LastHit",tick())
	end
	return Status
end
function CheckPartForHum(Part,Ignore)
	if Part.Name=="HumanoidRootPart" then
		return table.insert(Ignore,Part)
	end
	local H=Part.Parent:FindFirstChildWhichIsA("Humanoid")
	if H then
		table.insert(Ignore,Part)
		return Part,H
	end
end
function StraightSwordPartCheck(Limit,Ignore)
	local Repeats=0
	local H,P,N=Raycast(fw.CFrame*cf(0,-3.2135,0).Position,fw.CFrame.UpVector,Ignore,5.427,true)
	if H and H.Parent then
		if H.Parent:IsA("Accessory") then
			Limit=Limit or 15
			H.CanCollide,H.CanQuery=false,false
			repeat
				H,P,N=Raycast(fw.CFrame*cf(0,-4.2135,0).Position,fw.CFrame.UpVector,Ignore,6.427,true)
				if H and H.Parent and not H.Parent:IsA("Accessory") then
					H.CanCollide,H.CanQuery=false,false
					H=nil
				end
				if H and not CheckPartForHum(H,Ignore) then
					H=nil
				end
				Repeats=Repeats+1
			until H or Repeats>Limit
			if H then
				local _,HUM=CheckPartForHum(H,Ignore)
				local Stat=CheckHumanoid(HUM)
				table.insert(Ignore,H)
				return H,P,N,Stat and HUM,1-clamp((fw.CFrame*cf(0,-4.2135,0).Position-P).Magnitude-5.427,0,1)
			end
		elseif not H.Parent:FindFirstChildWhichIsA("Humanoid") then
			for i,v in next,hrp:GetChildren() do
				if v:IsA("BodyVelocity") then
					v:Destroy()
				end
			end
			return false
		else
			if not CheckPartForHum(H,Ignore) then return end
			local _,HUM=CheckPartForHum(H,Ignore)
			local Stat=CheckHumanoid(HUM)
			table.insert(Ignore,H)
			return H,P,N,Stat and HUM,1-clamp((fw.CFrame*cf(0,-4.2135,0).Position-P).Magnitude-5.427,0,1)
		end
	end
end
function StraightSwordCheck(Target,Ignore,Times,Limit)
	for i=1,Times or 1 do
		local H,P,N,Hum,DistanceScale=StraightSwordPartCheck(Limit,Ignore)
		if H==false then return false end
		if H then
			table.insert(Target,{H=H,
				P=P,
				N=N,
				Humanoid=Hum,
				DistScale=DistanceScale,
				LocalisedCFrame=H.CFrame:ToObjectSpace(cf(P,P+N))
			})
		end
	end
end
function SubmitDamage(HitTable,DamageStats)
	if not HitTable or #HitTable<1 then return end
	CSFuncs:Fire("S","ConfirmDamage",HitTable,DamageStats)
end
--
local function Line(a,b,t)
	local Length=(a-b).Magnitude
	Instance.Remove(ins("Part",{Anchored=true,CanCollide=false,CanQuery=false,CFrame=cf(a,b)*cf(0,0,-Length*.5),Size=v3(.1,.1,Length),BrickColor=bcRandom(),Material=Enum.Material.Neon,Parent=workspace.Terrain}),t or 1)
end
function HolsterSword(Bool)
	if Bool==nil then Bool = Drawn else end
	if Bool and not Drawn then
		local Finished=false
		Drawn=true
		wC0,wC1=cf(la.Size.X/3,-la.Size.Y/2+.075,0),cf(0,0,0)
		local HCF=GetJointCF(rutj,hol):ToObjectSpace(GetJointCF(rutj,ls,sw))
		sw.C0,sw.C1=HCF,wC1
		sw.Part0=fhol
		coroutine.wrap(function()
			while not Finished do
				ls.C0=lsC0*SolveRot(hrp.CFrame*rutj.C0*lsC0,fw.CFrame*cf(0,-1.7,0).Position,true,.5,1)
				task.wait()
			end
		end)()
		local Tick=tick()
		local CF=sw.C0
		local Target=cf(-.004,-3.45,.1)*angles(3.5,0,0,true)
		while tick()-Tick<.2 do
			if not Drawn then
				wC0,wC1=cf(la.Size.X/3,-la.Size.Y/2+.075,0),cf(0,-1.7,0)*angles(-90,180,0,true)
				sw.C0,sw.C1=wC0,wC1
				Finished=true
				return
			end
			local A=((tick()-Tick)/.2)
			sw.C0=Bezier(CF,Target,CF*cf(-.25,-1,0),A)
			task.wait()
		end
		sw.C0=Bezier(CF,Target,CF*cf(.5,-1,0)*angles(30,0,-60,true),1)
		task.wait(1/30)
		Tween(sw,{C0=cf(-.004,-.546,.07)},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
		task.wait(.15)
		Finished=true
		return
	end
	if not Drawn then return end
	local Finished=false
	local Target=cf(-.004,-3.45,.1)*angles(3.5,0,0,true)
	coroutine.wrap(function()
		Tween(ls,{C0=lsC0*SolveRot(hrp.CFrame*rutj.C0*lsC0,fw.CFrame*cf(0,-1.7,0).Position,true,.5,1)},{.15,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0})
		task.wait(.15)
		while not Finished do
			ls.C0=lsC0*SolveRot(hrp.CFrame*rutj.C0*lsC0,fw.CFrame*cf(0,-1.7,0).Position,true,.5,1)
			task.wait()
		end
	end)()
	task.wait(.15)
	if Bool then Finished=true return end
	Tween(sw,{C0=Target},{.15,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
	task.wait(.15)
	if not Drawn then Finished=true return end
	Finished=true
	sw.C0=GetJointCF(rutj,ls):ToObjectSpace(GetJointCF(rutj,hol,sw))
	sw.Part0=fla
	wC0,wC1=cf(la.Size.X/3,-la.Size.Y/2+.075,0),cf(0,-1.7,0)*angles(-90,180,0,true)
	Drawn=false
end
--

--
local Moves={
	Equals={Func=function()
		Hitbox=not Hitbox
	end,Deb=0,Tick=tick()},
	Minus={Func=function()
		HeadTracking=not HeadTracking
		if not HeadTracking then
			hum.CameraOffset=v3()
		end
	end,Deb=0,Tick=tick()},
	Underscore={Func=function()
		char:MoveTo(t.Position)
	end,Deb=0,Tick=tick()},
	T={Func=function()
		Dancing=not Dancing
	end,Deb=0,Tick=tick()},
	Z={Func=function()
		Sitting=not Sitting
		Crying=false
		Dancing=false
	end,Deb=0,Tick=tick()},
	X={Func=function()
		Sitting=false
		Crying=not Crying
		Dancing=false
	end,Deb=0,Tick=tick()},
	LeftControl={Func=function()
		Sprinting=not Sprinting
		if Sprinting == true then hum.WalkSpeed=50 else hum.WalkSpeed=16 end
	end,Deb=0,Tick=tick()},
	F={Func=function()
		Using=true
		TA("basic swing or whtvr",char)
		Using=false
	end,Deb=0,Tick=tick()},
	Space={Func=function()
		if Hanging then
			cnec,crutj,crs,cls,crh,clh=cf(),cf(),cf(),cf(),cf(),cf()
			if TransTween then
				TransTween:Cancel()
				TransTween=nil
			end
			task.delay(.15,function()
				JumpedFromWall=true
			end)
			local KEYW = 0 
			local ALEXSADFACE = 0
			local ONLYTRE = 0
			if UIS:IsKeyDown(Enum.KeyCode.S) then ONLYTRE = hrp.CFrame.LookVector*-70 else ONLYTRE = v3() end
			if UIS:IsKeyDown(Enum.KeyCode.D) then ALEXSADFACE = hrp.CFrame.RightVector*50 elseif UIS:IsKeyDown(Enum.KeyCode.A) then ALEXSADFACE = hrp.CFrame.RightVector*-50 else ALEXSADFACE = v3()+ONLYTRE end
			
			if UIS:IsKeyDown(Enum.KeyCode.W) then KEYW = 70 end
			local Dir=v3(0,KEYW,0)+ALEXSADFACE
			hrp.Anchored=false
			Hanging=false
			Instance.Remove(ins("BodyVelocity",{MaxForce=v3(huge,huge,huge),Velocity=-hrp.CFrame.LookVector*10+Dir,Parent=hrp}),.1)
		else
			if hum.FloorMaterial~=Enum.Material.Air then return end
			local Dir=nil
			if hum.MoveDirection.Magnitude>0 then Dir = hum.MoveDirection else Dir = hrp.CFrame.LookVector end
			local H,P,N=Raycast(hrp.Position,Dir,{char,realchar},3,true)
			if H and H.Anchored then
				coroutine.wrap(HolsterSword)(true)
				Hanging=true
				HangCF=cf(P,P-N)*cf(0,0,t.Size.Z*.5)
				hrp.Anchored=true
				hrp.CFrame=HangCF
				hrp.Velocity=v3()
				local Val=CSine*.2
				local X,Y=0,0
				local _,ra=Raycast((hrp.CFrame*rsC0*cf(.35+cos(Val)*1*X,.35+cos(Val)*1*Y,1.25-sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,la=Raycast((hrp.CFrame*lsC0*cf(-.35-cos(Val)*1*X,.35-cos(Val)*1*Y,1.25+sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,rl=Raycast((hrp.CFrame*rhC0*cf(-cos(Val)*.8*X,-1-cos(Val)*1*Y,1.25+sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,ll=Raycast((hrp.CFrame*lhC0*cf(cos(Val)*.8*X,-1+cos(Val)*1*Y,1.25-sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				rap,lap,rlp,llp=ra,la,rl,ll
				cnec=angles(clamp(Y*40,-10,40),X*-30,0,true)
				crutj=cf(cos(Val)*-.15*X,cos(Val)*.15*Y,0)*angles(sin(Val)*5*Y,0,sin(Val)*5*X,true)
				rap,lap,rlp,llp=ra,la,rl,ll
			end
		end
	end,Deb=.35,Tick=tick()},
}
local Combos={
	function()
		local Dam=DamageStats.new()
		local HitParts,Ignore={},{char,realchar}
		Using=true
		Locks[4],Locks[7]=true,true
		ToMouse=true
		TA("s1",JointParts,{
			[3]=function()
				Locks.Move=true
				local V=ins("BodyVelocity",{MaxForce=v3(50000,0,50000),Velocity=hrp.CFrame.LookVector*35*(1-abs((Mouse.Hit.Position-hrp.Position).Unit.Y)),Parent=hrp})
				Tween(V,{MaxForce=v3(),Velocity=v3()},{.35,Enum.EasingStyle.Sine,Enum.EasingDirection.Out})
				Instance.Remove(V,.35)
				Tween(ls,{C1=lsC1*angles(0,50,0,true)*angles((Mouse.Hit.Position-hrp.Position).Unit.Y*pi*-.5,0,0)*angles(0,-50,0,true)},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In})
				coroutine.wrap(function()
					for i=1,5 do
						local Res=StraightSwordCheck(HitParts,Ignore,3)
						if Res==false then break end
						task.wait(.05)
					end
					SubmitDamage(HitParts,Dam)
				end)()
			end,
		})
		ToMouse=false
		Locks:Reset()
		Using=false
	end,
}
--
UIS.InputBegan:Connect(function(IO,L)
	InputLocked=L
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
		if Moves[IO.KeyCode.Name] then 
			local T=Moves[IO.KeyCode.Name]
			if tick()-T.Tick>T.Deb or T.Deb==0 then
				local Res=T.Func()
				T.Tick=not Res and T.Tick or tick()
			end
		end
	elseif IO.UserInputType==Enum.UserInputType.MouseButton1 and not (Using or Hanging) then
		coroutine.wrap(Combos[Combo])()
		Combo=(Combo+1)%#Combos+1
	end
end)
UIS.InputChanged:Connect(function(IO,L)
	InputLocked=L
end)
UIS.InputEnded:Connect(function(IO,L)
	InputLocked=L
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
	elseif IO.UserInputType==Enum.UserInputType.MouseButton1 then
	end
end)
--
UIS.InputBegan:Connect(function(IO,L) Rem.FireServer({UserInputState=IO.UserInputState,KeyCode=IO.KeyCode,UserInputType=IO.UserInputType},L) end)
UIS.InputEnded:Connect(function(IO,L) Rem.FireServer({UserInputState=IO.UserInputState,KeyCode=IO.KeyCode,UserInputType=IO.UserInputType},L) end)
local WEKEEPGETTINGFLUNG = nil
WEKEEPGETTINGFLUNG = game:GetService("RunService").Heartbeat:Connect(function(dt)
if char.Parent ~= nil then
	GlobalDT=dt
	UpdPhysics(dt)
	local Delta=60*dt
	local function Alpha(N)
		return clamp(N*Delta,0,1)
	end
	hol.C0=clerp(hol.C0,hC0*SolveRot(ft.CFrame*hC0,Physics[1].P,false),Alpha(.1))
	if Hanging and not CantClimbMove then
		hrp.Anchored=true
		local _,P_,_=Raycast(hrp.Position,-hrp.CFrame.LookVector,ClimbIgnore,1+t.Size.Z*.5,true)
		local H,P,N=Raycast(P_,hrp.CFrame.LookVector,ClimbIgnore,3+t.Size.Z*.5,true)
		local NormCF=nil
		if H then NormCF = cf(P,P-N) else NormCF = cf(P,P+hrp.CFrame.LookVector) end
		if H then
			hrp.CFrame=hrp.CFrame*cf(0,0,(1+t.Size.Z*.5)-(P-P_).Magnitude+.5)
		end
		local Vec=cf()
		for k,v in next,WClimbKeys do
			if IKD(UIS,Enum.KeyCode[k]) and not CantClimbMove then
				local S=ft.Size
				local Off=v3(S.X*Dot(v,v3(.5,0,0)),S.Y*Dot(v,v3(0,.5,0)),0)
				local Len=1+S.Z
				local H,P,N=Raycast(hrp.CFrame*cf(0,0,S.Z*.5+.1).Position,-cf(hrp.CFrame.Rotation*cf(Off).Position,v3(0,0,0)).LookVector,ClimbIgnore,1+S.X*.5,true)
				if H then
					if N.Y>.5 then
						local CF=hrp.CFrame:ToObjectSpace(cf(P,P-N)*cf(0,0,S.Z*.5))
						hrp.CFrame=hrp.CFrame*cf(CF.Position)
						hrp.CFrame=cf(hrp.Position,v3((hrp.Position+hrp.CFrame.LookVector).X,hrp.Position.Y,(hrp.Position+hrp.CFrame.LookVector).Z))
						Hanging=false
						hrp.Anchored=false
						FallVal=10
						FallingSince=0
						cnec,crutj,crs,cls,crh,clh=cf(),cf(),cf(),cf(),cf(),cf()
						coroutine.wrap(HolsterSword)(false)
						break
					end
					coroutine.wrap(function()
						CantClimbMove=true
						local PreserveRot=NormCF:ToObjectSpace(hrp.CFrame).Rotation
						local CF=hrp.CFrame*hrp.CFrame:ToObjectSpace(cf(P,P-N)*cf(0,0,S.Z*.5))*PreserveRot
						TransTween=Tween(hrp,{CFrame=CF},{.15,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0})
						task.wait(.15)
						TransTween=nil
						CantClimbMove=false
					end)()
					break
				end
				local H=Raycast(hrp.CFrame*cf(Off)*cf(0,0,S.Z*.5).Position,hrp.CFrame.LookVector,ClimbIgnore,Len,true)
				if not H then
					local H,P,N=Raycast(hrp.CFrame*cf(Off)*cf(0,0,S.Z*.5-Len).Position,cf(hrp.CFrame.Rotation*cf(Off).Position,v3(0,0,0)).LookVector,ClimbIgnore,S.X*.5,true)
					if H then
						if N.Y>.5 then
							local CF=hrp.CFrame:ToObjectSpace(cf(P,P-N)*cf(0,0,S.Z*.5))
							hrp.CFrame=hrp.CFrame*cf(CF.Position)
							hrp.CFrame=cf(hrp.Position,v3((hrp.Position+hrp.CFrame.LookVector).X,hrp.Position.Y,(hrp.Position+hrp.CFrame.LookVector).Z))
							Hanging=false
							hrp.Anchored=false
							FallVal=10
							FallingSince=0
							cnec,crutj,crs,cls,crh,clh=cf(),cf(),cf(),cf(),cf(),cf()
							coroutine.wrap(HolsterSword)(false)
							break
						end
						coroutine.wrap(function()
							CantClimbMove=true
							local PreserveRot=NormCF:ToObjectSpace(hrp.CFrame).Rotation
							local CF=hrp.CFrame*hrp.CFrame:ToObjectSpace(cf(P,P-N)*cf(0,0,S.Z*.5))*PreserveRot
							TransTween=Tween(hrp,{CFrame=CF},{.15,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0})
							task.wait(.15)
							TransTween=nil
							CantClimbMove=false
						end)()
						break
					end
					continue
				end
				Vec=Vec*cf(v*dt*WClimbWS)
			end
		end
		if Hanging then
			if Vec.Position.Magnitude>0 then
				CSine=CSine+Delta
				local Val=CSine*.2
				local X,Y=math.sign(Dot((Vec.Position*v3(1,0,0)).Unit,v3(1,0,0))),math.sign(Dot((Vec.Position*v3(0,1,0)).Unit,v3(0,1,0)))
				local _,ra=Raycast((hrp.CFrame*rsC0*cf(.35+cos(Val)*1*X,.35+cos(Val)*1*Y,1.25-sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,la=Raycast((hrp.CFrame*lsC0*cf(-.35-cos(Val)*1*X,.35-cos(Val)*1*Y,1.25+sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,rl=Raycast((hrp.CFrame*rhC0*cf(-cos(Val)*.8*X,-1-cos(Val)*1*Y,1.25+sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,ll=Raycast((hrp.CFrame*lhC0*cf(cos(Val)*.8*X,-1+cos(Val)*1*Y,1.25-sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				rap,lap,rlp,llp=ra,la,rl,ll
				cnec=angles(clamp(Y*40,-10,40),X*-30,0,true)
				crutj=cf(cos(Val)*-.15*X,cos(Val)*.15*Y,0)*angles(sin(Val)*5*Y,0,sin(Val)*5*X,true)
			end
			crs=SolveRot(ft.CFrame*rsC0,rap,true,.5,1)
			cls=SolveRot(ft.CFrame*lsC0,lap,true,.5,1)
			crh=SolveRot(ft.CFrame*rhC0,rlp,true,1,1,true)
			clh=SolveRot(ft.CFrame*lhC0,llp,true,1,1,true)
			hrp.CFrame=hrp.CFrame*Vec
		end
	end
	if ToMouse and not Hanging then
		hrp.CFrame=cf(hrp.Position,v3(Mouse.Hit.X,hrp.Position.Y,Mouse.Hit.Z))
	end
	local M=t:FindFirstChild("VMus")
	if M and M~=Mus then
		Mus=M
		Prof.Following=Mus
	else
		Prof.Following=Mus
		--BP.Update()
	end
	if Climbing and tick()-ClimbTick>.15 then Climbing=false end
	if hum.FloorMaterial==Enum.Material.Air and not Climbing and not Hanging then
		local Hits,LastHit,LastPos,HitParts=0,nil,0,{}
		local Div=20
		local HIt,POs=Raycast(hrp.CFrame*cf(0,1,0).Position,v3(0,1,0),{char,realchar},5,true)
		for i=0,3,1/Div do
			local Dir=hum.MoveDirection.Magnitude>0 and hum.MoveDirection or (hrp.Velocity*v3(1,0,1))/10
			local Hit,Pos,NID=Raycast((Dir.Magnitude>.5 and (cf(hrp.Position,hrp.Position+Dir)) or hrp.CFrame)*cf(0,5,-i-.5).Position,v3(0,-1,0),{char,realchar},5,true)
			local HIT,POS=Raycast(POs,Pos-POs,{char,realchar},10,true)
			Hits=0
			if Hit and POS==Pos and Hit.CanCollide then Hits = 1 end
			if (Hit and POS==Pos) and Hit.CanCollide then LastHit=Pos LastPos=i*10 table.insert(HitParts,Hit) end
		end
		if Hits>=Div then
			Climbing=true ClimbTick=tick()
			Instance.Remove(ins("BodyVelocity",{MaxForce=v3(1/0,1/0,1/0),Velocity=(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit*(LastPos/1.75)+v3(0,30,0),Parent=hrp}),.1)
			coroutine.wrap(function()
				for i,v in pairs(HitParts) do
					v.CanCollide=false
				end
				wait(.15)
				for i,v in pairs(HitParts) do
					v.CanCollide=true
				end
			end)()
		elseif Hits>=4 and LastPos<25 then
			local Hits=0
			for i=0,5,.1 do
				local Hit,Pos,NID=Raycast((hrp.Position*v3(1,0,1))+v3(0,LastHit.Y,0)-v3(0,.5+i,0),(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit,{char,realchar},10,true) --TODO:finish_swings
				Hits=0
				if Hit then Hits = 1 else Hits = 0 end
			end
			if Hits<5 then
				coroutine.wrap(function()
					for i,v in pairs(HitParts) do
						v.CanCollide=false
					end
					wait(.15)
					for i,v in pairs(HitParts) do
						v.CanCollide=true
					end
				end)()
				coroutine.wrap(function()
					for i=0,360,30 do
						rutj.C1=rutjC1*angles(-i,0,0,true)
						game:GetService("RunService").Heartbeat:Wait()
					end
				end)()
				Instance.Remove(ins("BodyVelocity",{MaxForce=v3(1/0,1/0,1/0),Velocity=(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit*60+v3(0,40,0),Parent=hrp}),.1)
			else
				coroutine.wrap(function()
					for i,v in pairs(HitParts) do
						v.CanCollide=false
					end
					wait(.15)
					for i,v in pairs(HitParts) do
						v.CanCollide=true
					end
				end)()
				Tween(rutj,{C1=cf(0,-.5,0)*angles(30,-20,-50,true)},{.15,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
				Instance.Remove(ins("BodyVelocity",{MaxForce=v3(1/0,1/0,1/0),Velocity=(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit*30+v3(0,40,0),Parent=hrp}),.1)
			end
		end
	end
	Mus=t:FindFirstChild("VMus")
	Sine=Sine+Change*Delta
	local Landed=false
	local IdleVal=20
	local Direction
	if hum.MoveDirection.Magnitude==0 then Direction = hrp.Velocity.Unit else Direction = hum.MoveDirection end
	local MoveZ=clamp((Direction*ft.CFrame.LookVector).X+(Direction*ft.CFrame.LookVector).Z,-1,1)
	local MoveX=clamp((Direction*ft.CFrame.RightVector).X+(Direction*ft.CFrame.RightVector).Z,-1,1)
	local Moving
	if Locks.Move then Moving = false else Moving = (hrp.Velocity*v3(1,0,1)).Magnitude>.5 end
	local VerY=hrp.Velocity.Y
	local RO,LO=hrp.CFrame*cf(t.Size.X/4,-t.Size.Y/2,0).Position,hrp.CFrame*cf(-t.Size.X/4,-t.Size.Y/2,0).Position
	local StandR,RPos,RNID=Raycast(RO,-hrp.CFrame.UpVector,{char,realchar},4,false)
	local StandL,LPos,LNID=Raycast(LO,-hrp.CFrame.UpVector,{char,realchar},4,false)
	local Stand=StandR or StandL or hum.FloorMaterial~=Enum.Material.Air
	if Hanging then
		Moving=false
		Stand=true
		Crying,Sitting,Dancing=false,false,false
	end
	if hum.FloorMaterial~=Enum.Material.Air and FallVal and FallingSince then
		Landed=true
		TargFlinch=v3(MoveX*.15,-FallVal*.1,MoveZ*.15)
		FallVal,FallingSince=nil,nil
	end
	CurFlinch=CurFlinch:Lerp(TargFlinch,Alpha(.5))
	TargFlinch=TargFlinch:Lerp(v3(),Alpha(.1))
	local Offs=CurFlinch
	local snec=angles(Offs.Z*50-Offs.Y*50,0,Offs.X*50,true)
	local srutj=cf(Offs.X,Offs.Y,Offs.Z)*angles(Offs.Z*-25-Offs.Y*-25,Offs.X*10,Offs.X*-25,true)
	local srs=angles(-Offs.Z*-35+Offs.Y*-35,0,-Offs.X*-35,true)
	local sls=angles(-Offs.Z*-35+Offs.Y*-35,0,-Offs.X*-35,true)
	local srh=angles(-Offs.Z*-25+Offs.Y*-25,0,-Offs.X*-25,true)*cf(-Offs.X,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15+Offs.Y*-15,0,-Offs.X*-15,true)
	local slh=angles(-Offs.Z*-25+Offs.Y*-25,0,-Offs.X*-25,true)*cf(-Offs.X,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15+Offs.Y*-15,0,-Offs.X*-15,true)
	if not Moving and Stand then
		if JumpedFromWall then
			coroutine.wrap(HolsterSword)(false)
		end
		JumpedFromWall=false
		FallingSince=nil
		local numzz = nil
		if Hanging or Using then numzz = .25 else numzz = .1 end
		local A=Alpha(numzz)
		local Pose
		if Using then Pose = Poses.IdleAction elseif Crying then Pose = Poses.Cry elseif Sitting then Pose = Poses.Sit elseif Hanging then Pose = Poses.Hang else Pose = Poses.Idle end
		Change=1
		if not Dancing then
			local RO,LO=(hrp.CFrame*Pose[2]*rhC0*Pose[5]).Position,(hrp.CFrame*Pose[2]*lhC0*Pose[6]).Position
			local RL,R=Raycast(RO,-(frl.CFrame).UpVector,{char,realchar},2,false)
			local LL,L=Raycast(LO,-(fll.CFrame).UpVector,{char,realchar},2,false)
			local RY,LY
			if Hanging then RY = 0 else RY = clamp(2-(RO-R).Magnitude,0,2) end if Hanging then LY = 0 else LY = clamp(2-(LO-L).Magnitude,0,2) end
			local Offs
			if not Hanging then Offs = CurFlinch+v3(cos(Sine/(IdleVal*2))*.1,cotan(Sine/IdleVal)*cos(Sine/(IdleVal*3))*.2,sin(Sine/IdleVal)*.15) else Offs = v3() end
			local snec=angles(Offs.Z*50-Offs.Y*50,0,Offs.X*50,true)
			local srutj=cf(Offs.X,Offs.Y,Offs.Z)*angles(Offs.Z*-25-Offs.Y*-25,Offs.X*10,Offs.X*-25,true)
			local srs=angles(-Offs.Z*-25+Offs.Y*-25,0,-Offs.X*-25,true)*cf(0,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15+Offs.Y*-15,0,-Offs.X*-15,true)
			local sls=angles(-Offs.Z*-35+Offs.Y*-35,Offs.Z*-45,-Offs.X*-35,true)
			local srh=angles(-Offs.Z*-25+Offs.Y*-25,0,-Offs.X*-25,true)*cf(-Offs.X,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15+Offs.Y*-15,0,-Offs.X*-15,true)
			local slh=angles(-Offs.Z*-25+Offs.Y*-25,0,-Offs.X*-25,true)*cf(-Offs.X,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15+Offs.Y*-15,0,-Offs.X*-15,true)
			local RJCF=rutjC0*crutj*srutj*cf(0,.05*cos(Sine/IdleVal),.05*cotan(Sine/IdleVal))*angles(cotan(Sine/IdleVal)*2,sin(Sine/(IdleVal*3.5))*2.5,cotan(Sine/(IdleVal*2))*-4,true)*Pose[2]
			local tia
			if Landed then tia = 1 else tia=A end
			if Locks[1] then nec.C0=nec.C0 else nec.C0=clerp(nec.C0,necC0*cnec*Pose[2].Rotation:Inverse()*snec*cf(0,0,0)*angles(sin(Sine/IdleVal)*2,cotan(Sine/(IdleVal*3))*7.5,0,true)*Pose[2].Rotation*Pose[1],A) end
			if Locks[2] then rutj.C0=rutj.C0 else rutj.C0=clerp(rutj.C0,RJCF,tia) end
			if Locks[3] then rs.C0=rs.C0 else rs.C0=clerp(rs.C0,rsC0*crs*Pose[2].Rotation:Inverse()*srs*cf(0,-.05*cos(Sine/IdleVal),0)*angles(sin(Sine/IdleVal)*2.25,-sin(Sine/(IdleVal*3.5))*2.5,sin(Sine/IdleVal)*1.5,true)*cf(-0.1,-0.1,0.05)*Pose[2].Rotation*Pose[3],A) end
			if Locks[4] then ls.C0=ls.C0 else ls.C0=clerp(ls.C0,lsC0*cls*Pose[2].Rotation:Inverse()*sls*cf(0,-.05*cos(Sine/IdleVal),0)*angles(sin(Sine/IdleVal)*2.25,-sin(Sine/(IdleVal*3.5))*2.5,sin(Sine/IdleVal)*-1.5,true)*cf(0.1,-0.1,0.05)*Pose[2].Rotation*Pose[4],A) end
			if Locks[5] then rh.C0=rh.C0 else rh.C0=clerp(rh.C0,rhC0*crh*Pose[2].Rotation:Inverse()*srh*cf(0,-.05*cos(Sine/IdleVal)+.025*cotan(Sine/(IdleVal*2)),0)*angles(cotan(Sine/IdleVal)*-2+sin(Sine/(IdleVal*3.5))*-1.25,0,cotan(Sine/(IdleVal*2))*6.5,true)*cf(0,0,-0.05)*Pose[2].Rotation*Pose[5]*cf(0,RY,-RY*.75)*angles(-RY*.5,0,0),tia) end
			if Locks[6] then lh.C0=lh.C0 else lh.C0=clerp(lh.C0,lhC0*clh*Pose[2].Rotation:Inverse()*slh*cf(0,-.05*cos(Sine/IdleVal)-.025*cotan(Sine/(IdleVal*2)),0)*angles(cotan(Sine/IdleVal)*-2+sin(Sine/(IdleVal*3.5))*1.25,0,cotan(Sine/(IdleVal*2))*6.5,true)*cf(0,0,-0.05)*Pose[2].Rotation*Pose[6]*cf(0,LY,-LY*.75)*angles(-LY*.5,0,0),tia) end
			if not Drawn then if Locks[7] then sw.C0=sw.C0 else sw.C0=clerp(sw.C0,wC0*cf(0,0,-la.Size.Z*.5)*angles(cos(Sine/IdleVal)*-5,0,0,true)*cf(0,0,la.Size.Z*.5),A) end end
		else
			IdleVal=15
			if Locks[1] then nec.C0=nec.C0 else nec.C0=clerp(nec.C0,necC0*angles(-5+sin(Sine/(IdleVal/4))*5,(-cos(Sine/(IdleVal))*sin(Sine/(IdleVal/4)))*30,0,true),A) end
			if Locks[2] then rutj.C0=rutj.C0 else rutj.C0=clerp(rutj.C0,rutjC0*cf(0,-1,0)*cf(0,-.25-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*.5,0)*angles(5-cos(Sine/(IdleVal/2))*5,(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*30,0,true)*cf(0,1,0),A) end
			if Locks[3] then rs.C0=rs.C0 else rs.C0=clerp(rs.C0,rsC0*cf(-.2-(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*.5,-.25-sin(Sine/(IdleVal/4))*.4,-.4-sin(Sine/(IdleVal/4))*.25+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*.2)*angles((-cos(Sine/(IdleVal/2))*cos(Sine/IdleVal))*60+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*45,cotan(Sine/(IdleVal))*cos(Sine/(IdleVal/2))*120+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*30,-cos(Sine/(IdleVal/4))*20,true)*angles(90,0,0,true),A) end
			if Locks[4] then ls.C0=ls.C0 else ls.C0=clerp(ls.C0,lsC0*cf(.2+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*.5,-.25-sin(Sine/(IdleVal/4))*.4,-.4-sin(Sine/(IdleVal/4))*.25+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*.2)*angles((-cos(Sine/(IdleVal/2))*cos(Sine/IdleVal))*60+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*45,cotan(Sine/(IdleVal))*cos(Sine/(IdleVal/2))*120-(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*30,cos(Sine/(IdleVal/4))*20,true)*angles(90,0,0,true),A) end
			if Locks[5] then rh.C0=rh.C0 else rh.C0=clerp(rh.C0,rhC0*cf(0,.15-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*-.5+clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),.1,1)*.5,-.25+(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*.25-clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),0,1)*.35)*angles(-2.5+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*-5+(-5+(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*2.5)-clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),0,1)*25,(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*-30,0,true)*angles(0,-5,5,true),A) end
			if Locks[6] then lh.C0=ls.C0 else lh.C0=clerp(lh.C0,lhC0*cf(0,.15-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*-.5-clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),-1,.1)*.5,-.25-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*.25+clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),-1,0)*.35)*angles(-2.5+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*5+(-5-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*2.5)+clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),-1,0)*25,(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*-30,0,true)*angles(0,5,-5,true),A) end
			if not Drawn then if Locks[7] then sw.C0=sw.C0 else sw.C0=clerp(sw.C0,wC0*cf(0,0,0)*angles(0,0,0,true),A) end end
		end
	elseif Moving and Stand then
		if JumpedFromWall then
			coroutine.wrap(HolsterSword)(false)
		end
		JumpedFromWall=false
		FallingSince=nil
		local Dist
		if StandR then Dist=2-(RO-RPos).Magnitude else Dist=2-(LO-LPos).Magnitude end
		if Dist<0 and VerY<-10 or Dist>0 and VerY>10 then
			hrp.CFrame=cf(0,Dist,0)*hrp.CFrame
		end
		local WSVal=6
		local Tilt=cf(0,-3,0)*angles(VerY*2.5*MoveZ,0,VerY*2.5*MoveX,true)*cf(0,3,0)
		local WSScale=hum.WalkSpeed/16*.32
		local A=Alpha(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)
		Change=clamp(hum.WalkSpeed/16,.25,2)*t.Size.Y/2
		if Locks[1] then nec.C0=nec.C0 else nec.C0=clerp(nec.C0,necC0*snec*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(clamp(35*WSScale*MoveZ,-15,30),-60*MoveX,0,true),A) end
		if Locks[2] then rutj.C0=rutj.C0 else rutj.C0=clerp(rutj.C0,rutjC0*Tilt*srutj*cf(cos(Sine/WSVal)*.3*abs(MoveX),cotan(Sine/(WSVal*.5))*.6,cos(Sine/WSVal)*.3*abs(MoveZ))*angles(sin(Sine/WSVal)*5*abs(MoveZ),-cos(Sine/WSVal)*5,sin(Sine/WSVal)*5*abs(MoveX),true)*cf(0,0,0)*angles(clamp(-50*WSScale*MoveZ,-50,20),0,-15*WSScale*MoveX,true),A) end
		if Locks[3] then rs.C0=rs.C0 else rs.C0=clerp(rs.C0,rsC0*srs*cf(0,0,sin(Sine/WSVal)*.55*MoveZ*clamp(1-WSScale,0,1))*angles(sin(Sine/WSVal)*-100*MoveZ*clamp(1-WSScale,0,1),0,cos(Sine/WSVal*2)*15*clamp(1-WSScale,0,1),true)*cf(0,cos(Sine/(WSVal))*-.2,0)*angles(cos(Sine/(WSVal*2))*3,cos(Sine/WSVal)*5,0,true)*cf(-.15*abs(MoveZ)*clamp(floor(WSScale*1.5),0,1),.35*abs(MoveZ)*clamp(floor(WSScale*1.5),0,1),-1.5*abs(MoveZ)*clamp(floor(WSScale*1.5),0,1))*angles(140*abs(MoveZ)*clamp(floor(WSScale*1.5),0,1)+20*abs(MoveZ)*clamp(1-floor(WSScale*1.5),0,1),0,-115*abs(MoveZ)*clamp(floor(WSScale*1.5),0,1),true)*angles(0,155*abs(MoveZ)*clamp(floor(WSScale*1.5),0,1),0,true),A) end
		if Locks[4] then ls.C0=ls.C0 else ls.C0=clerp(ls.C0,lsC0*sls*cf(0,cos(Sine/WSVal*2)*.15,cos(Sine/WSVal)*-.3*MoveZ)*angles(cos(Sine/WSVal)*30*MoveZ,0,cos(Sine/WSVal*2)*-15,true)*cf(.15,-.15,-.1)*angles(15,30,-20*abs(MoveZ),true)*angles(0,sin(Sine/WSVal)*-30*MoveZ,0,true),A) end
		if Locks[5] then rh.C0=rh.C0 else rh.C0=clerp(rh.C0,rhC0*srh*cf(0,cos(Sine/WSVal)*.75,-.25+cos(Sine/WSVal)*-1)*angles(cotan(Sine/WSVal)*195*MoveZ,0,cotan(Sine/WSVal)*100*MoveX,true)*cf(0,0,0)*angles(15*WSScale*MoveZ,0,0,true),A) end
		if Locks[6] then lh.C0=ls.C0 else lh.C0=clerp(lh.C0,lhC0*slh*cf(0,cos(Sine/WSVal)*-.75,-.25+cos(Sine/WSVal)*1)*angles(cotan(Sine/WSVal)*-195*MoveZ,0,cotan(Sine/WSVal)*-100*MoveX,true)*cf(0,0,0)*angles(15*WSScale*MoveZ,0,0,true),A) end
		if not Drawn then if Locks[7] then sw.C0=sw.C0 else sw.C0=clerp(sw.C0,wC0*cf(0,0,0)*angles(sin(Sine/WSVal)*15,0,0,true),A) end end
	elseif not Stand then
		if JumpedFromWall and not Hanging then
			local H,P,N=Raycast(t.Position,hrp.CFrame.LookVector,{char,realchar},1.4,true)
			if H and H.Anchored then
				coroutine.wrap(HolsterSword)(true)
				JumpedFromWall=false
				Hanging=true
				HangCF=cf(P,P-N)*cf(0,0,t.Size.Z*.5)
				hrp.Anchored=true
				hrp.CFrame=HangCF
				hrp.Velocity=v3()
				local Val=CSine*.2
				local X,Y=0,0
				local _,ra=Raycast((hrp.CFrame*rsC0*cf(.35+cos(Val)*1*X,.35+cos(Val)*1*Y,1.25-sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,la=Raycast((hrp.CFrame*lsC0*cf(-.35-cos(Val)*1*X,.35-cos(Val)*1*Y,1.25+sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,rl=Raycast((hrp.CFrame*rhC0*cf(-cos(Val)*.8*X,-1-cos(Val)*1*Y,1.25+sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				local _,ll=Raycast((hrp.CFrame*lhC0*cf(cos(Val)*.8*X,-1+cos(Val)*1*Y,1.25-sin(Val))).Position,hrp.CFrame.LookVector,ClimbIgnore,2,true)
				rap,lap,rlp,llp=ra,la,rl,ll
				cnec=angles(clamp(Y*40,-10,40),X*-30,0,true)
				crutj=cf(cos(Val)*-.15*X,cos(Val)*.15*Y,0)*angles(sin(Val)*5*Y,0,sin(Val)*5*X,true)
				rap,lap,rlp,llp=ra,la,rl,ll
			end
		end
		if VerY<0 then
			if not FallingSince then
				FallingSince=tick()
			else
				if not FallVal then
					FallVal=0
				end
				FallVal=clamp(FallVal-VerY*.005*Delta,0,25)
			end
		else
			FallingSince,FallVal=nil,nil
		end
		local A=Alpha(.2)
		Change=1
		if Locks[1] then nec.C0=nec.C0 else nec.C0=clerp(nec.C0,necC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(clamp(hrp.Velocity.Y,-15,15),0,0,true),A) end
		if Locks[2] then rutj.C0=rutj.C0 else rutj.C0=clerp(rutj.C0,rutjC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(clamp(hrp.Velocity.Y,-30,20),0,0,true),A) end
		if Locks[3] then rs.C0=rs.C0 else rs.C0=clerp(rs.C0,rsC0*cf(0,0,0)*angles(0,5,-7.5,true)*cf(-(clamp(hrp.Velocity.Y/20,-.45,0)),0,0)*angles((clamp(hrp.Velocity.Y*4,0,150)),0,-(clamp(hrp.Velocity.Y*4,-120,0)),true),A) end
		if Locks[4] then ls.C0=ls.C0 else ls.C0=clerp(ls.C0,lsC0*cf(0,0,0)*angles(0,-5,7.5,true)*cf((clamp(hrp.Velocity.Y/20,-.45,0)),0,0)*angles((clamp(hrp.Velocity.Y*4,0,150)),0,(clamp(hrp.Velocity.Y*4,-120,0)),true),A) end
		if Locks[5] then rh.C0=rh.C0 else rh.C0=clerp(rh.C0,rhC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,.4,-.35)*angles(-10,-5,5,true),A) end
		if Locks[6] then lh.C0=ls.C0 else lh.C0=clerp(lh.C0,lhC0*cf(0,0,0)*angles(clamp(-hrp.Velocity.Y,-25,35),0,0,true)*cf(0,.2,-.15)*angles(-2.5,5,-5,true),A) end
		if not Drawn then if Locks[7] then sw.C0=sw.C0 else sw.C0=clerp(sw.C0,wC0*cf(0,0,0)*angles(0,0,0,true),A) end end
	end
	necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
	rutjC0,rutjC1=cf(0,0,0),cf(0,0,0)
	rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
	lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
	rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
	lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
	--wC0,wC1=cf(la.Size.X/3,-la.Size.Y/2+.125,0),cf(0,-1.7,0)*angles(-90,180,0,true)
	if not Using then
		local A=Alpha(.2)
		nec.C1=clerp(nec.C1,necC1,A)
		rutj.C1=clerp(rutj.C1,rutjC1,A)
		rs.C1=clerp(rs.C1,rsC1,A)
		ls.C1=clerp(ls.C1,lsC1,A)
		rh.C1=clerp(rh.C1,rhC1,A)
		lh.C1=clerp(lh.C1,lhC1,A)
		sw.C1=clerp(sw.C1,wC1,A)
	end
	fh.Size,ft.Size,fra.Size,fla.Size,frl.Size,fll.Size=h.Size,t.Size,ra.Size,la.Size,rl.Size,ll.Size
--[[	
	for i,v in pairs({fw,fhol}) do
		v.Parent.BP.Position=v.CFrame.Position+v.Velocity/40
		v.Parent.BG.CFrame=v.CFrame
		v.Transparency=Hitbox and .9 or 1
		v.Parent.CFrame=v.CFrame
	end
]]
if HeadTracking then
hum.CameraOffset=hum.CameraOffset:Lerp((hrp.CFrame*cf(0,1.5,0)):PointToObjectSpace(fh.Position),Alpha(.15))
end
else
WEKEEPGETTINGFLUNG:Disconnect()
end
end)
Rem.FireClient = function(Name,...)
	return CSFuncs:Trigger("Event",Name,...)
end
InfoRef.InvokeClient =function(Name,...)
	return CSFuncs:Trigger("Function",Name,...)
end
wait(1/30)
hrp.Anchored=false
while wait(1/30) do
    if char.Parent ~= nil then
	Rem.FireServer({Mouse=true,Hit=Mouse.Hit,Target=Mouse.Target,Origin=Mouse.Origin,CamCFrame=Cam.CFrame,CameraType=Cam.CameraType,CameraSubject=Cam.CameraSubject})
    else
    break
    end
end
