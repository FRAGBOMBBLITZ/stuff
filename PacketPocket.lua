------------------------ coding tieme part 1 ------------------------
local cloneref = function(service)
	return cloneref and cloneref(service) or service
end

local Services = setmetatable(
	{}, -- self (services)
	{
		__index = function(self, index) -- when service is indexed services[index], this function runs
			local success, errorMessage = pcall(function()
				return cloneref(game:GetService(index))
			end)

			if not success then warn(errorMessage) return end 

			self[index] = errorMessage -- this adds what is being indexed to the self services table
			return self[index]
		end
	}
)
------------------------ code time ends ------------------------

------------------------ but first ------------------------
local RunService = Services.RunService
local Players = Services.Players
local LocalPlayer = Players.LocalPlayer

local CoreGuiProt4Armor = RunService:IsStudio() and LocalPlayer.PlayerGui or Services.CoreGui
------------------------ ends ------------------------


--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local PacketPocket = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Header = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local MinimizeButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local Dragger = Instance.new("TextButton")
local Body = Instance.new("Frame")
local LeftList = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local SearchFrame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UIPadding = Instance.new("UIPadding")
local LogList = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIPadding_2 = Instance.new("UIPadding")
local UIListLayout_2 = Instance.new("UIListLayout")
local ScrollColor = Instance.new("Frame")
local UIPadding_3 = Instance.new("UIPadding")
local TextButton = Instance.new("TextButton")
local UIPadding_4 = Instance.new("UIPadding")
local Content = Instance.new("Frame")
local Description = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UIPadding_5 = Instance.new("UIPadding")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Text = Instance.new("Frame")
local UIPadding_6 = Instance.new("UIPadding")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local TextBox_2 = Instance.new("TextBox")
local UIPadding_7 = Instance.new("UIPadding")
local UIListLayout_3 = Instance.new("UIListLayout")
local ScrollColor_2 = Instance.new("Frame")
local GubbyResizerFrame = Instance.new("Frame")
local GubbyResizer = Instance.new("ImageButton")
local Assets = Instance.new("Folder")
local Packet = Instance.new("TextButton")
local UIPadding_8 = Instance.new("UIPadding")
local Time = Instance.new("TextLabel")

-- Properties

PacketPocket.Name = "PacketPocket"
PacketPocket.Parent = CoreGuiProt4Armor

Main.Name = "Main"
Main.Parent = PacketPocket
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BackgroundTransparency = 1
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 200, 0, 540)
Main.Size = UDim2.new(0, 560, 0, 340)

Header.Name = "Header"
Header.Parent = Main
Header.AnchorPoint = Vector2.new(0, 1)
Header.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
Header.BorderSizePixel = 0
Header.Size = UDim2.new(1, 0, 0, 25)

TextLabel.Parent = Header
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 5, 0, 0)
TextLabel.Size = UDim2.new(0, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "PacketPocket"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 16
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Name = "CloseButton"
CloseButton.Parent = Header
CloseButton.AnchorPoint = Vector2.new(1, 0.5)
CloseButton.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -4, 0.5, 0)
CloseButton.Size = UDim2.new(0, 18, 0, 18)
CloseButton.ZIndex = 3
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = ""
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 16

UICorner.Parent = CloseButton
UICorner.CornerRadius = UDim.new(0, 4)

ImageLabel.Parent = CloseButton
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 16, 0, 16)
ImageLabel.ZIndex = 4
ImageLabel.Image = "rbxassetid://71601019672090"

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = Header
MinimizeButton.AnchorPoint = Vector2.new(1, 0.5)
MinimizeButton.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(1, -26, 0.5, 0)
MinimizeButton.Size = UDim2.new(0, 18, 0, 18)
MinimizeButton.ZIndex = 3
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.Text = ""
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
MinimizeButton.TextSize = 16

UICorner_2.Parent = MinimizeButton
UICorner_2.CornerRadius = UDim.new(0, 4)

ImageLabel_2.Parent = MinimizeButton
ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_2.Size = UDim2.new(0, 16, 0, 16)
ImageLabel_2.ZIndex = 4
ImageLabel_2.Image = "rbxassetid://138999446538528"

