-- Chara Library Initialization
local CharaLib = {}

function CharaLib:CreateWindow(title)
    local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
    local mainFrame = Instance.new("Frame", screenGui)
    mainFrame.Size = UDim2.new(0, 400, 0, 600)
    mainFrame.Position = UDim2.new(0.5, -200, 0.5, -300)
    mainFrame.BackgroundColor3 = Color3.fromRGB(100, 0, 0) -- Dark red to match Chara's theme

    local titleLabel = Instance.new("TextLabel", mainFrame)
    titleLabel.Size = UDim2.new(1, 0, 0, 50)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.Fantasy
    titleLabel.TextSize = 24

    local contentFrame = Instance.new("Frame", mainFrame)
    contentFrame.Size = UDim2.new(1, 0, 1, -50)
    contentFrame.Position = UDim2.new(0, 0, 0, 50)
    contentFrame.BackgroundColor3 = Color3.fromRGB(80, 0, 0)

    local uiListLayout = Instance.new("UIListLayout", contentFrame)
    uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    return {Main = mainFrame, Content = contentFrame}
end

function CharaLib:CreateButton(parent, text, callback)
    local button = Instance.new("TextButton", parent)
    button.Size = UDim2.new(1, -10, 0, 50)
    button.Position = UDim2.new(0, 5, 0, 5)
    button.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Fantasy
    button.TextSize = 18
    button.MouseButton1Click:Connect(callback)
end

function CharaLib:CreateToggle(parent, text, callback)
    local toggleFrame = Instance.new("Frame", parent)
    toggleFrame.Size = UDim2.new(1, -10, 0, 50)
    toggleFrame.Position = UDim2.new(0, 5, 0, 5)
    toggleFrame.BackgroundColor3 = Color3.fromRGB(120, 0, 0)

    local toggleLabel = Instance.new("TextLabel", toggleFrame)
    toggleLabel.Size = UDim2.new(0.8, 0, 1, 0)
    toggleLabel.Position = UDim2.new(0, 5, 0, 0)
    toggleLabel.Text = text
    toggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleLabel.Font = Enum.Font.Fantasy
    toggleLabel.TextSize = 18

    local toggleButton = Instance.new("TextButton", toggleFrame)
    toggleButton.Size = UDim2.new(0.2, -5, 1, -10)
    toggleButton.Position = UDim2.new(0.8, 0, 0.5, -25)
    toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    toggleButton.Text = "Off"
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.Font = Enum.Font.Fantasy
    toggleButton.TextSize = 18

    toggleButton.MouseButton1Click:Connect(function()
        local isActive = toggleButton.Text == "On"
        toggleButton.Text = isActive and "Off" or "On"
        toggleButton.BackgroundColor3 = isActive and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
        callback(not isActive)
    end)
end

return CharaLib
