-- Gui to Lua
-- Version: 3.2
-- Scripted and designed by Minx!#0005

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Dropping = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local AmountNeeded = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Calculate = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(121, 121, 121)
Frame.Position = UDim2.new(0.315789491, 0, 0.338289976, 0)
Frame.Size = UDim2.new(0, 468, 0, 260)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.27136755, 0, 0, 0)
Title.Size = UDim2.new(0, 214, 0, 54)
Title.Font = Enum.Font.Ubuntu
Title.Text = "Calculator"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Dropping.Name = "Dropping"
Dropping.Parent = Frame
Dropping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropping.Position = UDim2.new(0.0320512839, 0, 0.349999994, 0)
Dropping.Size = UDim2.new(0, 213, 0, 50)
Dropping.PlaceholderText = "Accounts Dropping"
Dropping.Text = ""
Dropping.TextColor3 = Color3.fromRGB(0, 0, 0)
Dropping.TextScaled = true
Dropping.TextSize = 14.000
Dropping.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Dropping

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Frame

AmountNeeded.Name = "Amount Needed"
AmountNeeded.Parent = Frame
AmountNeeded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AmountNeeded.Position = UDim2.new(0.512820482, 0, 0.349999994, 0)
AmountNeeded.Size = UDim2.new(0, 213, 0, 50)
AmountNeeded.PlaceholderText = "Amount To Drop"
AmountNeeded.Text = ""
AmountNeeded.TextColor3 = Color3.fromRGB(0, 0, 0)
AmountNeeded.TextScaled = true
AmountNeeded.TextSize = 14.000
AmountNeeded.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = AmountNeeded

Calculate.Name = "Calculate"
Calculate.Parent = Frame
Calculate.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Calculate.Position = UDim2.new(0.200854719, 0, 0.661538482, 0)
Calculate.Size = UDim2.new(0, 280, 0, 69)
Calculate.Font = Enum.Font.SourceSans
Calculate.Text = "Calculate Time Needed"
Calculate.TextColor3 = Color3.fromRGB(0, 0, 0)
Calculate.TextScaled = true
Calculate.TextSize = 14.000
Calculate.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Calculate

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(200, 23, 23)
Close.Position = UDim2.new(0.869658172, 0, 0.0307692308, 0)
Close.Size = UDim2.new(0, 46, 0, 46)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(9, 9, 9)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = Close

--Scripting/Functions:

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Loaded",
	Text = "Loaded script sucessfuly!",
	Duration = 10,
})

local Debounce = false

Calculate.Activated:Connect(function()
	if Debounce==false then
		Debounce = true
		if tonumber(Dropping.Text) and tonumber(AmountNeeded.Text) then
			local A1 = tonumber(Dropping.Text)
			local A2 = tonumber(AmountNeeded.Text)
			local A3 = 7000*A1
			local A4 = A2/A3
			local A5 = A4*15
			local B1 = A5/60
			local B2 = B1/60
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Calculated Sucessfuly",
				Text = "In minutes: "..B1.."\nIn hours: "..B2,
				Duration = 10,
			})
			Debounce = false
		end
	end
end)

Close.Activated:Connect(function()
	ScreenGui:Destroy()
	script:Destroy()
end)