Dragger.Name = "Dragger"
Dragger.Parent = Header
Dragger.BackgroundColor3 = Color3.new(1, 1, 1)
Dragger.BackgroundTransparency = 1
Dragger.BorderColor3 = Color3.new(0, 0, 0)
Dragger.BorderSizePixel = 0
Dragger.Size = UDim2.new(1, 0, 1, 0)
Dragger.ZIndex = 2
Dragger.Font = Enum.Font.SourceSans
Dragger.Text = ""
Dragger.TextColor3 = Color3.new(0, 0, 0)
Dragger.TextSize = 14

Body.Name = "Body"
Body.Parent = Main
Body.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Body.BorderSizePixel = 0
Body.Size = UDim2.new(1, 0, 1, 0)

LeftList.Name = "LeftList"
LeftList.Parent = Body
LeftList.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
LeftList.BorderSizePixel = 0
LeftList.Size = UDim2.new(0, 200, 1, 0)

UIListLayout.Parent = LeftList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

SearchFrame.Name = "SearchFrame"
SearchFrame.Parent = LeftList
SearchFrame.BackgroundColor3 = Color3.new(1, 1, 1)
SearchFrame.BackgroundTransparency = 1
SearchFrame.BorderColor3 = Color3.new(0, 0, 0)
SearchFrame.BorderSizePixel = 0
SearchFrame.Size = UDim2.new(1, 0, 0, 25)

TextBox.Parent = SearchFrame
TextBox.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.PlaceholderText = "Search"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextSize = 16
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = TextBox
UIPadding.PaddingLeft = UDim.new(0, 4)

LogList.Name = "LogList"
LogList.Parent = LeftList
LogList.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
LogList.BorderSizePixel = 0
LogList.Size = UDim2.new(1, 0, 1, -60)

ScrollingFrame.Parent = LogList
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.new(0.509804, 0.509804, 0.509804)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, -2, 1, 0)
ScrollingFrame.ZIndex = 2
ScrollingFrame.ScrollBarThickness = 8

UIPadding_2.Parent = ScrollingFrame
UIPadding_2.PaddingBottom = UDim.new(0, 4)
UIPadding_2.PaddingLeft = UDim.new(0, 4)
UIPadding_2.PaddingRight = UDim.new(0, 14)
UIPadding_2.PaddingTop = UDim.new(0, 4)

UIListLayout_2.Parent = ScrollingFrame
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

ScrollColor.Name = "ScrollColor"
ScrollColor.Parent = LogList
ScrollColor.AnchorPoint = Vector2.new(1, 0)
ScrollColor.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.160784)
ScrollColor.BorderSizePixel = 0
ScrollColor.Position = UDim2.new(1, 0, 0, 0)
ScrollColor.Size = UDim2.new(0, 12, 1, 0)

UIPadding_3.Parent = LeftList
UIPadding_3.PaddingBottom = UDim.new(0, 4)
UIPadding_3.PaddingLeft = UDim.new(0, 4)
UIPadding_3.PaddingRight = UDim.new(0, 4)
UIPadding_3.PaddingTop = UDim.new(0, 4)

TextButton.Parent = LeftList
TextButton.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Clear Logs"
TextButton.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextButton.TextSize = 16
TextButton.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_4.Parent = TextButton
UIPadding_4.PaddingLeft = UDim.new(0, 4)

Content.Name = "Content"
Content.Parent = Body
Content.AnchorPoint = Vector2.new(1, 1)
Content.BackgroundColor3 = Color3.new(1, 1, 1)
Content.BackgroundTransparency = 1
Content.BorderColor3 = Color3.new(0, 0, 0)
Content.BorderSizePixel = 0
Content.Position = UDim2.new(1, 0, 1, 0)
Content.Size = UDim2.new(1, -200, 1, 0)

Description.Name = "Description"
Description.Parent = Content
Description.AnchorPoint = Vector2.new(1, 0)
Description.BackgroundColor3 = Color3.new(1, 1, 1)
Description.BackgroundTransparency = 1
Description.BorderColor3 = Color3.new(0, 0, 0)
Description.BorderSizePixel = 0
Description.Position = UDim2.new(1, 0, 0, 0)
Description.Size = UDim2.new(1, -1, 0, 33)

