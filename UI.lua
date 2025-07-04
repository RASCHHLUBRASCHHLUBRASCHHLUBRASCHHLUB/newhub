-- Sirius UI Library v1.0
-- Por: [Seu Nome]
-- Baseado no design Sirius Premium

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Sirius = {}
local elements = {}
local themes = {
    Dark = {
        Background = Color3.fromRGB(25, 25, 30),
        Header = Color3.fromRGB(30, 35, 45),
        Text = Color3.fromRGB(240, 240, 240),
        Button = Color3.fromRGB(65, 125, 200),
        Toggle = {
            On = Color3.fromRGB(80, 180, 120),
            Off = Color3.fromRGB(70, 70, 80)
        },
        Slider = {
            Track = Color3.fromRGB(50, 55, 65),
            Progress = Color3.fromRGB(70, 150, 220)
        }
    },
    Midnight = {
        Background = Color3.fromRGB(20, 22, 35),
        Header = Color3.fromRGB(35, 40, 60),
        Text = Color3.fromRGB(220, 220, 230),
        Button = Color3.fromRGB(85, 110, 190),
        Toggle = {
            On = Color3.fromRGB(90, 160, 200),
            Off = Color3.fromRGB(60, 65, 85)
        }
    }
}

-- Função para criar efeitos de UI
local function createRippleEffect(button)
    button.MouseButton1Click:Connect(function(x, y)
        local ripple = Instance.new("Frame")
        ripple.Name = "RippleEffect"
        ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ripple.BackgroundTransparency = 0.8
        ripple.Size = UDim2.new(0, 0, 0, 0)
        ripple.Position = UDim2.new(0, x - button.AbsolutePosition.X, 0, y - button.AbsolutePosition.Y)
        ripple.Parent = button
        ripple.ZIndex = 10
        ripple.AnchorPoint = Vector2.new(0.5, 0.5)
        
        local tween = TweenService:Create(ripple, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {
            Size = UDim2.new(2, 0, 2, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            BackgroundTransparency = 1
        })
        
        tween:Play()
        tween.Completed:Wait()
        ripple:Destroy()
    end)
end

-- Criação da janela principal
function Sirius:CreateWindow(options)
    options = options or {}
    local theme = themes[options.Theme or "Dark"]
    
    local gui = Instance.new("ScreenGui")
    gui.Name = options.Name or "SiriusUI"
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
    
    if options.Parent then
        gui.Parent = options.Parent
    else
        gui.Parent = game:GetService("CoreGui")
    end
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.BackgroundColor3 = theme.Background
    mainFrame.Size = UDim2.new(0, 350, 0, 400)
    mainFrame.Position = UDim2.new(0.5, -175, 0.5, -200)
    mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    mainFrame.Parent = gui
    
    local header = Instance.new("Frame")
    header.Name = "Header"
    header.BackgroundColor3 = theme.Header
    header.Size = UDim2.new(1, 0, 0, 40)
    header.Parent = mainFrame
    
    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Text = options.Title or "Sirius UI"
    title.Font = Enum.Font.GothamBold
    title.TextColor3 = theme.Text
    title.TextSize = 18
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(0, 200, 1, 0)
    title.Position = UDim2.new(0, 15, 0, 0)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = header
    
    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Text = "X"
    closeButton.Font = Enum.Font.GothamBold
    closeButton.TextColor3 = theme.Text
    closeButton.TextSize = 18
    closeButton.BackgroundTransparency = 1
    closeButton.Size = UDim2.new(0, 40, 1, 0)
    closeButton.Position = UDim2.new(1, -40, 0, 0)
    closeButton.Parent = header
    
    closeButton.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)
    
    local content = Instance.new("Frame")
    content.Name = "Content"
    content.BackgroundTransparency = 1
    content.Size = UDim2.new(1, -20, 1, -60)
    content.Position = UDim2.new(0, 10, 0, 50)
    content.Parent = mainFrame
    
    local uiListLayout = Instance.new("UIListLayout")
    uiListLayout.Padding = UDim.new(0, 10)
    uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout.Parent = content
    
    -- Função para arrastar a janela
    local dragging = false
    local dragStart, frameStart
    
    header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            frameStart = mainFrame.Position
        end
    end)
    
    header.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            mainFrame.Position = UDim2.new(
                frameStart.X.Scale, 
                frameStart.X.Offset + delta.X,
                frameStart.Y.Scale, 
                frameStart.Y.Offset + delta.Y
            )
        end
    end)
    
    local window = {
        Gui = gui,
        MainFrame = mainFrame,
        Content = content,
        Theme = theme
    }
    
    table.insert(elements, window)
    return window
