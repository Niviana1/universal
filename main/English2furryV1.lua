local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local translatorGui = Instance.new("ScreenGui")
translatorGui.Parent = CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.4, 0)
frame.Position = UDim2.new(0.3, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(41, 41, 41) -- Dark background color
frame.BorderSizePixel = 0
frame.Active = true
frame.Parent = translatorGui

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0.1, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(91, 91, 91) -- Darker title bar color
titleBar.BorderSizePixel = 0
titleBar.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.Text = "English to Furry Translator"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.Parent = titleBar

local function createTextBox(parent, size, position, placeholderText)
    local textBox = Instance.new("TextBox")
    textBox.Size = size
    textBox.Position = position
    textBox.PlaceholderText = placeholderText
    textBox.BackgroundColor3 = Color3.fromRGB(61, 61, 61) -- Darker text box color
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
    textBox.Font = Enum.Font.GothamSemibold
    textBox.TextSize = 14
    textBox.Parent = parent
    textBox.ClipsDescendants = true
    textBox.TextTruncate = Enum.TextTruncate.AtEnd
    return textBox
end

local input = createTextBox(frame, UDim2.new(0.9, 0, 0.25, 0), UDim2.new(0.05, 0, 0.2, 0), "Enter text to translate")
local output = createTextBox(frame, UDim2.new(0.9, 0, 0.25, 0), UDim2.new(0.05, 0, 0.5, 0), "")
output.TextEditable = false

local function createButton(parent, size, position, text)
    local button = Instance.new("TextButton")
    button.Size = size
    button.Position = position
    button.Text = text
    button.BackgroundColor3 = Color3.fromRGB(91, 91, 91) -- Darker button color
    button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
    button.Font = Enum.Font.GothamBold
    button.TextSize = 14
    button.Parent = parent
    button.ClipsDescendants = true
    button.AutoButtonColor = false
    return button
end

local translateButton = createButton(frame, UDim2.new(0.4, 0, 0.1, 0), UDim2.new(0.05, 0, 0.8, 0), "Translate")
local copyButton = createButton(frame, UDim2.new(0.4, 0, 0.1, 0), UDim2.new(0.55, 0, 0.8, 0), "Copy")

local round = Instance.new("UICorner")
round.CornerRadius = UDim.new(0.5,0)
round.Parent = translateButton
round.Parent = copyButton

local roundTranslateButton = Instance.new("UICorner")
roundTranslateButton.CornerRadius = round.CornerRadius
roundTranslateButton.Parent = translateButton

local toggleButton = createButton(translatorGui, UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.01, 0, 0.45, 0), "Toggle")
toggleButton.BackgroundTransparency = 0.7

local isVisible = true

local function enableDragging(gui) -- gpt
    local dragging
    local dragInput
    local dragStart
    local startPos

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

enableDragging(frame)
enableDragging(toggleButton)

toggleButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    frame.Visible = isVisible
end)

local function translateText(text)
    local translations = {
        ["awful"] = "pawful",
        ["fuck"] = "fluff",
        ["father"] = "daddy",
        ["for"] = "fur",
        ["hell"] = "hecc",
        ["hi"] = "hai",
        ["hyena"] = "yeen",
        ["lmao"] = "hehe~",
        ["love"] = "wuv",
        ["perfect"] = "purrfect",
        ["persona"] = "fursona",
        ["pervert"] = "furvert",
        ["roar"] = "rawr",
        ["shout"] = "awoo",
        ["the"] = "teh",
        ["this"] = "dis",
        ["what"] = "wat",
        ["with"] = "wif",
        ["you"] = "chu",
        ["your"] = "ur"
    }
    text = text:gsub("[lr]", "w"):gsub("[LR]", "W"):gsub(",", "~"):gsub(";", "~"):gsub("!", "owo!"):gsub("?", "uwu?"):gsub("(%s%s+)", " uwu "):gsub(":D", "UwU"):gsub(":O", "OwO"):gsub("XD", "X3")
    for word, translation in pairs(translations) do
        text = text:gsub(word, translation)
    end
    return text
end

translateButton.MouseButton1Click:Connect(function()
    if input.Text ~= "" then
        output.Text = translateText(input.Text)
    end
end)

copyButton.MouseButton1Click:Connect(function()
    setclipboard(tostring(output.Text))
end)