TextLabel_2.Parent = Description
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.new(0.168627, 0.211765, 0.298039)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(1, -8, 0, 25)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "physicspacket 0x1B | priority: 2 | reliability: 2 | length: 100"
TextLabel_2.TextColor3 = Color3.new(0.682353, 0.776471, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 16
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_5.Parent = TextLabel_2
UIPadding_5.PaddingLeft = UDim.new(0, 4)

UITextSizeConstraint.Parent = TextLabel_2
UITextSizeConstraint.MaxTextSize = 16

Text.Name = "Text"
Text.Parent = Content
Text.AnchorPoint = Vector2.new(1, 1)
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.BorderColor3 = Color3.new(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(1, 0, 1, 0)
Text.Size = UDim2.new(1, 0, 1, -33)

UIPadding_6.Parent = Text
UIPadding_6.PaddingBottom = UDim.new(0, 4)
UIPadding_6.PaddingLeft = UDim.new(0, 5)
UIPadding_6.PaddingRight = UDim.new(0, 4)
UIPadding_6.PaddingTop = UDim.new(0, 1)

ScrollingFrame_2.Parent = Text
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame_2.BackgroundTransparency = 1
ScrollingFrame_2.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Size = UDim2.new(1, -2, 1, 0)
ScrollingFrame_2.ZIndex = 2
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 10, 0)
ScrollingFrame_2.ScrollBarThickness = 8

TextBox_2.Parent = ScrollingFrame_2
TextBox_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox_2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextBox_2.Size = UDim2.new(1, 0, 9, 0)
TextBox_2.ClearTextOnFocus = false
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.PlaceholderText = "hey.. where is the packet information..."
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.new(1, 1, 1)
TextBox_2.TextSize = 16
TextBox_2.TextTransparency = 0.10000000149011612
TextBox_2.TextWrapped = true
TextBox_2.TextXAlignment = Enum.TextXAlignment.Left
TextBox_2.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_7.Parent = TextBox_2
UIPadding_7.PaddingBottom = UDim.new(0, 4)
UIPadding_7.PaddingLeft = UDim.new(0, 4)
UIPadding_7.PaddingRight = UDim.new(0, 12)
UIPadding_7.PaddingTop = UDim.new(0, 4)

UIListLayout_3.Parent = ScrollingFrame_2
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

ScrollColor_2.Name = "ScrollColor"
ScrollColor_2.Parent = Text
ScrollColor_2.AnchorPoint = Vector2.new(1, 0)
ScrollColor_2.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.160784)
ScrollColor_2.BorderSizePixel = 0
ScrollColor_2.Position = UDim2.new(1, 0, 0, 0)
ScrollColor_2.Size = UDim2.new(0, 12, 1, 0)

GubbyResizerFrame.Name = "GubbyResizerFrame"
GubbyResizerFrame.Parent = Main
GubbyResizerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
GubbyResizerFrame.BackgroundColor3 = Color3.new(1, 1, 1)
GubbyResizerFrame.BackgroundTransparency = 1
GubbyResizerFrame.BorderColor3 = Color3.new(0, 0, 0)
GubbyResizerFrame.BorderSizePixel = 0
GubbyResizerFrame.Position = UDim2.new(1, 0, 1, 0)
GubbyResizerFrame.Size = UDim2.new(0, 25, 0, 25)

GubbyResizer.Name = "GubbyResizer"
GubbyResizer.Parent = GubbyResizerFrame
GubbyResizer.AnchorPoint = Vector2.new(.5,.5)
GubbyResizer.Position = UDim2.new(0.5,0,.5,0)
GubbyResizer.BackgroundColor3 = Color3.new(1, 1, 1)
GubbyResizer.BackgroundTransparency = 1
GubbyResizer.BorderColor3 = Color3.new(0, 0, 0)
GubbyResizer.BorderSizePixel = 0
GubbyResizer.Size = UDim2.new(1, 0, 1, 0)
GubbyResizer.Image = "rbxassetid://115233777642994"

Assets.Name = "Assets"
Assets.Parent = PacketPocket