end

-- Criação de toggle
function Sirius:CreateToggle(window, options)
    options = options or {}
    local theme = window.Theme
    
    local toggleFrame = Instance.new("Frame")
    toggleFrame.Name = "Toggle"
    toggleFrame.BackgroundTransparency = 1
    toggleFrame.Size = UDim2.new(1, 0, 0, 30)
    toggleFrame.LayoutOrder = #window.Content:GetChildren()
    toggleFrame.Parent = window.Content
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Text = options.Text or "Toggle"
    label.Font = Enum.Font.Gotham
    label.TextColor3 = theme.Text
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(0.7, 0, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Parent = toggleFrame
    
    local toggleButton = Instance.new("TextButton")
    toggleButton.Name = "ToggleButton"
    toggleButton.BackgroundColor3 = theme.Toggle.Off
    toggleButton.Size = UDim2.new(0, 50, 0, 25)
    toggleButton.Position = UDim2.new(1, -50, 0.5, -12.5)
    toggleButton.AnchorPoint = Vector2.new(1, 0.5)
    toggleButton.AutoButtonColor = false
    toggleButton.Parent = toggleFrame
    
    local toggleCircle = Instance.new("Frame")
    toggleCircle.Name = "ToggleCircle"
    toggleCircle.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    toggleCircle.Size = UDim2.new(0, 20, 0, 20)
    toggleCircle.Position = UDim2.new(0, 3, 0.5, -10)
    toggleCircle.AnchorPoint = Vector2.new(0, 0.5)
    toggleCircle.Parent = toggleButton
    
    -- Arredondamento
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = toggleCircle
    
    local cornerBtn = Instance.new("UICorner")
    cornerBtn.CornerRadius = UDim.new(1, 0)
    cornerBtn.Parent = toggleButton
    
    local state = options.Default or false
    
    local function updateToggle()
        if state then
            TweenService:Create(toggleButton, TweenInfo.new(0.2), {
                BackgroundColor3 = theme.Toggle.On
            }):Play()
            
            TweenService:Create(toggleCircle, TweenInfo.new(0.2), {
                Position = UDim2.new(1, -23, 0.5, -10)
            }):Play()
        else
            TweenService:Create(toggleButton, TweenInfo.new(0.2), {
                BackgroundColor3 = theme.Toggle.Off
            }):Play()
            
            TweenService:Create(toggleCircle, TweenInfo.new(0.2), {
                Position = UDim2.new(0, 3, 0.5, -10)
            }):Play()
        end
    end
    
    toggleButton.MouseButton1Click:Connect(function()
        state = not state
        updateToggle()
        if options.Callback then
            options.Callback(state)
        end
    end)
    
    updateToggle()
    
    return {
        SetState = function(self, value)
            state = value
            updateToggle()
        end,
        GetState = function(self)
            return state
        end
    }
end

-- Criação de slider
function Sirius:CreateSlider(window, options)
    options = options or {}
    local theme = window.Theme
    
    local sliderFrame = Instance.new("Frame")
    sliderFrame.Name = "Slider"
    sliderFrame.BackgroundTransparency = 1
    sliderFrame.Size = UDim2.new(1, 0, 0, 60)
    sliderFrame.LayoutOrder = #window.Content:GetChildren()
    sliderFrame.Parent = window.Content
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Text = options.Text or "Slider"
    label.Font = Enum.Font.Gotham
    label.TextColor3 = theme.Text
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Parent = sliderFrame
    
    local valueLabel = Instance.new("TextLabel")
    valueLabel.Name = "ValueLabel"
    valueLabel.Text = tostring(options.Min or 0)
    valueLabel.Font = Enum.Font.GothamBold
    valueLabel.TextColor3 = theme.Text
    valueLabel.TextSize = 14
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right
    valueLabel.BackgroundTransparency = 1
    valueLabel.Size = UDim2.new(0, 50, 0, 20)
    valueLabel.Position = UDim2.new(1, -50, 0, 0)
    valueLabel.Parent = sliderFrame
    
    local track = Instance.new("Frame")
    track.Name = "Track"
    track.BackgroundColor3 = theme.Slider.Track
    track.Size = UDim2.new(1, 0, 0, 8)
    track.Position = UDim2.new(0, 0, 1, -15)
    track.Parent = sliderFrame
    
    local progress = Instance.new("Frame")
    progress.Name = "Progress"
    progress.BackgroundColor3 = theme.Slider.Progress
    progress.Size = UDim2.new(0, 0, 1, 0)
    progress.Parent = track
    
    local sliderButton = Instance.new("TextButton")
    sliderButton.Name = "SliderButton"
    sliderButton.Text = ""
    sliderButton.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    sliderButton.Size = UDim2.new(0, 20, 0, 20)
    sliderButton.Position = UDim2.new(0, 0, 0.5, -10)
    sliderButton.AnchorPoint = Vector2.new(0, 0.5)
    sliderButton.AutoButtonColor = false
    sliderButton.Parent = track
    
    -- Arredondamento
    local cornerTrack = Instance.new("UICorner")
    cornerTrack.CornerRadius = UDim.new(1, 0)
    cornerTrack.Parent = track
    
    local cornerProgress = Instance.new("UICorner")
    cornerProgress.CornerRadius = UDim.new(1, 0)
    cornerProgress.Parent = progress
    
    local cornerBtn = Instance.new("UICorner")
    cornerBtn.CornerRadius = UDim.new(1, 0)
    cornerBtn.Parent = sliderButton
    
    local min = options.Min or 0
    local max = options.Max or 100
    local step = options.Step or 1
    local value = options.Default or min
    
    local function updateSlider()
        local percent = (value - min) / (max - min)
        progress.Size = UDim2.new(percent, 0, 1, 0)
        sliderButton.Position = UDim2.new(percent, 0, 0.5, -10)
        valueLabel.Text = string.format("%.1f", value)
        
        if options.Callback then
            options.Callback(value)
        end
    end
    
    local dragging = false
    
    sliderButton.MouseButton1Down:Connect(function()
        dragging = true
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    track.MouseButton1Down:Connect(function(x)
        if not dragging then
            local percent = (x - track.AbsolutePosition.X) / track.AbsoluteSize.X
            value = math.clamp(min + (max - min) * percent, min, max)
            if step > 0 then
                value = math.floor(value / step) * step
            end
            updateSlider()
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local percent = (input.Position.X - track.AbsolutePosition.X) / track.AbsoluteSize.X
            percent = math.clamp(percent, 0, 1)
            value = min + (max - min) * percent
            if step > 0 then
                value = math.floor(value / step) * step
            end
            updateSlider()
        end
    end)
    
    updateSlider()
    
    return {
        SetValue = function(self, val)
            value = math.clamp(val, min, max)
            updateSlider()
        end,
        GetValue = function(self)
            return value
        end
    }
end

-- Criação de botão
function Sirius:CreateButton(window, options)
    options = options or {}
    local theme = window.Theme
    
    local button = Instance.new("TextButton")
    button.Name = "Button"
    button.Text = options.Text or "Button"
    button.Font = Enum.Font.GothamBold
    button.TextColor3 = theme.Text
    button.TextSize = 14
    button.BackgroundColor3 = theme.Button
    button.Size = UDim2.new(1, 0, 0, 35)
    button.LayoutOrder = #window.Content:GetChildren()
    button.AutoButtonColor = false
    button.Parent = window.Content
    
    -- Efeito de ripple
    createRippleEffect(button)
    
    -- Arredondamento
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = button
    
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(
                theme.Button.R * 255 * 1.2,
                theme.Button.G * 255 * 1.2,
                theme.Button.B * 255 * 1.2
            )
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = theme.Button
        }):Play()
    end)
    
    button.MouseButton1Click:Connect(function()
        if options.Callback then
            options.Callback()
        end
    end)
    
    return button
