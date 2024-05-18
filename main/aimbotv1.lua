local TweenService = game:GetService("TweenService")

local function createInstance(class, properties)
    local instance = Instance.new(class)
    for property, value in pairs(properties) do
        instance[property] = value
    end
    return instance
end

local screenGui = createInstance("ScreenGui", {
    ResetOnSpawn = false,
    Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
})

local frame = createInstance("Frame", {
    Size = UDim2.new(0, 140, 0, 160),
    Position = UDim2.new(0.5, -70, 0.5, -80),
    BackgroundColor3 = Color3.fromRGB(40, 40, 40),
    BorderSizePixel = 0,
    Parent = screenGui
})

local titleBar = createInstance("Frame", {
    Size = UDim2.new(1, 0, 0, 20),
    BackgroundColor3 = Color3.fromRGB(30, 30, 30),
    BorderSizePixel = 0,
    Parent = frame
})

local titleLabel = createInstance("TextLabel", {
    Size = UDim2.new(1, 0, 1, 0),
    Text = "aimbot v1",
    BackgroundTransparency = 1,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.SourceSans,
    TextSize = 18,
    Parent = titleBar
})

local onButton = createInstance("TextButton", {
    Size = UDim2.new(0, 120, 0, 40),
    Position = UDim2.new(0, 10, 0, 30),
    Text = "Aimbot: Off",
    BackgroundColor3 = Color3.fromRGB(200, 0, 0), -- Start with red
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.SourceSans,
    TextSize = 24,
    BorderSizePixel = 0,
    Parent = frame
})

local checkBoxFrame = createInstance("Frame", {
    Size = UDim2.new(0, 120, 0, 20),
    Position = UDim2.new(0, 10, 0, 80),
    BackgroundTransparency = 1,
    Parent = frame
})

local checkBoxLabel = createInstance("TextLabel", {
    Size = UDim2.new(1, -20, 1, 0),
    Position = UDim2.new(0, 20, 0, 0),
    Text = "Team Check",
    BackgroundTransparency = 1,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.SourceSans,
    TextSize = 18,
    Parent = checkBoxFrame
})

local checkBox = createInstance("TextButton", {
    Size = UDim2.new(0, 20, 0, 20),
    Position = UDim2.new(0, 0, 0, 0),
    Text = "",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BorderSizePixel = 1,
    Parent = checkBoxFrame
})

-- Toggle Aimbot Button functionality
local aimbotEnabled = false
onButton.MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    onButton.Text = "Aimbot: " .. (aimbotEnabled and "On" or "Off")
    
    local goal = {
        BackgroundColor3 = aimbotEnabled and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0)
    }
    
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tweenColor = TweenService:Create(onButton, tweenInfo, goal)
    tweenColor:Play()
end)

-- Checkbox functionalities
local teamCheck = false
checkBox.MouseButton1Click:Connect(function()
    teamCheck = not teamCheck
    local goal = { BackgroundColor3 = teamCheck and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0) }
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(checkBox, tweenInfo, goal)
    tween:Play()
end)

-- Make the GUI draggable
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Variables
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()

local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            local character = player.Character
            if character and character:FindFirstChild("Head") then
                local head = character.Head
                local distance = (head.Position - localPlayer.Character.Head.Position).magnitude
                
                if teamCheck and player.Team == localPlayer.Team then
                    continue
                end
                
                if player.Character.Humanoid.Health <= 0 then
                    continue
                end

                if distance < shortestDistance then
                    closestPlayer = player
                    shortestDistance = distance
                end
            end
        end
    end

    return closestPlayer
end

local currentTween

local function aimAt(player)
    if player and player.Character and player.Character:FindFirstChild("Head") then
        local head = player.Character.Head
        local camera = workspace.CurrentCamera
        
        -- Cancel any previous tween
        if currentTween then
            currentTween:Cancel()
        end
        
        -- Create a new tween to smoothly transition the camera
        local goal = { CFrame = CFrame.new(camera.CFrame.Position, head.Position) }
        local tweenInfo = TweenInfo.new(0.036, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        currentTween = TweenService:Create(camera, tweenInfo, goal)
        currentTween:Play()
    end
end

RunService.RenderStepped:Connect(function()
    if aimbotEnabled then
        local closestPlayer = getClosestPlayer()
        aimAt(closestPlayer)
    end
end)