Packet.Name = "Packet"
Packet.Parent = Assets
Packet.BackgroundColor3 = Color3.new(0.168627, 0.211765, 0.298039)
Packet.BorderSizePixel = 0
Packet.Size = UDim2.new(1, 0, 0, 50)
Packet.Visible = false
Packet.Font = Enum.Font.SourceSansSemibold
Packet.Text = "Physics Packet"
Packet.TextColor3 = Color3.new(0.682353, 0.776471, 1)
Packet.TextSize = 20
Packet.TextXAlignment = Enum.TextXAlignment.Left
Packet.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_8.Parent = Packet
UIPadding_8.PaddingBottom = UDim.new(0, 4)
UIPadding_8.PaddingLeft = UDim.new(0, 4)
UIPadding_8.PaddingRight = UDim.new(0, 4)
UIPadding_8.PaddingTop = UDim.new(0, 4)

Time.Name = "Time"
Time.Parent = Packet
Time.AnchorPoint = Vector2.new(0.5, 0.5)
Time.BackgroundColor3 = Color3.new(1, 1, 1)
Time.BackgroundTransparency = 1
Time.BorderColor3 = Color3.new(0, 0, 0)
Time.BorderSizePixel = 0
Time.Position = UDim2.new(0.5, 0, 0.5, 10)
Time.Size = UDim2.new(1, 0, 0, 20)
Time.Font = Enum.Font.SourceSansSemibold
Time.Text = "(12:41:24) | 0x1B"
Time.TextColor3 = Color3.new(0.682353, 0.776471, 1)
Time.TextSize = 16
Time.TextTransparency = 0.4000000059604645
Time.TextXAlignment = Enum.TextXAlignment.Left


-- update
Description.TextLabel.Visible = false



-- coding teime part 2 (some stuff was previously defined at top)


-- connc
local WindowConnections = {}

-- services
local UserInputService = Services.UserInputService
local TweenService = Services.TweenService
local StarterGui = Services.StarterGui

-- player
local Mouse = LocalPlayer:GetMouse()

-- lalala muahaha i stole this from my other thing pls shownape its 4:36 am do not krill me
local InitializeDragger = function(MainFrame, DraggerFrame)
	local MainFramePos
	local MouseStartPos
	local IsDragging = false

	local MouseDown = function()
		MainFramePos = Vector2.new(MainFrame.Position.X.Offset, MainFrame.Position.Y.Offset)
		MouseStartPos = Vector2.new(Mouse.X, Mouse.Y)

		IsDragging = true
	end

	local MouseUp = function(Input : InputObject, GameProcessed)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 and IsDragging then
			IsDragging = false
		elseif Input.UserInputType == Enum.UserInputType.Touch and IsDragging then
			IsDragging = false
		end
	end


	local MouseMoved = function()
		if not IsDragging then return end

		local MousePos = Vector2.new(MouseStartPos.X - Mouse.X, MouseStartPos.Y - Mouse.Y)
		MainFrame.Position = UDim2.fromOffset(MainFramePos.X - MousePos.X, MainFramePos.Y - MousePos.Y)
	end

	table.insert(WindowConnections, DraggerFrame.MouseButton1Down:Connect(MouseDown))
	table.insert(WindowConnections, UserInputService.InputEnded:Connect(MouseUp))
	table.insert(WindowConnections, Mouse.Move:Connect(MouseMoved))
end

InitializeDragger(Main, Dragger)

-- end of nice code, i'm sorry





-----------------------------------------------------------------------------------------------------------
------------------------------------------ SLAP ON GUBBY RESIZER ------------------------------------------
-----------------------------------------------------------------------------------------------------------