end

-- Criação de textbox
function Sirius:CreateTextbox(window, options)
    options = options or {}
    local theme = window.Theme
    
    local textboxFrame = Instance.new("Frame")
    textboxFrame.Name = "Textbox"
    textboxFrame.BackgroundTransparency = 1
    textboxFrame.Size = UDim2.new(1, 0, 0, 50)
    textboxFrame.LayoutOrder = #window.Content:GetChildren()
    textboxFrame.Parent = window.Content
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Text = options.Text or "Input:"
    label.Font = Enum.Font.Gotham
    label.TextColor3 = theme.Text
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Parent = textboxFrame
    
    local inputFrame = Instance.new("Frame")
    inputFrame.Name = "InputFrame"
    inputFrame.BackgroundColor3 = theme.Header
    inputFrame.Size = UDim2.new(1, 0, 0, 30)
    inputFrame.Position = UDim2.new(0, 0, 0, 25)
    inputFrame.Parent = textboxFrame
    
    local textbox = Instance.new("TextBox")
    textbox.Name = "TextBox"
    textbox.Text = options.Placeholder or ""
    textbox.PlaceholderText = options.Placeholder or "Type here..."
    textbox.Font = Enum.Font.Gotham
    textbox.TextColor3 = theme.Text
    textbox.TextSize = 14
    textbox.TextXAlignment = Enum.TextXAlignment.Left
    textbox.BackgroundTransparency = 1
    textbox.Size = UDim2.new(1, -10, 1, 0)
    textbox.Position = UDim2.new(0, 5, 0, 0)
    textbox.Parent = inputFrame
    
    -- Arredondamento
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = inputFrame
    
    textbox.Focused:Connect(function()
        TweenService:Create(inputFrame, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(
                theme.Header.R * 255 * 1.2,
                theme.Header.G * 255 * 1.2,
                theme.Header.B * 255 * 1.2
            )
        }):Play()
    end)
    
    textbox.FocusLost:Connect(function()
        TweenService:Create(inputFrame, TweenInfo.new(0.2), {
            BackgroundColor3 = theme.Header
        }):Play()
        
        if options.Callback then
            options.Callback(textbox.Text)
        end
    end)
    
    return {
        SetText = function(self, text)
            textbox.Text = text
        end,
        GetText = function(self)
            return textbox.Text
        end
    }