local GUBBYRESIZER = function(MainFrame, DraggerFrame)
	local MainFramePos
	local MouseStartPos
	local IsDragging = false

	local MouseDown = function()
		MainFramePos = Vector2.new(MainFrame.Size.X.Offset, MainFrame.Size.Y.Offset)
		MouseStartPos = Vector2.new(Mouse.X, Mouse.Y)
		IsDragging = true
		
		TweenService:Create(GubbyResizer, TweenInfo.new(0.5, Enum.EasingStyle.Elastic,Enum.EasingDirection.Out), {Size = UDim2.new(.7,0,.7,0)}):Play()
	end
	
	local MouseHover = function()
		if IsDragging then return end
		TweenService:Create(GubbyResizer, TweenInfo.new(0.5, Enum.EasingStyle.Elastic,Enum.EasingDirection.Out), {Size = UDim2.new(1.5,0,1.5,0)}):Play()
	end
	
	local MouseLeave = function()
		if IsDragging then return end
		TweenService:Create(GubbyResizer, TweenInfo.new(0.5, Enum.EasingStyle.Elastic,Enum.EasingDirection.Out), {Size = UDim2.new(1,0,1,0)}):Play()
	end
	
	local MouseUp = function(Input : InputObject, GameProcessed)
		if not IsDragging then return end 
		
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			IsDragging = false
		elseif Input.UserInputType == Enum.UserInputType.Touch then
			IsDragging = false
		end
		
		TweenService:Create(GubbyResizer, TweenInfo.new(0.5), {Rotation = 0}):Play()
		TweenService:Create(GubbyResizer, TweenInfo.new(0.4, Enum.EasingStyle.Elastic,Enum.EasingDirection.Out), {Size = UDim2.new(1.5,0,1.5,0)}):Play()
	end


	local MouseMoved = function()
		if not IsDragging then return end

		local MousePos = Vector2.new(MouseStartPos.X - Mouse.X, MouseStartPos.Y - Mouse.Y)
		
		
		local newgubbysizeX = math.clamp(MainFramePos.X - MousePos.X, 220,12000)
		local newgubbysizeY = math.clamp(MainFramePos.Y - MousePos.Y, 126, 12000)
		
		local differenceX = -MousePos.X
		local differenceY = -MousePos.Y
		local maindif = differenceX + differenceY
		local sizedif = math.clamp(maindif,-600,600)
		
		MainFrame.Size = UDim2.fromOffset(newgubbysizeX, newgubbysizeY)
		--TweenService:Create(GubbyResizer, TweenInfo.new(0.03), {Rotation = GubbyResizer.Rotation + (maindif / 40)}):Play()
		--TweenService:Create(GubbyResizer, TweenInfo.new(0.03), {Size = UDim2.new(.7,(sizedif / 10),.7,(sizedif / 10))}):Play()
	end
	
	table.insert(WindowConnections, DraggerFrame.MouseEnter:Connect(MouseHover))
	table.insert(WindowConnections, DraggerFrame.MouseLeave:Connect(MouseLeave))
	table.insert(WindowConnections, DraggerFrame.MouseButton1Down:Connect(MouseDown))
	table.insert(WindowConnections, UserInputService.InputEnded:Connect(MouseUp))
	table.insert(WindowConnections, Mouse.Move:Connect(MouseMoved))
end
GUBBYRESIZER(Main, GubbyResizer)















table.insert(WindowConnections, MinimizeButton.MouseButton1Click:Connect(function()
	local WindowIsMinimized = not Body.Visible

	Body.Visible = WindowIsMinimized
	MinimizeButton.ImageLabel.Rotation = WindowIsMinimized and 0 or 180
end))

CloseButton.MouseButton1Click:Once(function()
	for _, Connection in WindowConnections do
		Connection:Disconnect()
	end

	WindowConnections = nil
	PacketPocket:Destroy()
end)

local PacketButton = Assets.Packet
local DescriptionHeader = Description.TextLabel
LogList.ScrollingFrame.AutomaticCanvasSize = "Y"
LogList.ScrollingFrame.CanvasSize = UDim2.new(0,0,0,0)

------------------------------------ searching ------------------------------------
-- THIS IS THE CLEAR LOGS BUTTON
local SearchList = LogList.ScrollingFrame
table.insert(WindowConnections, LeftList.TextButton.MouseButton1Click:Connect(function()
	for _, EntryButton in SearchList:GetChildren() do
		if EntryButton.Name == "Packet" then
			EntryButton:Destroy()
		end
	end

	DescriptionHeader.Visible = false
	Text.ScrollingFrame.TextBox.Text = ""
end))

-- SEARCH TEXTBOX
table.insert(WindowConnections, SearchFrame.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
	local Search = SearchFrame.TextBox.Text:lower()

	if Search ~= "" and string.sub(Search,1,1) ~= " " then 

		for _, EntryButton in SearchList:GetChildren() do
			if EntryButton.Name == "Packet" then
				local Name, ID = EntryButton:GetAttribute("SearchName"), EntryButton:GetAttribute("SearchID")

				if string.match(Name, "^"..Search) or string.match(ID, "^"..Search) then
					EntryButton.Visible = true
				else
					EntryButton.Visible = false
				end
			end
		end

	else
		for _, EntryButton in SearchList:GetChildren() do
			if EntryButton.Name == "Packet" then
				EntryButton.Visible = true
			end	
		end
	end	
end))
------------------------------------ end ------------------------------------