end

-- Criação de dropdown
function Sirius:CreateDropdown(window, options)
    options = options or {}
    local theme = window.Theme
    
    local dropdownFrame = Instance.new("Frame")
    dropdownFrame.Name = "Dropdown"
    dropdownFrame.BackgroundTransparency = 1
    dropdownFrame.Size = UDim2.new(1, 0, 0, 30)
    dropdownFrame.LayoutOrder = #window.Content:GetChildren()
    dropdownFrame.ClipsDescendants = true
    dropdownFrame.Parent = window.Content
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Text = options.Text or "Select:"
    label.Font = Enum.Font.Gotham
    label.TextColor3 = theme.Text
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Parent = dropdownFrame
    
    local mainButton = Instance.new("TextButton")
    mainButton.Name = "MainButton"
    mainButton.Text = options.Default or "Select..."
    mainButton.Font = Enum.Font.Gotham
    mainButton.TextColor3 = theme.Text
    mainButton.TextSize = 14
    mainButton.TextXAlignment = Enum.TextXAlignment.Left
    mainButton.BackgroundColor3 = theme.Header
    mainButton.AutoButtonColor = false
    mainButton.Size = UDim2.new(1, 0, 0, 30)
    mainButton.Position = UDim2.new(0, 0, 0, 25)
    mainButton.Parent = dropdownFrame
    
    local arrow = Instance.new("ImageLabel")
    arrow.Name = "Arrow"
    arrow.Image = "rbxassetid://6034818372" -- Seta padrão
    arrow.BackgroundTransparency = 1
    arrow.Size = UDim2.new(0, 20, 0, 20)
    arrow.Position = UDim2.new(1, -25, 0.5, -10)
    arrow.AnchorPoint = Vector2.new(1, 0.5)
    arrow.Parent = mainButton
    
    local optionsFrame = Instance.new("Frame")
    optionsFrame.Name = "Options"
    optionsFrame.BackgroundColor3 = theme.Background
    optionsFrame.Size = UDim2.new(1, 0, 0, 0)
    optionsFrame.Position = UDim2.new(0, 0, 0, 60)
    optionsFrame.Visible = false
    optionsFrame.Parent = dropdownFrame
    
    local optionsList = Instance.new("UIListLayout")
    optionsList.Padding = UDim.new(0, 2)
    optionsList.Parent = optionsFrame
    
    -- Arredondamento
    local cornerBtn = Instance.new("UICorner")
    cornerBtn.CornerRadius = UDim.new(0, 4)
    cornerBtn.Parent = mainButton
    
    local cornerOptions = Instance.new("UICorner")
    cornerOptions.CornerRadius = UDim.new(0, 4)
    cornerOptions.Parent = optionsFrame
    
    local isOpen = false
    local selected = options.Default
    local optionsTable = options.Options or {}
    
    local function toggleDropdown()
        isOpen = not isOpen
        
        if isOpen then
            optionsFrame.Visible = true
            TweenService:Create(arrow, TweenInfo.new(0.2), {
                Rotation = 180
            }):Play()
            
            TweenService:Create(optionsFrame, TweenInfo.new(0.2), {
                Size = UDim2.new(1, 0, 0, #optionsTable * 32)
            }):Play()
            
            TweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                Size = UDim2.new(1, 0, 0, 60 + #optionsTable * 32)
            }):Play()
        else
            TweenService:Create(arrow, TweenInfo.new(0.2), {
                Rotation = 0
            }):Play()
            
            TweenService:Create(optionsFrame, TweenInfo.new(0.2), {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
            
            TweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                Size = UDim2.new(1, 0, 0, 30)
            }):Play()
            
            wait(0.2)
            optionsFrame.Visible = false
        end
    end
    
    local function selectOption(option)
        selected = option
        mainButton.Text = option
        toggleDropdown()
        
        if options.Callback then
            options.Callback(option)
        end
    end
    
    mainButton.MouseButton1Click:Connect(toggleDropdown)
    
    -- Criar opções
    for i, option in ipairs(optionsTable) do
        local optionButton = Instance.new("TextButton")
        optionButton.Name = option
        optionButton.Text = option
        optionButton.Font = Enum.Font.Gotham
        optionButton.TextColor3 = theme.Text
        optionButton.TextSize = 14
        optionButton.TextXAlignment = Enum.TextXAlignment.Left
        optionButton.BackgroundColor3 = theme.Header
        optionButton.AutoButtonColor = false
        optionButton.Size = UDim2.new(1, 0, 0, 30)
        optionButton.LayoutOrder = i
        optionButton.Parent = optionsFrame
        
        optionButton.MouseEnter:Connect(function()
            TweenService:Create(optionButton, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(
                    theme.Header.R * 255 * 1.2,
                    theme.Header.G * 255 * 1.2,
                    theme.Header.B * 255 * 1.2
                )
            }):Play()
        end)
        
        optionButton.MouseLeave:Connect(function()
            TweenService:Create(optionButton, TweenInfo.new(0.2), {
                BackgroundColor3 = theme.Header
            }):Play()
        end)
        
        optionButton.MouseButton1Click:Connect(function()
            selectOption(option)
        end)
        
        -- Arredondamento
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 4)
        corner.Parent = optionButton
    end
    
    return {
        SetOptions = function(self, newOptions)
            optionsTable = newOptions
            -- Limpar opções existentes
            for _, child in ipairs(optionsFrame:GetChildren()) do
                if child:IsA("TextButton") then
                    child:Destroy()
                end
            end
            -- Recriar opções
            for i, option in ipairs(optionsTable) do
                -- (Código de criação igual acima)
            end
        end,
        GetSelected = function(self)
            return selected
        end,
        SetSelected = function(self, value)
            if table.find(optionsTable, value) then
                selected = value
                mainButton.Text = value
            end
        end
    }
end

return Sirius