--welcome notif
StarterGui:SetCore("SendNotification", {Title = "PacketPocket", Text = "Tool GUI made by ches, havfun", Duration = 5})

local function CreateEntry(PacketType: string, PacketData: string, HexID: string, Priority: number, Reliability: number, ButtonColor: "Red,Signal" | "Blue,Physics" | Color3, TextColor : "Red,Signal" | "Blue,Physics", RelevantTime, Length)
	local EntryButton = PacketButton:Clone()
	EntryButton.Parent = ScrollingFrame
	EntryButton.Visible = true

	-- real button
	EntryButton.Text = PacketType.." Packet"
	EntryButton.BackgroundColor3 = ButtonColor
	EntryButton.TextColor3 = TextColor
	EntryButton.Time.TextColor3 = TextColor

	-- real button, sub thing
	EntryButton.Time.Text = "("..RelevantTime..") | "..HexID

	-- making search data (. )Y( .) look, boobs :D
	EntryButton:SetAttribute("SearchName", PacketType:lower())
	EntryButton:SetAttribute("SearchID", HexID:lower())

	local EntryButtonClickConnection = EntryButton.MouseButton1Click:Connect(function()
		if not DescriptionHeader.Visible then DescriptionHeader.Visible = true end
		DescriptionHeader.Text = string.lower(PacketType).."packet "..HexID.." | priority: "..Priority.." | reliability: "..Reliability.." | length: "..Length

		-- texteditor
		Text.ScrollingFrame.TextBox.Text = PacketData

		-- header
		DescriptionHeader.BackgroundColor3 = ButtonColor
		DescriptionHeader.TextColor3 = TextColor
	end)

	table.insert(WindowConnections, EntryButtonClickConnection)

	EntryButton.Destroying:Once(function()
		EntryButtonClickConnection:Disconnect()
		table.remove(WindowConnections, table.find(WindowConnections, EntryButtonClickConnection))
	end)
end

local PP = {} -- packetpocket
PP.PostPacket = function(PacketType: string | "Signal" | "Physics", PacketData: string, HexID: string, Priority: number, Reliability: number, ButtonColor: "Red,Signal" | "Blue,Physics" | Color3, TextColor : "Red,Signal" | "Blue,Physics")
	if ButtonColor == "Red,Signal" then
		ButtonColor = Color3.fromRGB(100, 33, 36)
		TextColor = Color3.fromRGB(255, 121, 121)
	elseif ButtonColor == "Blue,Physics" then
		ButtonColor = Color3.fromRGB(43, 54, 76)
		TextColor = Color3.fromRGB(174, 198, 255)
	else
		ButtonColor = Color3.fromRGB(144,144,144)
		TextColor = Color3.fromRGB(212,212,212)
	end

	local Date = os.date("*t")
	local RelevantTime = Date.hour..":"..Date.min..":"..Date.sec
	local Length = string.len(PacketData or "")

	PacketType = PacketType or "n/a"
	PacketData = PacketData or ""
	HexID = HexID or "n/a"
	Priority = Priority or "n/a"
	Reliability = Reliability or "n/a"
	--buttoncolor accounted
	--textcolor accounted

	CreateEntry(PacketType, PacketData, HexID, Priority, Reliability, ButtonColor, TextColor, RelevantTime, Length)	
end

return PP

-- Format:
-- PacketType: string | "Signal" | "Physics", PacketData: string, HexID: string, Priority: number, Reliability: number, ButtonColor: "Red,Signal" | "Blue,Physics" | Color3, TextColor : "Red,Signal" | "Blue,Physics"

-- Format Note:
-- If you pick an existing color (red or blue), it'll pick the TextColor for you

-- Examples:
--	PP.PostPacket("Physics", [[2B 00 2T]], "0x2A", 2, 2, "Blue,Physics")
--	PP.PostPacket("Signal", [[2394239243 90823948984032890 234890423 89042389034 2980423890]], "1x44", 1, 5, "Red,Signal")
--	PP.PostPacket("BOI", [[WHAT U SAY ABOUT PHONK???????? RAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH]], "1x67", 1222, 5)
