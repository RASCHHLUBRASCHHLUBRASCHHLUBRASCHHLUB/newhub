local IceHub = {}
local config = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMae17/API/refs/heads/main/IceHub"))()
local gameMode = nil
local isChristmas = config._event_connection._CHRISTMAS_CONNECTION._christmas
local isHalloween = config._event_connection._HALLOWEEN_CONNECTION._halloween
local titleColor, buttonColor, labelColor, versionText
if isHalloween then
    titleColor = config._rbxev_mode._halloween_mode._ttl
    buttonColor = config._rbxev_mode._halloween_mode._bps
    labelColor = config._rbxev_mode._halloween_mode._lblt
    versionText = config._rbxev_mode._halloween_mode._te
else
    buttonColor = nil
    labelColor = nil
    versionText = nil
    titleColor = nil
end
if isChristmas then
    titleColor = config._rbxev_mode._christmas_mode._ttl
    buttonColor = config._rbxev_mode._christmas_mode._bps
    labelColor = config._rbxev_mode._christmas_mode._lblt
    versionText = config._rbxev_mode._christmas_mode._te
end
if not (isHalloween or isChristmas) and true or gameMode then
    titleColor = config._rbxev_mode._normal_mode._ttl
    buttonColor = config._rbxev_mode._normal_mode._bps
    labelColor = config._rbxev_mode._normal_mode._lblt
    versionText = config._rbxev_mode._normal_mode._te
end
game.Players.LocalPlayer.Idled:Connect(function()
    local virtualUser = game:GetService("VirtualUser")
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
end)
local activePages = {}
local tabButtonList = {}
local tweenService = game:GetService("TweenService")
if game.CoreGui:FindFirstChild("IceHub") then
    game.CoreGui:FindFirstChild("IceHub"):Destroy()
end
getgenv().getrawmetatable = function(placeholder)
    while true do
    end
end
getgenv().clonefunction = function(placeholder)
    while true do
    end
end
getgenv().rconsoleinput = function(placeholder)
    while true do
    end
end
getgenv().rconsoleinfo = function(placeholder)
    while true do
    end
end
getgenv().rconsolename = function(placeholder)
    while true do
    end
end
getgenv().SimpleSpyShutdown = function(placeholder)
    while true do
    end
end
getgenv().GetPropertyChangedSignal = function(placeholder)
    while true do
    end
end
getgenv().saveinstance = function(placeholder)
    while true do
    end
end
getgenv().SimpleSpy = function(placeholder)
    while true do
    end
end
getgenv().rconsolecreate = function(placeholder)
    while true do
    end
end
getgenv().rconsole = function(placeholder)
    while true do
    end
end
getgenv().rawset = function(placeholder)
    while true do
    end
end
function IceHub.CreateMain(gameName, subtitle)
    local screenGui = Instance.new("ScreenGui")
    NotifyFolder = Instance.new("Folder")
    MainFrameShadow = Instance.new("ImageLabel")
    MainFrame = Instance.new("Frame")
    mainFrameCorner = Instance.new("UICorner")
    TabContainer = Instance.new("Frame")
    tabContainerCorner = Instance.new("UICorner")
    tabScrollFrame = Instance.new("ScrollingFrame")
    tabListLayout = Instance.new("UIListLayout")
    emptyFrame1 = Instance.new("Frame")
    FrameFolder = Instance.new("Folder")
    MenuPage = Instance.new("ScrollingFrame")
    LocalFrame = Instance.new("Frame")
    localFrameCorner = Instance.new("UICorner")
    PlayerImageLabel = Instance.new("ImageLabel")
    playerImageCorner = Instance.new("UICorner")
    playerImageStroke = Instance.new("UIStroke")
    NameLabel = Instance.new("TextLabel")
    nameLabelCorner = Instance.new("UICorner")
    nameLabelStroke = Instance.new("UIStroke")
    Discord = Instance.new("TextButton")
    localFrameStroke = Instance.new("UIStroke")
    menuPageLayout = Instance.new("UIListLayout")
    menuPagePadding = Instance.new("UIPadding")
    Credits = Instance.new("Frame")
    Ice = Instance.new("Frame")
    iceCorner = Instance.new("UICorner")
    Description = Instance.new("TextLabel")
    descriptionCorner = Instance.new("UICorner")
    iceStroke = Instance.new("UIStroke")
    Developer = Instance.new("TextLabel")
    developerCorner = Instance.new("UICorner")
    Developers = Instance.new("TextLabel")
    HexR = Instance.new("Frame")
    hexrCorner = Instance.new("UICorner")
    description2 = Instance.new("TextLabel")
    description2Corner = Instance.new("UICorner")
    hexrStroke = Instance.new("UIStroke")
    developer2 = Instance.new("TextLabel")
    developer2Corner = Instance.new("UICorner")
    hexrImage = Instance.new("ImageLabel")
    hexrImageCorner = Instance.new("UICorner")
    xjfs = Instance.new("Frame")
    xjfsCorner = Instance.new("UICorner")
    description3 = Instance.new("TextLabel")
    description3Corner = Instance.new("UICorner")
    xjfsStroke = Instance.new("UIStroke")
    developer3 = Instance.new("TextLabel")
    developer3Corner = Instance.new("UICorner")
    xjfsImage = Instance.new("ImageLabel")
    xjfsImageCorner = Instance.new("UICorner")
    TutorialPage = Instance.new("ScrollingFrame")
    ClickBlock = Instance.new("TextButton")
    TutorialFrame = Instance.new("Frame")
    tutorialFrameCorner = Instance.new("UICorner")
    Understand = Instance.new("TextButton")
    understandCorner = Instance.new("UICorner")
    TutorialImage = Instance.new("ImageLabel")
    tutorialImageCorner = Instance.new("UICorner")
    SettingsPage = Instance.new("ScrollingFrame")
    settingsListLayout = Instance.new("UIListLayout")
    TemplateLabel = Instance.new("TextButton")
    templateLabelCorner = Instance.new("UICorner")
    securityText = Instance.new("TextLabel")
    securityStroke = Instance.new("UIStroke")
    emptyFrame2 = Instance.new("Frame")
    TemplateToggle2 = Instance.new("TextButton")
    templateToggle2Corner = Instance.new("UICorner")
    templateToggle2Stroke = Instance.new("UIStroke")
    hideUsernameText = Instance.new("TextLabel")
    OutsideToggle = Instance.new("Frame")
    outsideToggleStroke = Instance.new("UIStroke")
    InsideToggle = Instance.new("Frame")
    insideToggleCorner = Instance.new("UICorner")
    outsideToggleCorner = Instance.new("UICorner")
    unusedCorner = Instance.new("UICorner")
    TemplateToggle3 = Instance.new("TextButton")
    templateToggle3Corner = Instance.new("UICorner")
    templateToggle3Stroke = Instance.new("UIStroke")
    hideAvatarText = Instance.new("TextLabel")
    OutsideToggle2 = Instance.new("Frame")
    outsideToggle2Stroke = Instance.new("UIStroke")
    InsideToggle2 = Instance.new("Frame")
    insideToggle2Corner = Instance.new("UICorner")
    outsideToggle2Corner = Instance.new("UICorner")
    unusedCorner2 = Instance.new("UICorner")
    TemplateLabel2 = Instance.new("TextButton")
    templateLabel2Corner = Instance.new("UICorner")
    dummyText = Instance.new("TextLabel")
    dummyStroke = Instance.new("UIStroke")
    TemplateTextButton2 = Instance.new("TextButton")
    templateTextButton2Corner = Instance.new("UICorner")
    Help7 = Instance.new("ImageButton")
    help7Corner = Instance.new("UICorner")
    help7Text = Instance.new("TextLabel")
    help7Stroke = Instance.new("UIStroke")
    icon4 = Instance.new("ImageLabel")
    TemplateTextButton3 = Instance.new("TextButton")
    templateTextButton3Corner = Instance.new("UICorner")
    Help8 = Instance.new("ImageButton")
    help8Corner = Instance.new("UICorner")
    help8Text = Instance.new("TextLabel")
    help8Stroke = Instance.new("UIStroke")
    icon5 = Instance.new("ImageLabel")
    TemplateTextButton4 = Instance.new("TextButton")
    templateTextButton4Corner = Instance.new("UICorner")
    Help9 = Instance.new("ImageButton")
    help9Corner = Instance.new("UICorner")
    help9Text = Instance.new("TextLabel")
    help9Stroke = Instance.new("UIStroke")
    icon6 = Instance.new("ImageLabel")
    TemplateTextButton5 = Instance.new("TextButton")
    templateTextButton5Corner = Instance.new("UICorner")
    Help10 = Instance.new("ImageButton")
    help10Corner = Instance.new("UICorner")
    help10Text = Instance.new("TextLabel")
    help10Stroke = Instance.new("UIStroke")
    icon7 = Instance.new("ImageLabel")
    TemplateTextButton6 = Instance.new("TextButton")
    templateTextButton6Corner = Instance.new("UICorner")
    Help11 = Instance.new("ImageButton")
    help11Corner = Instance.new("UICorner")
    help11Text = Instance.new("TextLabel")
    help11Stroke = Instance.new("UIStroke")
    icon8 = Instance.new("ImageLabel")
    TopFrame = Instance.new("Frame")
    topFrameCorner = Instance.new("UICorner")
    Close = Instance.new("TextButton")
    closeCorner = Instance.new("UICorner")
    Minimize = Instance.new("TextButton")
    minimizeCorner = Instance.new("UICorner")
    Title = Instance.new("TextLabel")
    titleCorner = Instance.new("UICorner")
    ClosePage = Instance.new("TextButton")
    closePageCorner = Instance.new("UICorner")
    CloseFrame = Instance.new("Frame")
    DontClose = Instance.new("TextButton")
    dontCloseCorner = Instance.new("UICorner")
    YesClose = Instance.new("TextButton")
    yesCloseCorner = Instance.new("UICorner")
    CloseMessage = Instance.new("TextLabel")
    closeMessageCorner = Instance.new("UICorner")
    BlurFrame = Instance.new("TextButton")
    blurFrameCorner = Instance.new("UICorner")
    helpScrollFrame = Instance.new("ScrollingFrame")
    HelpTextLabel = Instance.new("TextLabel")
    helpTextLabelCorner = Instance.new("UICorner")
    helpPattern = Instance.new("ImageLabel")
    helpTextStroke = Instance.new("UIStroke")
    mainPattern = Instance.new("ImageLabel")
    line1 = Instance.new("Frame")
    line1Stroke = Instance.new("UIStroke")
    line2 = Instance.new("Frame")
    line2Stroke = Instance.new("UIStroke")
    line3 = Instance.new("Frame")
    line3Stroke = Instance.new("UIStroke")
    Settings = Instance.new("ImageButton")
    versionLabel = Instance.new("TextLabel")
    versionLabelCorner = Instance.new("UICorner")
    avatarHidden = false
    usernameHidden = false
    screenGui.Name = "IceHub"
    screenGui.Parent = game.CoreGui
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.ResetOnSpawn = false
    NotifyFolder.Name = "NotifyFolder"
    NotifyFolder.Parent = screenGui
    MainFrameShadow.Name = "MainFrameShadow"
    MainFrameShadow.Parent = screenGui
    MainFrameShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrameShadow.BackgroundTransparency = 1
    MainFrameShadow.BorderSizePixel = 0
    MainFrameShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrameShadow.Size = UDim2.new(0, 0, 0, 0)
    MainFrameShadow.Visible = true
    MainFrameShadow.ZIndex = 0
    MainFrameShadow.Image = "rbxassetid://6014261993"
    MainFrameShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    MainFrameShadow.ImageTransparency = 0.5
    MainFrameShadow.ScaleType = Enum.ScaleType.Slice
    MainFrameShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = MainFrameShadow
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.BackgroundTransparency = 0.01
    MainFrame.BorderColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    mainFrameCorner.CornerRadius = UDim.new(0, 4)
    mainFrameCorner.Parent = MainFrame
    task.spawn(function()
        tweenService:Create(MainFrame, TweenInfo.new(0.5), {
            Size = UDim2.new(0, 425, 0, 210)
        }):Play()
        tweenService:Create(MainFrameShadow, TweenInfo.new(0.5), {
            Size = UDim2.new(0, 478, 0, 262)
        }):Play()
    end)
    wait(0.5)
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = MainFrame
    TabContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TabContainer.BackgroundTransparency = 0.1
    TabContainer.BorderColor3 = Color3.fromRGB(20, 20, 20)
    TabContainer.Position = UDim2.new(0, 0, 0.138095304, 0)
    TabContainer.Size = UDim2.new(0, 110, 0, 181)
    tabContainerCorner.CornerRadius = UDim.new(0, 3)
    tabContainerCorner.Parent = TabContainer
    tabScrollFrame.Parent = TabContainer
    tabScrollFrame.Active = true
    tabScrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabScrollFrame.BackgroundTransparency = 1
    tabScrollFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    tabScrollFrame.Position = UDim2.new(0.0421545468, 0, 0.0333336256, 0)
    tabScrollFrame.Size = UDim2.new(0, 100, 0, 144)
    tabScrollFrame.ZIndex = 2
    tabScrollFrame.CanvasSize = UDim2.new(0, 0, 3, 0)
    tabScrollFrame.ScrollBarThickness = 0
    tabScrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y
    tabListLayout.Parent = tabScrollFrame
    tabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabListLayout.Padding = UDim.new(0, 5)
    local menuPageLayout = Instance.new("UIListLayout")
    emptyFrame1.Parent = tabScrollFrame
    emptyFrame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    emptyFrame1.BackgroundTransparency = 1
    emptyFrame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    emptyFrame1.BorderSizePixel = 0
    emptyFrame1.LayoutOrder = -1
    emptyFrame1.Position = UDim2.new(0, 0, 0.173410401, 0)
    emptyFrame1.Size = UDim2.new(0, 100, 0, 0)
    FrameFolder.Name = "FrameFolder"
    FrameFolder.Parent = MainFrame
    MenuPage.Name = "MenuPage"
    MenuPage.Parent = FrameFolder
    MenuPage.Active = true
    MenuPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MenuPage.BackgroundTransparency = 0.5
    MenuPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
    MenuPage.Position = UDim2.new(0.266000002, 0, 0.159999996, 0)
    MenuPage.Size = UDim2.new(0, 303, 0, 170)
    MenuPage.CanvasSize = UDim2.new(0, 0, 2.9, 0)
    MenuPage.ScrollBarThickness = 0
    MenuPage.Visible = true
    MenuPage.ScrollingDirection = Enum.ScrollingDirection.Y
    table.insert(activePages, MenuPage)
    menuPageLayout.Parent = MenuPage
    menuPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    menuPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    menuPageLayout.Padding = UDim.new(0, 5)
    local menuButton = Instance.new("TextButton")
    local menuButtonCorner = Instance.new("UICorner")
    local menuButtonStroke = Instance.new("UIStroke")
    table.insert(tabButtonList, menuButton)
    menuButton.Name = "Menu"
    menuButton.Parent = tabScrollFrame
    menuButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
    menuButton.BackgroundTransparency = 0.5
    menuButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
    menuButton.Position = UDim2.new(0, 0, 0.0173410401, 0)
    menuButton.Size = UDim2.new(0, 94, 0, 25)
    menuButton.AutoButtonColor = false
    menuButton.Font = Enum.Font.Gotham
    menuButton.Text = "Menu"
    menuButton.TextColor3 = buttonColor
    menuButton.TextSize = 12
    menuButtonCorner.CornerRadius = UDim.new(0, 3)
    menuButtonCorner.Parent = menuButton
    menuButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    menuButtonStroke.Color = Color3.fromRGB(44, 44, 44)
    menuButtonStroke.Transparency = 0.2
    menuButtonStroke.Parent = menuButton
    menuButton.MouseButton1Click:Connect(function()
        if SettingsPage ~= nil and (Settings ~= nil and SettingsPage.Visible) then
            SettingsPage.Visible = false
            tweenService:Create(Settings, TweenInfo.new(0.2), {
                ImageColor3 = Color3.fromRGB(102, 102, 102)
            }):Play()
        end
        for _, tabBtn in pairs(tabButtonList) do
            if tabBtn and tabBtn.BackgroundTransparency ~= 1 then
                tweenService:Create(tabBtn, TweenInfo.new(0.2), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                tweenService:Create(tabBtn, TweenInfo.new(0.2), {
                    BackgroundTransparency = 1
                }):Play()
                tweenService:Create(tabBtn.UIStroke, TweenInfo.new(0.2), {
                    Transparency = 1
                }):Play()
            end
        end
        for _, page in pairs(activePages) do
            if page then
                page.Visible = false
            end
        end
        tweenService:Create(menuButton, TweenInfo.new(0.2), {
            TextColor3 = buttonColor
        }):Play()
        tweenService:Create(menuButton, TweenInfo.new(0.2), {
            BackgroundTransparency = 0.5
        }):Play()
        tweenService:Create(menuButton.UIStroke, TweenInfo.new(0.2), {
            Transparency = 0.2
        }):Play()
        MenuPage.Visible = true
    end)
    LocalFrame.Name = "LocalFrame"
    LocalFrame.Parent = MenuPage
    LocalFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    LocalFrame.BackgroundTransparency = 0.5
    LocalFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    LocalFrame.Position = UDim2.new(0.5964026392, 0, 0.26649633, 0)
    LocalFrame.Size = UDim2.new(0, 285, 0, 125)
    localFrameCorner.CornerRadius = UDim.new(0, 4)
    localFrameCorner.Parent = LocalFrame
    PlayerImageLabel.Name = "PlayerImageLabel"
    PlayerImageLabel.Parent = LocalFrame
    PlayerImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PlayerImageLabel.BackgroundTransparency = 1
    PlayerImageLabel.Position = UDim2.new(0.0419999994, 0, 0.0960000008, 0)
    PlayerImageLabel.Size = UDim2.new(0, 100, 0, 100)
    if avatarHidden then
        task.spawn(function()
            PlayerImageLabel.Image = ""
        end)
    elseif avatarHidden == false then
        task.spawn(function()
            PlayerImageLabel.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420) or "rbxasset://textures/ui/GuiImagePlaceholder.png"
        end)
    end
    playerImageCorner.CornerRadius = UDim.new(0, 4)
    playerImageCorner.Parent = PlayerImageLabel
    playerImageStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    playerImageStroke.Color = Color3.fromRGB(39, 39, 39)
    playerImageStroke.Thickness = 0.8
    playerImageStroke.Transparency = 0.4
    playerImageStroke.Parent = PlayerImageLabel
    NameLabel.Name = "NameLabel"
    NameLabel.Parent = LocalFrame
    NameLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    NameLabel.BackgroundTransparency = 0.3
    NameLabel.BorderColor3 = Color3.fromRGB(20, 20, 20)
    NameLabel.Position = UDim2.new(0.424561411, 0, 0.0960000008, 0)
    NameLabel.Size = UDim2.new(0, 155, 0, 30)
    NameLabel.Font = Enum.Font.SourceSans
    if usernameHidden ~= false then
        if usernameHidden then
            NameLabel.Text = "Hey, [hidden] !"
        end
    else
        NameLabel.Text = "Hey, " .. game.Players.LocalPlayer.DisplayName .. " !"
    end
    NameLabel.TextColor3 = labelColor
    NameLabel.TextSize = 14
    nameLabelCorner.CornerRadius = UDim.new(0, 4)
    nameLabelCorner.Parent = NameLabel
    nameLabelStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    nameLabelStroke.Color = Color3.fromRGB(39, 39, 39)
    nameLabelStroke.Thickness = 0.8
    nameLabelStroke.Transparency = 0.4
    nameLabelStroke.Parent = NameLabel
    Discord = Instance.new("TextButton")
    discordCorner = Instance.new("UICorner")
    discordStroke = Instance.new("UIStroke")
    Discord.Name = "Discord"
    Discord.Parent = LocalFrame
    Discord.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Discord.BackgroundTransparency = 0.3
    Discord.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Discord.Position = UDim2.new(0.424561381, 0, 0.375999987, 0)
    Discord.Size = UDim2.new(0, 155, 0, 30)
    Discord.AutoButtonColor = false
    Discord.Font = Enum.Font.SourceSans
    Discord.Text = "Join discord"
    Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
    Discord.TextSize = 14
    Discord.MouseButton1Click:Connect(function()
        spawn(function()
            HttpService = game:GetService("HttpService")
            local httpRequest = syn and syn.request or http and http.request or (http_request or fluxus and fluxus.request or request)
            if httpRequest then
                local requestData = {
                    Url = "http://127.0.0.1:6463/rpc?v=1",
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json",
                        Origin = "https://discord.com"
                    }
                }
                local inviteData = {
                    cmd = "INVITE_BROWSER",
                    nonce = HttpService:GenerateGUID(false),
                    args = {
                        code = "5jHsbnWzMH"
                    }
                }
                requestData.Body = HttpService:JSONEncode(inviteData)
                httpRequest(requestData)
            end
        end)
        task.spawn(function()
            local notifyShadow = Instance.new("ImageLabel")
            local notifyFrame = Instance.new("Frame")
            local notifyFrameCorner = Instance.new("UICorner")
            local notifyText = Instance.new("TextLabel")
            local timerBar = Instance.new("Frame")
            local timerBarCorner = Instance.new("UICorner")
            local patternImage = Instance.new("ImageLabel")
            local notifyStroke = Instance.new("UIStroke")
            local belowTimerBar = Instance.new("Frame")
            local belowTimerBarCorner = Instance.new("UICorner")
            notifyShadow.Name = "NotifyShadow"
            notifyShadow.Parent = NotifyFolder
            notifyShadow.AnchorPoint = Vector2.new(1, 1)
            notifyShadow.BackgroundTransparency = 1
            notifyShadow.BorderSizePixel = 0
            notifyShadow.Position = UDim2.new(3, 0, 1, 0)
            notifyShadow.Size = UDim2.new(0, 278, 0, 123)
            notifyShadow.ZIndex = -3
            notifyShadow.Image = "rbxassetid://6014261993"
            notifyShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
            notifyShadow.ImageTransparency = 0.5
            notifyShadow.ScaleType = Enum.ScaleType.Slice
            notifyShadow.SliceCenter = Rect.new(49, 49, 450, 450)
            notifyFrame.Name = "Notify"
            notifyFrame.Parent = notifyShadow
            notifyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            notifyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            notifyFrame.BackgroundTransparency = 0.15
            notifyFrame.BorderColor3 = Color3.fromRGB(25, 25, 25)
            notifyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            notifyFrame.Size = UDim2.new(0, 225, 0, 75)
            notifyFrameCorner.CornerRadius = UDim.new(0, 4)
            notifyFrameCorner.Parent = notifyFrame
            notifyText.Name = "NotifyText"
            notifyText.Parent = notifyFrame
            notifyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            notifyText.BackgroundTransparency = 1
            notifyText.Position = UDim2.new(0.0622222237, 0, 0.106666669, 0)
            notifyText.Size = UDim2.new(0, 196, 0, 57)
            notifyText.Font = Enum.Font.Gotham
            notifyText.Text = "Discord server link has been copied to clipboard"
            notifyText.TextColor3 = Color3.fromRGB(255, 255, 255)
            notifyText.TextSize = 15
            notifyText.TextWrapped = true
            notifyText.TextXAlignment = Enum.TextXAlignment.Left
            notifyText.TextYAlignment = Enum.TextYAlignment.Top
            timerBar.Name = "TimerBar"
            timerBar.Parent = notifyFrame
            timerBar.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
            timerBar.BorderColor3 = Color3.fromRGB(0, 203, 203)
            timerBar.Position = UDim2.new(0.014, 0, 0.906666696, 0)
            timerBar.Size = UDim2.new(0, 219, 0, 4)
            timerBar.ZIndex = 2
            timerBarCorner.Parent = timerBar
            patternImage.Name = "Pattern"
            patternImage.Parent = notifyFrame
            patternImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            patternImage.BackgroundTransparency = 1
            patternImage.Size = UDim2.new(0, 224, 0, 72)
            patternImage.ZIndex = -1
            patternImage.Image = "rbxassetid://2151741365"
            patternImage.ImageTransparency = 0.8
            patternImage.ScaleType = Enum.ScaleType.Tile
            patternImage.SliceCenter = Rect.new(0, 256, 0, 256)
            patternImage.TileSize = UDim2.new(0, 250, 0, 250)
            notifyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            notifyStroke.Color = Color3.fromRGB(62, 62, 62)
            notifyStroke.Transparency = 0.2
            notifyStroke.Parent = notifyFrame
            belowTimerBar.Name = "BelowTimeBar"
            belowTimerBar.Parent = notifyFrame
            belowTimerBar.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
            belowTimerBar.BorderColor3 = Color3.fromRGB(67, 67, 67)
            belowTimerBar.AnchorPoint = Vector2.new(0.5, 0)
            belowTimerBar.Position = UDim2.new(0.5, 0, 0.906666696, 0)
            belowTimerBar.Size = UDim2.new(0, 219, 0, 4)
            belowTimerBarCorner.CornerRadius = UDim.new(0, 4)
            belowTimerBarCorner.Parent = belowTimerBar
            tweenService:Create(notifyShadow, TweenInfo.new(0.5), {
                Position = UDim2.new(1, 0, 1, 0)
            }):Play()
            tweenService:Create(timerBar, TweenInfo.new(tonumber(4), Enum.EasingStyle.Linear), {
                Size = UDim2.new(0, 0, 0, 4)
            }):Play()
            task.wait(tonumber(4) - 0.1)
            timerBar:Destroy()
            task.wait(0.09)
            tweenService:Create(notifyShadow, TweenInfo.new(0.5), {
                Position = UDim2.new(2, 0, 1, 0)
            }):Play()
            wait(0.6)
            notifyShadow:Destroy()
        end)
        spawn(function()
            setclipboard("https://discord.com/invite/K5eqZsAz")
        end)
    end)
    discordCorner.CornerRadius = UDim.new(0, 4)
    discordCorner.Parent = Discord
    discordStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    discordStroke.Color = Color3.fromRGB(39, 39, 39)
    discordStroke.Thickness = 0.8
    discordStroke.Transparency = 0.4
    discordStroke.Parent = Discord
    localFrameStroke.Color = Color3.fromRGB(39, 39, 39)
    localFrameStroke.Thickness = 0.8
    localFrameStroke.Parent = LocalFrame
    menuPageLayout.Name = "UIListLayoutM1"
    menuPageLayout.Parent = MenuPage
    menuPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    menuPageLayout.Padding = UDim.new(0, 10)
    menuPagePadding.Name = "UIPaddingM1"
    menuPagePadding.Parent = MenuPage
    menuPagePadding.PaddingLeft = UDim.new(0, 5)
    menuPagePadding.PaddingTop = UDim.new(0, 5)
    Credits.Name = "Credits"
    Credits.Parent = MenuPage
    Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Credits.BackgroundTransparency = 1
    Credits.Position = UDim2.new(0, 0, -1.24242425, 0)
    Credits.Size = UDim2.new(0, 285, 0, 370)
    Ice.Name = "Le M (Ice)"
    Ice.Parent = Credits
    Ice.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Ice.BackgroundTransparency = 0.4
    Ice.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Ice.Position = UDim2.new(0, 0, 0.0589998811, 0)
    Ice.Size = UDim2.new(0, 285, 0, 94)
    iceCorner.CornerRadius = UDim.new(0, 4)
    iceCorner.Parent = Ice
    Description.Name = "Description"
    Description.Parent = Ice
    Description.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Description.BackgroundTransparency = 1
    Description.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Description.Position = UDim2.new(0.235087723, 0, 0.734654367, 0)
    Description.Size = UDim2.new(0, 150, 0, 19)
    Description.Font = Enum.Font.SourceSans
    Description.Text = ""
    Description.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description.TextSize = 16
    Description.TextWrapped = true
    descriptionCorner.CornerRadius = UDim.new(0, 4)
    descriptionCorner.Parent = Description
    iceStroke.Color = Color3.fromRGB(39, 39, 39)
    iceStroke.Thickness = 0.8
    iceStroke.Parent = Ice
    Developer.Name = "Developer"
    Developer.Parent = Ice
    Developer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Developer.BackgroundTransparency = 1
    Developer.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Developer.Position = UDim2.new(0.245614037, 0, 0.0866539478, 0)
    Developer.Size = UDim2.new(0, 145, 0, 30)
    Developer.Font = Enum.Font.Gotham
    Developer.Text = "Ice, Creator"
    Developer.TextColor3 = Color3.fromRGB(255, 255, 255)
    Developer.TextSize = 14
    Developer.TextWrapped = true
    developerCorner.CornerRadius = UDim.new(0, 4)
    developerCorner.Parent = Developer
    Developers.Name = "Developers"
    Developers.Parent = Credits
    Developers.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    Developers.BackgroundTransparency = 1
    Developers.Position = UDim2.new(0, 0, 0.00437349873, 0)
    Developers.Size = UDim2.new(0, 285, 0, 20)
    Developers.Font = Enum.Font.Gotham
    Developers.Text = "Developers"
    Developers.TextColor3 = Color3.fromRGB(129, 129, 129)
    Developers.TextSize = 15
    Developers.TextYAlignment = Enum.TextYAlignment.Top
    HexR.Name = "HexR"
    HexR.Parent = Credits
    HexR.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    HexR.BackgroundTransparency = 0.4
    HexR.BorderColor3 = Color3.fromRGB(20, 20, 20)
    HexR.Position = UDim2.new(0, 0, 0.342046708, 0)
    HexR.Size = UDim2.new(0, 285, 0, 107)
    hexrCorner.CornerRadius = UDim.new(0, 4)
    hexrCorner.Parent = HexR
    description2.Name = "Description"
    description2.Parent = HexR
    description2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    description2.BackgroundTransparency = 1
    description2.BorderColor3 = Color3.fromRGB(20, 20, 20)
    description2.Position = UDim2.new(0.424561411, 0, 0.744000077, 0)
    description2.Size = UDim2.new(0, 150, 0, 19)
    description2.Font = Enum.Font.SourceSans
    description2.Text = "Discord: xyz.hexr"
    description2.TextColor3 = Color3.fromRGB(255, 255, 255)
    description2.TextSize = 16
    description2.TextWrapped = true
    description2.TextXAlignment = Enum.TextXAlignment.Left
    description2Corner.CornerRadius = UDim.new(0, 4)
    description2Corner.Parent = description2
    hexrStroke.Color = Color3.fromRGB(39, 39, 39)
    hexrStroke.Thickness = 0.8
    hexrStroke.Parent = HexR
    developer2.Name = "Developer"
    developer2.Parent = HexR
    developer2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    developer2.BackgroundTransparency = 1
    developer2.BorderColor3 = Color3.fromRGB(20, 20, 20)
    developer2.Position = UDim2.new(0.424561411, 0, 0.0866539478, 0)
    developer2.Size = UDim2.new(0, 145, 0, 30)
    developer2.Font = Enum.Font.Gotham
    developer2.Text = "HexR, Developer"
    developer2.TextColor3 = Color3.fromRGB(255, 255, 255)
    developer2.TextSize = 14
    developer2.TextWrapped = true
    developer2.TextXAlignment = Enum.TextXAlignment.Left
    developer2Corner.CornerRadius = UDim.new(0, 4)
    developer2Corner.Parent = developer2
    hexrImage.Parent = HexR
    hexrImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hexrImage.BackgroundTransparency = 1
    hexrImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    hexrImage.BorderSizePixel = 0
    hexrImage.Position = UDim2.new(0.0419999994, 0, 0.0960000008, 0)
    hexrImage.Size = UDim2.new(0, 88, 0, 88)
    task.spawn(function()
        hexrImage.Image = game.Players:GetUserThumbnailAsync(406707268, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420) or "rbxasset://textures/ui/GuiImagePlaceholder.png"
    end)
    hexrImageCorner.CornerRadius = UDim.new(0, 4)
    hexrImageCorner.Parent = hexrImage
    xjfs.Name = "xjfs"
    xjfs.Parent = Credits
    xjfs.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    xjfs.BackgroundTransparency = 0.4
    xjfs.BorderColor3 = Color3.fromRGB(20, 20, 20)
    xjfs.Position = UDim2.new(0, 0, 0.658262908, 0)
    xjfs.Size = UDim2.new(0, 285, 0, 107)
    xjfsCorner.CornerRadius = UDim.new(0, 4)
    xjfsCorner.Parent = xjfs
    description3.Name = "Description"
    description3.Parent = xjfs
    description3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    description3.BackgroundTransparency = 1
    description3.BorderColor3 = Color3.fromRGB(20, 20, 20)
    description3.Position = UDim2.new(0.424561411, 0, 0.744000077, 0)
    description3.Size = UDim2.new(0, 150, 0, 19)
    description3.Font = Enum.Font.SourceSans
    description3.Text = "Discord: xjfs"
    description3.TextColor3 = Color3.fromRGB(255, 255, 255)
    description3.TextSize = 16
    description3.TextWrapped = true
    description3.TextXAlignment = Enum.TextXAlignment.Left
    description3Corner.CornerRadius = UDim.new(0, 4)
    description3Corner.Parent = description3
    xjfsStroke.Color = Color3.fromRGB(39, 39, 39)
    xjfsStroke.Thickness = 0.8
    xjfsStroke.Parent = xjfs
    developer3.Name = "Developer"
    developer3.Parent = xjfs
    developer3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    developer3.BackgroundTransparency = 1
    developer3.BorderColor3 = Color3.fromRGB(20, 20, 20)
    developer3.Position = UDim2.new(0.424561411, 0, 0.0866539478, 0)
    developer3.Size = UDim2.new(0, 145, 0, 30)
    developer3.Font = Enum.Font.Gotham
    developer3.Text = "xjfs, Developer"
    developer3.TextColor3 = Color3.fromRGB(255, 255, 255)
    developer3.TextSize = 14
    developer3.TextWrapped = true
    developer3.TextXAlignment = Enum.TextXAlignment.Left
    developer3Corner.CornerRadius = UDim.new(0, 4)
    developer3Corner.Parent = developer3
    xjfsImage.Parent = xjfs
    xjfsImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    xjfsImage.BackgroundTransparency = 1
    xjfsImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    xjfsImage.BorderSizePixel = 0
    xjfsImage.Position = UDim2.new(0.0419999994, 0, 0.0960000008, 0)
    xjfsImage.Size = UDim2.new(0, 88, 0, 88)
    task.spawn(function()
        xjfsImage.Image = game.Players:GetUserThumbnailAsync(967736154, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420) or "rbxasset://textures/ui/GuiImagePlaceholder.png"
    end)
    xjfsImageCorner.CornerRadius = UDim.new(0, 4)
    xjfsImageCorner.Parent = xjfsImage
    TutorialPage.Name = "TutorialPage"
    TutorialPage.Parent = FrameFolder
    TutorialPage.Active = true
    TutorialPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TutorialPage.BackgroundTransparency = 1
    TutorialPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
    TutorialPage.Position = UDim2.new(0, 0, 0.136466324, 0)
    TutorialPage.Size = UDim2.new(0, 425, 0, 181)
    TutorialPage.Visible = false
    TutorialPage.ScrollBarThickness = 1
    ClickBlock.Name = "ClickBlock"
    ClickBlock.Parent = TutorialPage
    ClickBlock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ClickBlock.BackgroundTransparency = 1
    ClickBlock.Size = UDim2.new(0, 425, 0, 181)
    ClickBlock.Visible = false
    ClickBlock.AutoButtonColor = false
    ClickBlock.Font = Enum.Font.SourceSans
    ClickBlock.Text = ""
    ClickBlock.TextColor3 = Color3.fromRGB(0, 0, 0)
    ClickBlock.TextSize = 14
    TutorialFrame.Name = "TutorialFrame"
    TutorialFrame.Parent = TutorialPage
    TutorialFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TutorialFrame.BorderColor3 = Color3.fromRGB(30, 30, 30)
    TutorialFrame.Position = UDim2.new(0, 0, -0.5, 0)
    TutorialFrame.Size = UDim2.new(0, 425, 0, 181)
    tutorialFrameCorner.CornerRadius = UDim.new(0, 4)
    tutorialFrameCorner.Parent = TutorialFrame
    Understand.Name = "Understand"
    Understand.Parent = TutorialFrame
    Understand.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Understand.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Understand.Position = UDim2.new(0.0199999996, 0, 0.828000009, 0)
    Understand.Size = UDim2.new(0, 410, 0, 25)
    Understand.AutoButtonColor = false
    Understand.Font = Enum.Font.SourceSans
    Understand.Text = "Okay, I understand."
    Understand.TextColor3 = Color3.fromRGB(255, 255, 255)
    Understand.TextSize = 15
    understandCorner.CornerRadius = UDim.new(0, 4)
    understandCorner.Parent = Understand
    TutorialImage.Name = "TutorialImage"
    TutorialImage.Parent = TutorialFrame
    TutorialImage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TutorialImage.BorderColor3 = Color3.fromRGB(30, 30, 30)
    TutorialImage.Position = UDim2.new(0.0178458244, 0, 0.0309286155, 0)
    TutorialImage.Size = UDim2.new(0, 410, 0, 140)
    TutorialImage.Image = "http://www.roblox.com/asset/?id=11922448198"
    tutorialImageCorner.CornerRadius = UDim.new(0, 4)
    tutorialImageCorner.Parent = TutorialImage
    SettingsPage.Name = "SettingsPage"
    SettingsPage.Parent = FrameFolder
    SettingsPage.Active = true
    SettingsPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    SettingsPage.BackgroundTransparency = 0.5
    SettingsPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
    SettingsPage.Position = UDim2.new(0.273000062, 0, 0.160000026, 0)
    SettingsPage.Size = UDim2.new(0, 303, 0, 170)
    SettingsPage.Visible = false
    SettingsPage.CanvasSize = UDim2.new(0, 0, 2.5, 0)
    SettingsPage.ScrollBarThickness = 0
    settingsListLayout.Parent = SettingsPage
    settingsListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    settingsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    settingsListLayout.Padding = UDim.new(0, 5)
    TemplateLabel.Name = "cLabel"
    TemplateLabel.Parent = SettingsPage
    TemplateLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TemplateLabel.BackgroundTransparency = 0.2
    TemplateLabel.BorderColor3 = Color3.fromRGB(20, 20, 20)
    TemplateLabel.Position = UDim2.new(0.0656108633, 0, 0.290152997, 0)
    TemplateLabel.Size = UDim2.new(0, 295, 0, 30)
    TemplateLabel.AutoButtonColor = false
    TemplateLabel.Font = Enum.Font.Gotham
    TemplateLabel.Text = ""
    TemplateLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TemplateLabel.TextSize = 12
    TemplateLabel.TextXAlignment = Enum.TextXAlignment.Left
    templateLabelCorner.CornerRadius = UDim.new(0, 4)
    templateLabelCorner.Parent = TemplateLabel
    securityText.Name = "Text"
    securityText.Parent = TemplateLabel
    securityText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    securityText.BackgroundTransparency = 1
    securityText.Position = UDim2.new(0.0508135259, 0, 0.116666667, 0)
    securityText.Size = UDim2.new(0, 265, 0, 24)
    securityText.Font = Enum.Font.Gotham
    securityText.Text = "Security"
    securityText.TextColor3 = buttonColor
    securityText.TextSize = 13
    securityText.TextXAlignment = Enum.TextXAlignment.Left
    securityStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    securityStroke.Color = Color3.fromRGB(49, 49, 49)
    securityStroke.Transparency = 0.2
    securityStroke.Parent = TemplateLabel
    emptyFrame2.Parent = SettingsPage
    emptyFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    emptyFrame2.BackgroundTransparency = 1
    emptyFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    emptyFrame2.BorderSizePixel = 0
    emptyFrame2.LayoutOrder = -1
    emptyFrame2.Position = UDim2.new(0, 0, 0.173410401, 0)
    emptyFrame2.Size = UDim2.new(0, 100, 0, 0)
    TemplateToggle2.Name = "cToggle"
    TemplateToggle2.Parent = SettingsPage
    TemplateToggle2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TemplateToggle2.BackgroundTransparency = 0.2
    TemplateToggle2.BorderColor3 = Color3.fromRGB(20, 20, 20)
    TemplateToggle2.Position = UDim2.new(0.0656108633, 0, 0.339535713, 0)
    TemplateToggle2.Size = UDim2.new(0, 295, 0, 30)
    TemplateToggle2.AutoButtonColor = false
    TemplateToggle2.Font = Enum.Font.Gotham
    TemplateToggle2.Text = ""
    TemplateToggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TemplateToggle2.TextSize = 12
    TemplateToggle2.TextXAlignment = Enum.TextXAlignment.Left
    templateToggle2Corner.CornerRadius = UDim.new(0, 4)
    templateToggle2Corner.Parent = TemplateToggle2
    templateToggle2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    templateToggle2Stroke.Color = Color3.fromRGB(49, 49, 49)
    templateToggle2Stroke.Transparency = 0.2
    templateToggle2Stroke.Parent = TemplateToggle2
    hideUsernameText.Name = "Text"
    hideUsernameText.Parent = TemplateToggle2
    hideUsernameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hideUsernameText.BackgroundTransparency = 1
    hideUsernameText.Position = UDim2.new(0.125389799, 0, 0.150000006, 0)
    hideUsernameText.Size = UDim2.new(0, 223, 0, 22)
    hideUsernameText.Font = Enum.Font.Gotham
    hideUsernameText.Text = "Hide Username"
    hideUsernameText.TextColor3 = Color3.fromRGB(255, 255, 255)
    hideUsernameText.TextSize = 13
    hideUsernameText.TextXAlignment = Enum.TextXAlignment.Left
    OutsideToggle.Name = "OutsideToggle"
    OutsideToggle.Parent = TemplateToggle2
    OutsideToggle.AnchorPoint = Vector2.new(0, 0.5)
    OutsideToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    OutsideToggle.BackgroundTransparency = 1
    OutsideToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OutsideToggle.BorderSizePixel = 0
    OutsideToggle.Position = UDim2.new(0.0289999992, 0, 0.5, 0)
    OutsideToggle.Size = UDim2.new(0, 16, 0, 16)
    outsideToggleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    outsideToggleStroke.Color = Color3.fromRGB(49, 49, 49)
    outsideToggleStroke.Thickness = 1.7
    outsideToggleStroke.Parent = OutsideToggle
    InsideToggle.Name = "InsideToggle"
    InsideToggle.Parent = OutsideToggle
    InsideToggle.AnchorPoint = Vector2.new(0.5, 0.5)
    InsideToggle.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
    InsideToggle.BackgroundTransparency = 1
    InsideToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InsideToggle.BorderSizePixel = 0
    InsideToggle.Position = UDim2.new(0.5, 0, 0.5, 0)
    InsideToggle.Size = UDim2.new(0, 12, 0, 12)
    task.spawn(function()
        local usernameToggleState = false
        TemplateToggle2.MouseButton1Click:Connect(function()
            if usernameHidden then
                usernameHidden = false
                NameLabel.Text = "Hey, " .. game.Players.LocalPlayer.DisplayName .. " !"
            elseif usernameHidden == false then
                usernameHidden = true
                NameLabel.Text = "Hey, [hidden] !"
            end
            if usernameToggleState then
                tweenService:Create(InsideToggle, TweenInfo.new(0.2), {
                    BackgroundTransparency = 1
                }):Play()
            else
                tweenService:Create(InsideToggle, TweenInfo.new(0.2), {
                    BackgroundTransparency = 0
                }):Play()
            end
            usernameToggleState = not usernameToggleState
        end)
    end)
    insideToggleCorner.CornerRadius = UDim.new(0, 5)
    insideToggleCorner.Parent = InsideToggle
    outsideToggleCorner.CornerRadius = UDim.new(0, 5)
    outsideToggleCorner.Parent = OutsideToggle
    TemplateToggle3.Name = "cToggle"
    TemplateToggle3.Parent = SettingsPage
    TemplateToggle3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TemplateToggle3.BackgroundTransparency = 0.2
    TemplateToggle3.BorderColor3 = Color3.fromRGB(20, 20, 20)
    TemplateToggle3.Position = UDim2.new(0.0656108633, 0, 0.339535713, 0)
    TemplateToggle3.Size = UDim2.new(0, 295, 0, 30)
    TemplateToggle3.AutoButtonColor = false
    TemplateToggle3.Font = Enum.Font.Gotham
    TemplateToggle3.Text = ""
    TemplateToggle3.TextColor3 = Color3.fromRGB(255, 255, 255)
    TemplateToggle3.TextSize = 12
    TemplateToggle3.TextXAlignment = Enum.TextXAlignment.Left
    templateToggle3Corner.CornerRadius = UDim.new(0, 4)
    templateToggle3Corner.Parent = TemplateToggle3
    templateToggle3Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    templateToggle3Stroke.Color = Color3.fromRGB(49, 49, 49)
    templateToggle3Stroke.Transparency = 0.2
    templateToggle3Stroke.Parent = TemplateToggle3
    hideAvatarText.Name = "Text"
    hideAvatarText.Parent = TemplateToggle3
    hideAvatarText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hideAvatarText.BackgroundTransparency = 1
    hideAvatarText.Position = UDim2.new(0.125389799, 0, 0.150000006, 0)
    hideAvatarText.Size = UDim2.new(0, 223, 0, 22)
    hideAvatarText.Font = Enum.Font.Gotham
    hideAvatarText.Text = "Hide Avatar Image"
    hideAvatarText.TextColor3 = Color3.fromRGB(255, 255, 255)
    hideAvatarText.TextSize = 13
    hideAvatarText.TextXAlignment = Enum.TextXAlignment.Left
    OutsideToggle2.Name = "OutsideToggle"
    OutsideToggle2.Parent = TemplateToggle3
    OutsideToggle2.AnchorPoint = Vector2.new(0, 0.5)
    OutsideToggle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    OutsideToggle2.BackgroundTransparency = 1
    OutsideToggle2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OutsideToggle2.BorderSizePixel = 0
    OutsideToggle2.Position = UDim2.new(0.0289999992, 0, 0.5, 0)
    OutsideToggle2.Size = UDim2.new(0, 16, 0, 16)
    outsideToggle2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    outsideToggle2Stroke.Color = Color3.fromRGB(49, 49, 49)
    outsideToggle2Stroke.Thickness = 1.7
    outsideToggle2Stroke.Parent = OutsideToggle2
    InsideToggle2.Name = "InsideToggle"
    InsideToggle2.Parent = OutsideToggle2
    InsideToggle2.AnchorPoint = Vector2.new(0.5, 0.5)
    InsideToggle2.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
    InsideToggle2.BackgroundTransparency = 1
    InsideToggle2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InsideToggle2.BorderSizePixel = 0
    InsideToggle2.Position = UDim2.new(0.5, 0, 0.5, 0)
    InsideToggle2.Size = UDim2.new(0, 12, 0, 12)
    task.spawn(function()
        local avatarToggleState = false
        TemplateToggle3.MouseButton1Click:Connect(function()
            if avatarHidden then
                avatarHidden = false
                task.spawn(function()
                    PlayerImageLabel.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420) or "rbxasset://textures/ui/GuiImagePlaceholder.png"
                end)
            else
                PlayerImageLabel.Image = ""
                avatarHidden = true
            end
            if avatarToggleState then
                tweenService:Create(InsideToggle2, TweenInfo.new(0.2), {
                    BackgroundTransparency = 1
                }):Play()
            else
                tweenService:Create(InsideToggle2, TweenInfo.new(0.2), {
                    BackgroundTransparency = 0
                }):Play()
            end
            avatarToggleState = not avatarToggleState
        end)
    end)
    insideToggle2Corner.CornerRadius = UDim.new(0, 5)
    insideToggle2Corner.Parent = InsideToggle2
    outsideToggle2Corner.CornerRadius = UDim.new(0, 5)
    outsideToggle2Corner.Parent = OutsideToggle2
    TopFrame.Name = "TopFrame"
    TopFrame.Parent = MainFrame
    TopFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TopFrame.BackgroundTransparency = 0.1
    TopFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    TopFrame.Position = UDim2.new(0, 0, -0.00476175966, 0)
    TopFrame.Size = UDim2.new(0, 425, 0, 30)
    local isDragging = nil
    local currentInput = nil
    local dragStart = nil
    local startPosition = nil
    local function updateDragPosition(inputPosition)
        local delta = inputPosition.Position - dragStart
        MainFrameShadow.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
    end
    TopFrame.InputBegan:Connect(function(inputBegan)
        if inputBegan.UserInputType == Enum.UserInputType.MouseButton1 or inputBegan.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            dragStart = inputBegan.Position
            startPosition = MainFrameShadow.Position
            inputBegan.Changed:Connect(function()
                if inputBegan.UserInputState == Enum.UserInputState.End then
                    isDragging = false
                end
            end)
        end
    end)
    TopFrame.InputChanged:Connect(function(inputChanged)
        if inputChanged.UserInputType == Enum.UserInputType.MouseMovement or inputChanged.UserInputType == Enum.UserInputType.Touch then
            currentInput = inputChanged
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == currentInput and isDragging then
            updateDragPosition(input)
        end
    end)
    topFrameCorner.CornerRadius = UDim.new(0, 4)
    topFrameCorner.Parent = TopFrame
    Close.Name = "Close"
    Close.Parent = TopFrame
    Close.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Close.BackgroundTransparency = 1
    Close.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Close.Position = UDim2.new(0.929411769, 0, 0, 0)
    Close.Size = UDim2.new(0, 30, 0, 30)
    Close.AutoButtonColor = false
    Close.Font = Enum.Font.GothamMedium
    Close.Text = "X"
    Close.TextColor3 = Color3.fromRGB(255, 255, 255)
    Close.TextSize = 13
    closeCorner.CornerRadius = UDim.new(0, 4)
    closeCorner.Parent = Close
    Minimize.Name = "Minimize"
    Minimize.Parent = TopFrame
    Minimize.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Minimize.BackgroundTransparency = 1
    Minimize.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Minimize.Position = UDim2.new(0.858823538, 0, 0, 0)
    Minimize.Size = UDim2.new(0, 30, 0, 30)
    Minimize.AutoButtonColor = false
    Minimize.Font = Enum.Font.GothamMedium
    Minimize.Text = "-"
    Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
    Minimize.TextSize = 13
    minimizeCorner.CornerRadius = UDim.new(0, 4)
    minimizeCorner.Parent = Minimize
    local lastVisiblePage = nil
    local isMinimized = false
    Minimize.MouseButton1Click:Connect(function()
        if isMinimized then
            task.spawn(function()
                tweenService:Create(MainFrameShadow, TweenInfo.new(0.25), {
                    Size = UDim2.new(0, 478, 0, 262)
                }):Play()
                tweenService:Create(MainFrameShadow, TweenInfo.new(0.25), {
                    Position = UDim2.new(0.5, 0, 0.5, 0)
                }):Play()
                tweenService:Create(MainFrame, TweenInfo.new(0.25), {
                    Size = UDim2.new(0, 425, 0, 210)
                }):Play()
                Minimize.Text = "-"
                task.wait(0.25)
                for _, child in pairs(MainFrame:GetChildren()) do
                    if child.Name ~= "FrameFolder" and child.Name ~= "UICorner" and child.Name ~= "TopFrame" and child.Name ~= "BlurFrame" and child.Name ~= "ClosePage" then
                        child.Visible = true
                    end
                end
                if lastVisiblePage then
                    lastVisiblePage.Visible = true
                end
                isMinimized = false
            end)
        else
            for _, child in pairs(MainFrame:GetChildren()) do
                if child.Name ~= "FrameFolder" and child.Name ~= "UICorner" and child.Name ~= "TopFrame" then
                    child.Visible = false
                end
            end
            for _, page in pairs(FrameFolder:GetChildren()) do
                if page.Visible then
                    lastVisiblePage = page
                end
                page.Visible = false
            end
            tweenService:Create(MainFrameShadow, TweenInfo.new(0.25), {
                Size = UDim2.new(0, 460, 0, 65)
            }):Play()
            tweenService:Create(MainFrame, TweenInfo.new(0.25), {
                Size = UDim2.new(0, 425, 0, 30)
            }):Play()
            Minimize.Text = "+"
            isMinimized = true
        end
    end)
    Title.Name = "Title"
    Title.Parent = TopFrame
    Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Title.BackgroundTransparency = 1
    Title.BorderColor3 = Color3.fromRGB(20, 20, 20)
    Title.Position = UDim2.new(0.0305882357, 0, 0.0333323143, 0)
    Title.Size = UDim2.new(0, 200, 0, 28)
    Title.Font = Enum.Font.Gotham
    Title.Text = "IceHub - " .. gameName .. " " .. versionText
    Title.TextColor3 = titleColor
    Title.TextSize = 13
    Title.TextXAlignment = Enum.TextXAlignment.Left
    titleCorner.CornerRadius = UDim.new(0, 4)
    titleCorner.Parent = Title
    ClosePage.Name = "ClosePage"
    ClosePage.Parent = MainFrame
    ClosePage.AnchorPoint = Vector2.new(0.5, 0.5)
    ClosePage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ClosePage.BackgroundTransparency = 1
    ClosePage.BorderColor3 = Color3.fromRGB(20, 20, 20)
    ClosePage.Position = UDim2.new(0.5, 0, 0.5, 0)
    ClosePage.Size = UDim2.new(0, 425, 0, 210)
    ClosePage.Visible = false
    ClosePage.ZIndex = 2
    ClosePage.AutoButtonColor = false
    ClosePage.Font = Enum.Font.SourceSans
    ClosePage.Text = ""
    ClosePage.TextColor3 = Color3.fromRGB(0, 0, 0)
    ClosePage.TextSize = 14
    closePageCorner.CornerRadius = UDim.new(0, 4)
    closePageCorner.Parent = ClosePage
    CloseFrame.Name = "CloseFrame"
    CloseFrame.Parent = ClosePage
    CloseFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    CloseFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    CloseFrame.BorderColor3 = Color3.fromRGB(30, 30, 30)
    CloseFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    CloseFrame.Size = UDim2.new(0, 325, 0, 150)
    CloseFrame.BackgroundTransparency = 1
    CloseFrame.ZIndex = 2
    local closeFrameStroke = Instance.new("UIStroke")
    closeFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    closeFrameStroke.Color = Color3.fromRGB(49, 49, 49)
    closeFrameStroke.Transparency = 1
    closeFrameStroke.Parent = CloseFrame
    DontClose.Name = "DontClose"
    DontClose.Parent = CloseFrame
    DontClose.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    DontClose.BorderColor3 = Color3.fromRGB(20, 20, 20)
    DontClose.Position = UDim2.new(0.108577259, 0, 0.569881499, 0)
    DontClose.Size = UDim2.new(0, 110, 0, 40)
    DontClose.AutoButtonColor = false
    DontClose.Font = Enum.Font.SourceSans
    DontClose.Text = "Don't Close"
    DontClose.TextColor3 = Color3.fromRGB(255, 45, 45)
    DontClose.TextSize = 20
    DontClose.BackgroundTransparency = 1
    DontClose.TextTransparency = 1
    DontClose.ZIndex = 2
    dontCloseCorner.CornerRadius = UDim.new(0, 4)
    dontCloseCorner.Parent = DontClose
    YesClose.Name = "YesClose"
    YesClose.Parent = CloseFrame
    YesClose.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    YesClose.BorderColor3 = Color3.fromRGB(20, 20, 20)
    YesClose.Position = UDim2.new(0.553462684, 0, 0.566071987, 0)
    YesClose.Size = UDim2.new(0, 110, 0, 40)
    YesClose.AutoButtonColor = false
    YesClose.Font = Enum.Font.SourceSans
    YesClose.Text = "Yes, Close"
    YesClose.TextColor3 = Color3.fromRGB(52, 255, 52)
    YesClose.TextSize = 20
    YesClose.BackgroundTransparency = 1
    YesClose.TextTransparency = 1
    YesClose.ZIndex = 2
    yesCloseCorner.CornerRadius = UDim.new(0, 4)
    yesCloseCorner.Parent = YesClose
    CloseMessage.Name = "CloseMessage"
    CloseMessage.Parent = CloseFrame
    CloseMessage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    CloseMessage.BorderColor3 = Color3.fromRGB(30, 30, 30)
    CloseMessage.Position = UDim2.new(0.237655759, 0, 0.136855215, 0)
    CloseMessage.Size = UDim2.new(0, 169, 0, 50)
    CloseMessage.Font = Enum.Font.SourceSans
    CloseMessage.Text = "Warning! Are you sure to close IceHub?"
    CloseMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseMessage.TextSize = 18
    CloseMessage.BackgroundTransparency = 1
    CloseMessage.TextTransparency = 1
    closeMessageCorner.CornerRadius = UDim.new(0, 4)
    closeMessageCorner.Parent = CloseFrame
    Close.MouseButton1Click:Connect(function()
        ClosePage.Visible = true
        tweenService:Create(ClosePage, TweenInfo.new(0.25), {
            BackgroundTransparency = 0.5
        }):Play()
        tweenService:Create(CloseFrame, TweenInfo.new(0.25), {
            BackgroundTransparency = 0.05
        }):Play()
        tweenService:Create(YesClose, TweenInfo.new(0.25), {
            BackgroundTransparency = 0.12,
            TextTransparency = 0
        }):Play()
        tweenService:Create(DontClose, TweenInfo.new(0.25), {
            BackgroundTransparency = 0.12,
            TextTransparency = 0
        }):Play()
        tweenService:Create(CloseMessage, TweenInfo.new(0.25), {
            TextTransparency = 0
        }):Play()
        tweenService:Create(closeFrameStroke, TweenInfo.new(0.25), {
            Transparency = 0
        }):Play()
    end)
    YesClose.MouseButton1Click:Connect(function()
        task.spawn(function()
            for _, child in pairs(MainFrame:GetChildren()) do
                if child.Name ~= "FrameFolder" and child.Name ~= "UICorner" then
                    child.Visible = false
                end
            end
            for _, page in pairs(FrameFolder:GetChildren()) do
                if page.Visible then
                    lastVisiblePage = page
                end
                page.Visible = false
            end
            tweenService:Create(MainFrameShadow, TweenInfo.new(0.45), {
                Size = UDim2.new(0, 0, 0, 0)
            }):Play()
            tweenService:Create(MainFrame, TweenInfo.new(0.45), {
                Size = UDim2.new(0, 0, 0, 0)
            }):Play()
            wait(0.45)
            screenGui:Destroy()
        end)
    end)
    DontClose.MouseButton1Click:Connect(function()
        task.spawn(function()
            tweenService:Create(ClosePage, TweenInfo.new(0.25), {
                BackgroundTransparency = 1
            }):Play()
            tweenService:Create(CloseFrame, TweenInfo.new(0.25), {
                BackgroundTransparency = 1
            }):Play()
            tweenService:Create(YesClose, TweenInfo.new(0.25), {
                BackgroundTransparency = 1,
                TextTransparency = 1
            }):Play()
            tweenService:Create(DontClose, TweenInfo.new(0.25), {
                BackgroundTransparency = 1,
                TextTransparency = 1
            }):Play()
            tweenService:Create(CloseMessage, TweenInfo.new(0.25), {
                TextTransparency = 1
            }):Play()
            tweenService:Create(closeFrameStroke, TweenInfo.new(0.25), {
                Transparency = 1
            }):Play()
            task.wait(0.25)
            ClosePage.Visible = false
        end)
    end)
    BlurFrame.Name = "BlurFrame"
    BlurFrame.Parent = MainFrame
    BlurFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    BlurFrame.BackgroundTransparency = 1
    BlurFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    BlurFrame.Position = UDim2.new(0, 0, 0.137999997, 0)
    BlurFrame.Size = UDim2.new(0, 425, 0, 180)
    BlurFrame.Visible = false
    BlurFrame.ZIndex = 3
    BlurFrame.AutoButtonColor = false
    BlurFrame.Font = Enum.Font.SourceSans
    BlurFrame.Text = ""
    BlurFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
    BlurFrame.TextSize = 14
    blurFrameCorner.CornerRadius = UDim.new(0, 4)
    blurFrameCorner.Parent = BlurFrame
    helpScrollFrame.Parent = BlurFrame
    helpScrollFrame.Active = true
    helpScrollFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    helpScrollFrame.BackgroundTransparency = 1
    helpScrollFrame.BorderSizePixel = 0
    helpScrollFrame.ClipsDescendants = false
    helpScrollFrame.Position = UDim2.new(0.029000029, 0, 0.755722404, 0)
    helpScrollFrame.Size = UDim2.new(0, 400, 0, 38)
    helpScrollFrame.ZIndex = 3
    helpScrollFrame.BottomImage = ""
    helpScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    helpScrollFrame.MidImage = ""
    helpScrollFrame.TopImage = ""
    HelpTextLabel.Parent = helpScrollFrame
    HelpTextLabel.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    HelpTextLabel.BackgroundTransparency = 0.1
    HelpTextLabel.BorderColor3 = Color3.fromRGB(33, 33, 33)
    HelpTextLabel.Position = UDim2.new(0, 0, 0.0521737821, 0)
    HelpTextLabel.Size = UDim2.new(0, 400, 0, 30)
    HelpTextLabel.ZIndex = 3
    HelpTextLabel.Font = Enum.Font.Gotham
    HelpTextLabel.Text = ""
    HelpTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    HelpTextLabel.TextSize = 12
    HelpTextLabel.TextWrapped = true
    helpTextLabelCorner.CornerRadius = UDim.new(0, 4)
    helpTextLabelCorner.Parent = HelpTextLabel
    helpPattern.Name = "Pattern"
    helpPattern.Parent = HelpTextLabel
    helpPattern.AnchorPoint = Vector2.new(0.5, 0.5)
    helpPattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    helpPattern.BackgroundTransparency = 1
    helpPattern.Position = UDim2.new(0.501874983, 0, 0.508333325, 0)
    helpPattern.Size = UDim2.new(0, 398, 0, 29)
    helpPattern.ZIndex = -1
    helpPattern.Image = "rbxassetid://2151741365"
    helpPattern.ImageTransparency = 0.9
    helpPattern.ScaleType = Enum.ScaleType.Tile
    helpPattern.SliceCenter = Rect.new(0, 256, 0, 256)
    helpPattern.TileSize = UDim2.new(0, 250, 0, 250)
    helpTextStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    helpTextStroke.Color = Color3.fromRGB(49, 49, 49)
    helpTextStroke.Parent = HelpTextLabel
    mainPattern.Name = "Pattern"
    mainPattern.Parent = MainFrame
    mainPattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainPattern.BackgroundTransparency = 1
    mainPattern.Position = UDim2.new(-0.00117647054, 0, -0.00476190494, 0)
    mainPattern.Size = UDim2.new(0, 425, 0, 210)
    mainPattern.ZIndex = -1
    mainPattern.Image = "rbxassetid://2151741365"
    mainPattern.ImageTransparency = 0.6
    mainPattern.ScaleType = Enum.ScaleType.Tile
    mainPattern.SliceCenter = Rect.new(0, 256, 0, 256)
    mainPattern.TileSize = UDim2.new(0, 250, 0, 250)
    line1.Name = "Li"
    line1.Parent = MainFrame
    line1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    line1.BackgroundTransparency = 1
    line1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    line1.BorderSizePixel = 0
    line1.Position = UDim2.new(0, 0, 0.138095245, 0)
    line1.Size = UDim2.new(0, 425, 0, 0)
    line1Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    line1Stroke.LineJoinMode = Enum.LineJoinMode.Bevel
    line1Stroke.Color = Color3.fromRGB(49, 49, 49)
    line1Stroke.Thickness = 0.5
    line1Stroke.Transparency = 0.2
    line1Stroke.Parent = line1
    line2.Name = "Li"
    line2.Parent = MainFrame
    line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    line2.BackgroundTransparency = 1
    line2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    line2.BorderSizePixel = 0
    line2.Position = UDim2.new(0.258823544, 0, 0.13333334, 0)
    line2.Size = UDim2.new(0, 0, 0, 182)
    line2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    line2Stroke.LineJoinMode = Enum.LineJoinMode.Bevel
    line2Stroke.Color = Color3.fromRGB(49, 49, 49)
    line2Stroke.Thickness = 0.5
    line2Stroke.Transparency = 0.2
    line2Stroke.Parent = line2
    line3.Name = "Li"
    line3.Parent = MainFrame
    line3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    line3.BackgroundTransparency = 1
    line3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    line3.BorderSizePixel = 0
    line3.Position = UDim2.new(0, 0, 0.857485235, 0)
    line3.Size = UDim2.new(0, 110, 0, 0)
    line3Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    line3Stroke.LineJoinMode = Enum.LineJoinMode.Bevel
    line3Stroke.Color = Color3.fromRGB(49, 49, 49)
    line3Stroke.Thickness = 0.5
    line3Stroke.Transparency = 0.2
    line3Stroke.Parent = line3
    Settings.Name = "Settings"
    Settings.Parent = MainFrame
    Settings.BackgroundTransparency = 1
    Settings.Position = UDim2.new(0.0149999997, 0, 0.883, 0)
    Settings.Size = UDim2.new(0, 20, 0, 20)
    Settings.ZIndex = 2
    Settings.Image = "rbxassetid://3926307971"
    Settings.ImageColor3 = Color3.fromRGB(102, 102, 102)
    Settings.ImageRectOffset = Vector2.new(324, 124)
    Settings.ImageRectSize = Vector2.new(36, 36)
    Settings.ImageTransparency = 0.2
    Settings.MouseButton1Click:Connect(function()
        for _, tabBtn in pairs(tabButtonList) do
            if tabBtn.BackgroundTransparency ~= 1 then
                tweenService:Create(tabBtn, TweenInfo.new(0.2), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                tweenService:Create(tabBtn, TweenInfo.new(0.2), {
                    BackgroundTransparency = 1
                }):Play()
                tweenService:Create(tabBtn.UIStroke, TweenInfo.new(0.2), {
                    Transparency = 1
                }):Play()
            end
        end
        for _, page in pairs(activePages) do
            page.Visible = false
        end
        tweenService:Create(Settings, TweenInfo.new(0.2), {
            ImageColor3 = Color3.fromRGB(170, 170, 170)
        }):Play()
        SettingsPage.Visible = true
    end)
    versionLabel.Name = "Title"
    versionLabel.Parent = MainFrame
    versionLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    versionLabel.BackgroundTransparency = 1
    versionLabel.BorderColor3 = Color3.fromRGB(20, 20, 20)
    versionLabel.Position = UDim2.new(0.162352934, 0, 0.883, 0)
    versionLabel.Size = UDim2.new(0, 41, 0, 23)
    versionLabel.Font = Enum.Font.Gotham
    versionLabel.Text = subtitle or ""
    versionLabel.TextColor3 = Color3.fromRGB(153, 153, 153)
    versionLabel.TextSize = 13
    versionLabel.TextTransparency = 0.4
    versionLabelCorner.CornerRadius = UDim.new(0, 4)
    versionLabelCorner.Parent = versionLabel
    
    return {
        NewTab = function(_, tabTitle, tabName)
            local newTabPage = Instance.new("ScrollingFrame")
            local tabPageLayout = Instance.new("UIListLayout")
            local emptyFrame = Instance.new("Frame")
            table.insert(activePages, newTabPage)
            newTabPage.Name = tabName
            newTabPage.Parent = FrameFolder
            newTabPage.Active = true
            newTabPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            newTabPage.BackgroundTransparency = 0.5
            newTabPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
            newTabPage.Position = UDim2.new(0.273000062, 0, 0.160000026, 0)
            newTabPage.Size = UDim2.new(0, 303, 0, 170)
            newTabPage.Visible = false
            newTabPage.CanvasSize = UDim2.new(0, 0, 2.20000005, 0)
            newTabPage.ScrollBarThickness = 0
            newTabPage.ScrollingDirection = Enum.ScrollingDirection.Y
            tabPageLayout.Parent = newTabPage
            tabPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            tabPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
            tabPageLayout.Padding = UDim.new(0, 5)
            emptyFrame.Parent = newTabPage
            emptyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            emptyFrame.BackgroundTransparency = 1
            emptyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            emptyFrame.BorderSizePixel = 0
            emptyFrame.LayoutOrder = -1
            emptyFrame.Position = UDim2.new(0, 0, 0.173410401, 0)
            emptyFrame.Size = UDim2.new(0, 100, 0, 0)
            local newTabButton = Instance.new("TextButton")
            local newTabButtonCorner = Instance.new("UICorner")
            local newTabButtonStroke = Instance.new("UIStroke")
            table.insert(tabButtonList, newTabButton)
            newTabButton.Name = "tBtn"
            newTabButton.Parent = tabScrollFrame
            newTabButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
            newTabButton.BackgroundTransparency = 1
            newTabButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
            newTabButton.Position = UDim2.new(0, 0, 0.0173410401, 0)
            newTabButton.Size = UDim2.new(0, 94, 0, 25)
            newTabButton.AutoButtonColor = false
            newTabButton.Font = Enum.Font.Gotham
            newTabButton.Text = tabTitle
            newTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            newTabButton.TextSize = 12
            newTabButtonCorner.CornerRadius = UDim.new(0, 3)
            newTabButtonCorner.Parent = newTabButton
            newTabButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            newTabButtonStroke.Color = Color3.fromRGB(44, 44, 44)
            newTabButtonStroke.Transparency = 1
            newTabButtonStroke.Parent = newTabButton
            tabScrollFrame.CanvasSize = UDim2.new(0, 0, 0, tabListLayout.AbsoluteContentSize.Y + 7)
            newTabButton.MouseButton1Click:Connect(function()
                if SettingsPage.Visible then
                    SettingsPage.Visible = false
                    tweenService:Create(Settings, TweenInfo.new(0.2), {
                        ImageColor3 = Color3.fromRGB(102, 102, 102)
                    }):Play()
                end
                for _, btn in pairs(tabButtonList) do
                    if btn.BackgroundTransparency ~= 1 then
                        tweenService:Create(btn, TweenInfo.new(0.2), {
                            TextColor3 = Color3.fromRGB(255, 255, 255)
                        }):Play()
                        tweenService:Create(btn, TweenInfo.new(0.2), {
                            BackgroundTransparency = 1
                        }):Play()
                        tweenService:Create(btn.UIStroke, TweenInfo.new(0.2), {
                            Transparency = 1
                        }):Play()
                    end
                end
                for _, page in pairs(activePages) do
                    page.Visible = false
                end
                tweenService:Create(newTabButton, TweenInfo.new(0.2), {
                    TextColor3 = labelColor
                }):Play()
                tweenService:Create(newTabButton, TweenInfo.new(0.2), {
                    BackgroundTransparency = 0.5
                }):Play()
                tweenService:Create(newTabButton.UIStroke, TweenInfo.new(0.2), {
                    Transparency = 0.2
                }):Play()
                newTabPage.Visible = true
            end)
            
            return {
                NewSection = function()
                    return {
                        NewNotify = function(_, message, duration)
                            task.spawn(function()
                                duration = duration or 5
                                local notifyShadow = Instance.new("ImageLabel")
                                local notifyFrame = Instance.new("Frame")
                                local notifyFrameCorner = Instance.new("UICorner")
                                local notifyText = Instance.new("TextLabel")
                                local timerBar = Instance.new("Frame")
                                local timerBarCorner = Instance.new("UICorner")
                                local patternImage = Instance.new("ImageLabel")
                                local notifyStroke = Instance.new("UIStroke")
                                local belowTimerBar = Instance.new("Frame")
                                local belowTimerBarCorner = Instance.new("UICorner")
                                notifyShadow.Name = "NotifyShadow"
                                notifyShadow.Parent = NotifyFolder
                                notifyShadow.AnchorPoint = Vector2.new(1, 1)
                                notifyShadow.BackgroundTransparency = 1
                                notifyShadow.BorderSizePixel = 0
                                notifyShadow.Position = UDim2.new(3, 0, 1, 0)
                                notifyShadow.Size = UDim2.new(0, 278, 0, 123)
                                notifyShadow.ZIndex = -3
                                notifyShadow.Image = "rbxassetid://6014261993"
                                notifyShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
                                notifyShadow.ImageTransparency = 0.5
                                notifyShadow.ScaleType = Enum.ScaleType.Slice
                                notifyShadow.SliceCenter = Rect.new(49, 49, 450, 450)
                                notifyFrame.Name = "Notify"
                                notifyFrame.Parent = notifyShadow
                                notifyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                                notifyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                                notifyFrame.BackgroundTransparency = 0.15
                                notifyFrame.BorderColor3 = Color3.fromRGB(25, 25, 25)
                                notifyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                                notifyFrame.Size = UDim2.new(0, 225, 0, 75)
                                notifyFrameCorner.CornerRadius = UDim.new(0, 4)
                                notifyFrameCorner.Parent = notifyFrame
                                notifyText.Name = "NotifyText"
                                notifyText.Parent = notifyFrame
                                notifyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                notifyText.BackgroundTransparency = 1
                                notifyText.Position = UDim2.new(0.0622222237, 0, 0.106666669, 0)
                                notifyText.Size = UDim2.new(0, 196, 0, 57)
                                notifyText.Font = Enum.Font.Gotham
                                notifyText.Text = message
                                notifyText.TextColor3 = Color3.fromRGB(255, 255, 255)
                                notifyText.TextSize = 15
                                notifyText.TextWrapped = true
                                notifyText.TextXAlignment = Enum.TextXAlignment.Left
                                notifyText.TextYAlignment = Enum.TextYAlignment.Top
                                timerBar.Name = "TimerBar"
                                timerBar.Parent = notifyFrame
                                timerBar.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
                                timerBar.BorderColor3 = Color3.fromRGB(0, 203, 203)
                                timerBar.Position = UDim2.new(0.014, 0, 0.906666696, 0)
                                timerBar.Size = UDim2.new(0, 219, 0, 4)
                                timerBar.ZIndex = 2
                                timerBarCorner.Parent = timerBar
                                patternImage.Name = "Pattern"
                                patternImage.Parent = notifyFrame
                                patternImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                patternImage.BackgroundTransparency = 1
                                patternImage.Size = UDim2.new(0, 224, 0, 72)
                                patternImage.ZIndex = -1
                                patternImage.Image = "rbxassetid://2151741365"
                                patternImage.ImageTransparency = 0.8
                                patternImage.ScaleType = Enum.ScaleType.Tile
                                patternImage.SliceCenter = Rect.new(0, 256, 0, 256)
                                patternImage.TileSize = UDim2.new(0, 250, 0, 250)
                                notifyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                                notifyStroke.Color = Color3.fromRGB(62, 62, 62)
                                notifyStroke.Transparency = 0.2
                                notifyStroke.Parent = notifyFrame
                                belowTimerBar.Name = "BelowTimeBar"
                                belowTimerBar.Parent = notifyFrame
                                belowTimerBar.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
                                belowTimerBar.BorderColor3 = Color3.fromRGB(67, 67, 67)
                                belowTimerBar.AnchorPoint = Vector2.new(0.5, 0)
                                belowTimerBar.Position = UDim2.new(0.5, 0, 0.906666696, 0)
                                belowTimerBar.Size = UDim2.new(0, 219, 0, 4)
                                belowTimerBarCorner.CornerRadius = UDim.new(0, 4)
                                belowTimerBarCorner.Parent = belowTimerBar
                                tweenService:Create(notifyShadow, TweenInfo.new(0.5), {
                                    Position = UDim2.new(1, 0, 1, 0)
                                }):Play()
                                tweenService:Create(timerBar, TweenInfo.new(tonumber(duration), Enum.EasingStyle.Linear), {
                                    Size = UDim2.new(0, 0, 0, 4)
                                }):Play()
                                task.wait(tonumber(duration) - 0.1)
                                timerBar:Destroy()
                                task.wait(0.09)
                                tweenService:Create(notifyShadow, TweenInfo.new(0.5), {
                                    Position = UDim2.new(2, 0, 1, 0)
                                }):Play()
                                wait(0.6)
                                notifyShadow:Destroy()
                            end)
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                        end,
                        NewSmall = function(_, buttonText, callback)
                            local smallButton = Instance.new("TextButton")
                            local smallButtonCorner = Instance.new("UICorner")
                            local smallButtonStroke = Instance.new("UIStroke")
                            smallButton.Name = "SmallButton"
                            smallButton.Parent = LocalFrame
                            smallButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            smallButton.BackgroundTransparency = 0.3
                            smallButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            smallButton.Position = UDim2.new(0.424561381, 0, 0.65, 0)
                            smallButton.Size = UDim2.new(0, 155, 0, 30)
                            smallButton.AutoButtonColor = false
                            smallButton.Font = Enum.Font.SourceSans
                            smallButton.Text = buttonText
                            smallButton.TextColor3 = labelColor
                            smallButton.TextSize = 14
                            smallButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    callback()
                                end)
                            end)
                            smallButtonCorner.CornerRadius = UDim.new(0, 4)
                            smallButtonCorner.Parent = smallButton
                            smallButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            smallButtonStroke.Color = Color3.fromRGB(39, 39, 39)
                            smallButtonStroke.Thickness = 0.8
                            smallButtonStroke.Transparency = 0.4
                            smallButtonStroke.Parent = smallButton
                        end,
                        NewButton = function(_, labelText, helpMessage, action)
                            local button = Instance.new("TextButton")
                            local buttonCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            local buttonLabel = Instance.new("TextLabel")
                            local buttonStroke = Instance.new("UIStroke")
                            local buttonIcon = Instance.new("ImageLabel")
                            button.Name = "cTextButton"
                            button.Parent = newTabPage
                            button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            button.BackgroundTransparency = 0.2
                            button.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            button.Position = UDim2.new(0.0656108633, 0, 0.196325853, 0)
                            button.Size = UDim2.new(0, 295, 0, 30)
                            button.AutoButtonColor = false
                            button.Font = Enum.Font.Gotham
                            button.Text = ""
                            button.TextColor3 = Color3.fromRGB(255, 255, 255)
                            button.TextSize = 12
                            button.TextXAlignment = Enum.TextXAlignment.Left
                            buttonCorner.CornerRadius = UDim.new(0, 4)
                            buttonCorner.Parent = button
                            helpButton.Name = "Help"
                            helpButton.Parent = button
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = helpMessage or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            buttonLabel.Name = "Text"
                            buttonLabel.Parent = button
                            buttonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            buttonLabel.BackgroundTransparency = 1
                            buttonLabel.Position = UDim2.new(0.125389799, 0, 0.150000006, 0)
                            buttonLabel.Size = UDim2.new(0, 223, 0, 22)
                            buttonLabel.Font = Enum.Font.Gotham
                            buttonLabel.Text = labelText
                            buttonLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            buttonLabel.TextSize = 13
                            buttonLabel.TextXAlignment = Enum.TextXAlignment.Left
                            buttonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            buttonStroke.Color = Color3.fromRGB(49, 49, 49)
                            buttonStroke.Transparency = 0.2
                            buttonStroke.Parent = button
                            buttonIcon.Name = "Icon"
                            buttonIcon.Parent = button
                            buttonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            buttonIcon.BackgroundTransparency = 1
                            buttonIcon.Position = UDim2.new(0.0270000007, 0, 0.246999994, 0)
                            buttonIcon.Rotation = 270
                            buttonIcon.Size = UDim2.new(0, 15, 0, 15)
                            buttonIcon.Image = "http://www.roblox.com/asset/?id=12596469486"
                            buttonIcon.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            button.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    action()
                                end)
                            end)
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                        end,
                        NewButtonCooldown = function(_, labelText, helpMessage, cooldownSeconds, action)
                            local button = Instance.new("TextButton")
                            local buttonCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            local buttonLabel = Instance.new("TextLabel")
                            local buttonStroke = Instance.new("UIStroke")
                            local buttonIcon = Instance.new("ImageLabel")
                            button.Name = "cTextButton"
                            button.Parent = newTabPage
                            button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            button.BackgroundTransparency = 0.2
                            button.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            button.Position = UDim2.new(0.0656108633, 0, 0.196325853, 0)
                            button.Size = UDim2.new(0, 295, 0, 30)
                            button.AutoButtonColor = false
                            button.Font = Enum.Font.Gotham
                            button.Text = ""
                            button.TextColor3 = Color3.fromRGB(255, 255, 255)
                            button.TextSize = 12
                            button.TextXAlignment = Enum.TextXAlignment.Left
                            buttonCorner.CornerRadius = UDim.new(0, 4)
                            buttonCorner.Parent = button
                            helpButton.Name = "Help"
                            helpButton.Parent = button
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = helpMessage or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            buttonLabel.Name = "Text"
                            buttonLabel.Parent = button
                            buttonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            buttonLabel.BackgroundTransparency = 1
                            buttonLabel.Position = UDim2.new(0.125389799, 0, 0.150000006, 0)
                            buttonLabel.Size = UDim2.new(0, 223, 0, 22)
                            buttonLabel.Font = Enum.Font.Gotham
                            buttonLabel.Text = labelText
                            buttonLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            buttonLabel.TextSize = 13
                            buttonLabel.TextXAlignment = Enum.TextXAlignment.Left
                            buttonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            buttonStroke.Color = Color3.fromRGB(49, 49, 49)
                            buttonStroke.Transparency = 0.2
                            buttonStroke.Parent = button
                            buttonIcon.Name = "Icon"
                            buttonIcon.Parent = button
                            buttonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            buttonIcon.BackgroundTransparency = 1
                            buttonIcon.Position = UDim2.new(0.0270000007, 0, 0.246999994, 0)
                            buttonIcon.Rotation = 270
                            buttonIcon.Size = UDim2.new(0, 15, 0, 15)
                            buttonIcon.Image = "http://www.roblox.com/asset/?id=12596469486"
                            buttonIcon.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            local isOnCooldown = false
                            button.MouseButton1Click:Connect(function()
                                if isOnCooldown == false then
                                    isOnCooldown = true
                                    action()
                                    buttonLabel.TextColor3 = Color3.fromRGB(255, 45, 45)
                                    buttonLabel.Text = "Cooldown... Please wait " .. cooldownSeconds .. " seconds"
                                    wait(1)
                                    local remaining = cooldownSeconds
                                    for i = 1, remaining do
                                        buttonLabel.Text = "Cooldown... Please wait " .. remaining - 1 .. " seconds"
                                        remaining = remaining - 1
                                        if remaining == 0 then
                                            buttonLabel.Text = labelText
                                            buttonLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                            isOnCooldown = false
                                        end
                                        wait(1)
                                    end
                                end
                            end)
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                        end,
                        NewToggle = function(_, toggleLabel, helpMessage, callback)
                            local toggleObject = {}
                            local toggleButton = Instance.new("TextButton")
                            local toggleButtonCorner = Instance.new("UICorner")
                            local toggleButtonStroke = Instance.new("UIStroke")
                            local toggleText = Instance.new("TextLabel")
                            local toggleOutside = Instance.new("Frame")
                            local toggleOutsideStroke = Instance.new("UIStroke")
                            local toggleInside = Instance.new("Frame")
                            local toggleInsideCorner = Instance.new("UICorner")
                            local toggleOutsideCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            toggleButton.Name = "cToggle"
                            toggleButton.Parent = newTabPage
                            toggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            toggleButton.BackgroundTransparency = 0.2
                            toggleButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            toggleButton.Position = UDim2.new(0.0656108633, 0, 0.339535713, 0)
                            toggleButton.Size = UDim2.new(0, 295, 0, 30)
                            toggleButton.AutoButtonColor = false
                            toggleButton.Font = Enum.Font.Gotham
                            toggleButton.Text = ""
                            toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            toggleButton.TextSize = 12
                            toggleButton.TextXAlignment = Enum.TextXAlignment.Left
                            toggleButtonCorner.CornerRadius = UDim.new(0, 4)
                            toggleButtonCorner.Parent = toggleButton
                            toggleButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            toggleButtonStroke.Color = Color3.fromRGB(49, 49, 49)
                            toggleButtonStroke.Transparency = 0.2
                            toggleButtonStroke.Parent = toggleButton
                            toggleText.Name = "Text"
                            toggleText.Parent = toggleButton
                            toggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            toggleText.BackgroundTransparency = 1
                            toggleText.Position = UDim2.new(0.125389799, 0, 0.150000006, 0)
                            toggleText.Size = UDim2.new(0, 223, 0, 22)
                            toggleText.Font = Enum.Font.Gotham
                            toggleText.Text = toggleLabel
                            toggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
                            toggleText.TextSize = 13
                            toggleText.TextXAlignment = Enum.TextXAlignment.Left
                            toggleOutside.Parent = toggleButton
                            toggleOutside.AnchorPoint = Vector2.new(0, 0.5)
                            toggleOutside.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            toggleOutside.BackgroundTransparency = 1
                            toggleOutside.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            toggleOutside.BorderSizePixel = 0
                            toggleOutside.Position = UDim2.new(0.0289999992, 0, 0.5, 0)
                            toggleOutside.Size = UDim2.new(0, 16, 0, 16)
                            toggleOutsideStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            toggleOutsideStroke.Color = Color3.fromRGB(49, 49, 49)
                            toggleOutsideStroke.Thickness = 1.7
                            toggleOutsideStroke.Parent = toggleOutside
                            toggleInside.Parent = toggleOutside
                            toggleInside.AnchorPoint = Vector2.new(0.5, 0.5)
                            toggleInside.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
                            toggleInside.BackgroundTransparency = 1
                            toggleInside.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            toggleInside.BorderSizePixel = 0
                            toggleInside.Position = UDim2.new(0.5, 0, 0.5, 0)
                            toggleInside.Size = UDim2.new(0, 12, 0, 12)
                            toggleInsideCorner.CornerRadius = UDim.new(0, 5)
                            toggleInsideCorner.Parent = toggleInside
                            toggleOutsideCorner.CornerRadius = UDim.new(0, 5)
                            toggleOutsideCorner.Parent = toggleOutside
                            helpButton.Name = "Help"
                            helpButton.Parent = toggleButton
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = helpMessage or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            local toggleValue = false
                            toggleButton.MouseButton1Click:Connect(function()
                                if toggleValue then
                                    tweenService:Create(toggleInside, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                else
                                    tweenService:Create(toggleInside, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0
                                    }):Play()
                                end
                                toggleValue = not toggleValue
                                pcall(callback, toggleValue)
                            end)
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                            function toggleObject.Enable()
                                tweenService:Create(toggleInside, TweenInfo.new(0.2), {
                                    BackgroundTransparency = 0
                                }):Play()
                                toggleValue = not toggleValue
                                spawn(function()
                                    pcall(callback, toggleValue)
                                end)
                            end
                            return toggleObject
                        end,
                        NewToggleCooldown = function(_, toggleLabel, helpMessage, cooldownSeconds, callback)
                            local toggleButton = Instance.new("TextButton")
                            local toggleButtonCorner = Instance.new("UICorner")
                            local toggleButtonStroke = Instance.new("UIStroke")
                            local toggleText = Instance.new("TextLabel")
                            local toggleOutside = Instance.new("Frame")
                            local toggleOutsideStroke = Instance.new("UIStroke")
                            local toggleInside = Instance.new("Frame")
                            local toggleInsideCorner = Instance.new("UICorner")
                            local toggleOutsideCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            toggleButton.Name = "cToggle"
                            toggleButton.Parent = newTabPage
                            toggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            toggleButton.BackgroundTransparency = 0.2
                            toggleButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            toggleButton.Position = UDim2.new(0.0656108633, 0, 0.339535713, 0)
                            toggleButton.Size = UDim2.new(0, 295, 0, 30)
                            toggleButton.AutoButtonColor = false
                            toggleButton.Font = Enum.Font.Gotham
                            toggleButton.Text = ""
                            toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            toggleButton.TextSize = 12
                            toggleButton.TextXAlignment = Enum.TextXAlignment.Left
                            toggleButtonCorner.CornerRadius = UDim.new(0, 4)
                            toggleButtonCorner.Parent = toggleButton
                            toggleButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            toggleButtonStroke.Color = Color3.fromRGB(49, 49, 49)
                            toggleButtonStroke.Transparency = 0.2
                            toggleButtonStroke.Parent = toggleButton
                            toggleText.Name = "Text"
                            toggleText.Parent = toggleButton
                            toggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            toggleText.BackgroundTransparency = 1
                            toggleText.Position = UDim2.new(0.125389799, 0, 0.150000006, 0)
                            toggleText.Size = UDim2.new(0, 223, 0, 22)
                            toggleText.Font = Enum.Font.Gotham
                            toggleText.Text = toggleLabel
                            toggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
                            toggleText.TextSize = 13
                            toggleText.TextXAlignment = Enum.TextXAlignment.Left
                            toggleOutside.Parent = toggleButton
                            toggleOutside.AnchorPoint = Vector2.new(0, 0.5)
                            toggleOutside.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            toggleOutside.BackgroundTransparency = 1
                            toggleOutside.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            toggleOutside.BorderSizePixel = 0
                            toggleOutside.Position = UDim2.new(0.0289999992, 0, 0.5, 0)
                            toggleOutside.Size = UDim2.new(0, 16, 0, 16)
                            toggleOutsideStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            toggleOutsideStroke.Color = Color3.fromRGB(49, 49, 49)
                            toggleOutsideStroke.Thickness = 1.7
                            toggleOutsideStroke.Parent = toggleOutside
                            toggleInside.Parent = toggleOutside
                            toggleInside.AnchorPoint = Vector2.new(0.5, 0.5)
                            toggleInside.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
                            toggleInside.BackgroundTransparency = 1
                            toggleInside.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            toggleInside.BorderSizePixel = 0
                            toggleInside.Position = UDim2.new(0.5, 0, 0.5, 0)
                            toggleInside.Size = UDim2.new(0, 12, 0, 12)
                            toggleInsideCorner.CornerRadius = UDim.new(0, 5)
                            toggleInsideCorner.Parent = toggleInside
                            toggleOutsideCorner.CornerRadius = UDim.new(0, 5)
                            toggleOutsideCorner.Parent = toggleOutside
                            helpButton.Name = "Help"
                            helpButton.Parent = toggleButton
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = helpMessage or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            local cooldownActive = false
                            local toggleValue = false
                            toggleButton.MouseButton1Click:Connect(function()
                                if toggleValue ~= false then
                                    if cooldownActive == false then
                                        cooldownActive = true
                                        toggleValue = not toggleValue
                                        pcall(callback, toggleValue)
                                        _G.EnabledC5 = false
                                        toggleText.TextColor3 = Color3.fromRGB(255, 45, 45)
                                        toggleText.Text = "Cooldown... Please wait " .. cooldownSeconds .. " seconds"
                                        wait(1)
                                        local remaining = cooldownSeconds
                                        for i = 1, remaining do
                                            toggleText.Text = "Cooldown... Please wait " .. remaining - 1 .. " seconds"
                                            remaining = remaining - 1
                                            if remaining == 0 then
                                                toggleText.Text = toggleLabel
                                                tweenService:Create(toggleInside, TweenInfo.new(0.2), {
                                                    BackgroundTransparency = 1
                                                }):Play()
                                                toggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
                                                cooldownActive = false
                                            end
                                            wait(1)
                                        end
                                    end
                                elseif cooldownActive == false then
                                    tweenService:Create(toggleInside, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0
                                    }):Play()
                                    _G.EnabledC5 = true
                                end
                                if _G.EnabledC5 == true then
                                    toggleValue = not toggleValue
                                    pcall(callback, toggleValue)
                                end
                            end)
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                        end,
                        NewLabel = function(_, labelText)
                            local labelObject = {}
                            local labelButton = Instance.new("TextButton")
                            local labelButtonCorner = Instance.new("UICorner")
                            local labelTextObject = Instance.new("TextLabel")
                            local labelStroke = Instance.new("UIStroke")
                            labelButton.Name = "cTextLabel"
                            labelButton.Parent = newTabPage
                            labelButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            labelButton.BackgroundTransparency = 0.2
                            labelButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            labelButton.Position = UDim2.new(0.0656108633, 0, 0.290152997, 0)
                            labelButton.Size = UDim2.new(0, 295, 0, 30)
                            labelButton.AutoButtonColor = false
                            labelButton.Font = Enum.Font.Gotham
                            labelButton.Text = ""
                            labelButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            labelButton.TextSize = 12
                            labelButton.TextXAlignment = Enum.TextXAlignment.Left
                            labelButtonCorner.CornerRadius = UDim.new(0, 4)
                            labelButtonCorner.Parent = labelButton
                            labelTextObject.Name = "Text"
                            labelTextObject.Parent = labelButton
                            labelTextObject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            labelTextObject.BackgroundTransparency = 1
                            labelTextObject.Position = UDim2.new(0.0508135259, 0, 0.116666667, 0)
                            labelTextObject.Size = UDim2.new(0, 265, 0, 24)
                            labelTextObject.Font = Enum.Font.Gotham
                            labelTextObject.Text = labelText
                            labelTextObject.TextColor3 = labelColor
                            labelTextObject.TextSize = 13
                            labelTextObject.TextXAlignment = Enum.TextXAlignment.Left
                            labelStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            labelStroke.Color = Color3.fromRGB(49, 49, 49)
                            labelStroke.Transparency = 0.2
                            labelStroke.Parent = labelButton
                            function labelObject.UpdateLabel(_, newText)
                                if labelTextObject.Text ~= newText then
                                    labelTextObject.Text = newText
                                end
                            end
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                            return labelObject
                        end,
                        NewTextBox = function(_, boxLabel, placeholderText, boxName)
                            local textBoxButton = Instance.new("TextButton")
                            local textBoxButtonCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            local iconImage = Instance.new("ImageLabel")
                            local labelText = Instance.new("TextLabel")
                            local textBox = Instance.new("TextBox")
                            local textBoxCorner = Instance.new("UICorner")
                            local textBoxStroke = Instance.new("UIStroke")
                            textBoxButton.Name = boxName
                            textBoxButton.Parent = newTabPage
                            textBoxButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            textBoxButton.BackgroundTransparency = 0.2
                            textBoxButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            textBoxButton.Position = UDim2.new(0.0656108633, 0, 0.143239439, 0)
                            textBoxButton.Size = UDim2.new(0, 295, 0, 30)
                            textBoxButton.AutoButtonColor = false
                            textBoxButton.Font = Enum.Font.Gotham
                            textBoxButton.Text = ""
                            textBoxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textBoxButton.TextSize = 12
                            textBoxButton.TextXAlignment = Enum.TextXAlignment.Left
                            textBoxButtonCorner.CornerRadius = UDim.new(0, 4)
                            textBoxButtonCorner.Parent = textBoxButton
                            helpButton.Name = "Help"
                            helpButton.Parent = textBoxButton
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = HelpText or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            iconImage.Name = "Icon"
                            iconImage.Parent = textBoxButton
                            iconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            iconImage.BackgroundTransparency = 1
                            iconImage.Position = UDim2.new(0.026779661, 0, 0.24666667, 0)
                            iconImage.Rotation = 270
                            iconImage.Size = UDim2.new(0, 15, 0, 15)
                            iconImage.Image = "http://www.roblox.com/asset/?id=12596508432"
                            iconImage.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            labelText.Name = "Text"
                            labelText.Parent = textBoxButton
                            labelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            labelText.BackgroundTransparency = 1
                            labelText.Position = UDim2.new(0.125389799, 0, 0.13333334, 0)
                            labelText.Size = UDim2.new(0, 102, 0, 22)
                            labelText.Font = Enum.Font.Gotham
                            labelText.Text = boxLabel
                            labelText.TextColor3 = Color3.fromRGB(255, 255, 255)
                            labelText.TextSize = 13
                            labelText.TextXAlignment = Enum.TextXAlignment.Left
                            textBox.Name = "Box"
                            textBox.Parent = textBoxButton
                            textBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            textBox.BackgroundTransparency = 1
                            textBox.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            textBox.Position = UDim2.new(0.473479509, 0, 0.149442539, 0)
                            textBox.Size = UDim2.new(0, 120, 0, 22)
                            textBox.Font = Enum.Font.Gotham
                            textBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
                            textBox.PlaceholderText = placeholderText
                            textBox.Text = ""
                            textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textBox.TextSize = 11
                            textBox.TextWrapped = true
                            textBoxCorner.CornerRadius = UDim.new(0, 4)
                            textBoxCorner.Parent = textBox
                            textBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            textBoxStroke.Color = Color3.fromRGB(49, 49, 49)
                            textBoxStroke.Transparency = 0.2
                            textBoxStroke.Parent = textBoxButton
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                        end,
                        NewFocusTextBox = function(_, boxLabel, placeholderText, _, callback)
                            local textBoxButton = Instance.new("TextButton")
                            local textBoxButtonCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            local iconImage = Instance.new("ImageLabel")
                            local labelText = Instance.new("TextLabel")
                            local textBox = Instance.new("TextBox")
                            local textBoxCorner = Instance.new("UICorner")
                            local textBoxStroke = Instance.new("UIStroke")
                            textBoxButton.Name = "TemplateTextBox"
                            textBoxButton.Parent = newTabPage
                            textBoxButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            textBoxButton.BackgroundTransparency = 0.2
                            textBoxButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            textBoxButton.Position = UDim2.new(0.0656108633, 0, 0.143239439, 0)
                            textBoxButton.Size = UDim2.new(0, 295, 0, 30)
                            textBoxButton.AutoButtonColor = false
                            textBoxButton.Font = Enum.Font.Gotham
                            textBoxButton.Text = ""
                            textBoxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textBoxButton.TextSize = 12
                            textBoxButton.TextXAlignment = Enum.TextXAlignment.Left
                            textBoxButtonCorner.CornerRadius = UDim.new(0, 4)
                            textBoxButtonCorner.Parent = textBoxButton
                            helpButton.Name = "Help"
                            helpButton.Parent = textBoxButton
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = HelpText or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            iconImage.Name = "Icon"
                            iconImage.Parent = textBoxButton
                            iconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            iconImage.BackgroundTransparency = 1
                            iconImage.Position = UDim2.new(0.026779661, 0, 0.24666667, 0)
                            iconImage.Rotation = 270
                            iconImage.Size = UDim2.new(0, 15, 0, 15)
                            iconImage.Image = "http://www.roblox.com/asset/?id=12596508432"
                            iconImage.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            labelText.Name = "Text"
                            labelText.Parent = textBoxButton
                            labelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            labelText.BackgroundTransparency = 1
                            labelText.Position = UDim2.new(0.125389799, 0, 0.13333334, 0)
                            labelText.Size = UDim2.new(0, 102, 0, 22)
                            labelText.Font = Enum.Font.Gotham
                            labelText.Text = boxLabel
                            labelText.TextColor3 = Color3.fromRGB(255, 255, 255)
                            labelText.TextSize = 13
                            labelText.TextXAlignment = Enum.TextXAlignment.Left
                            textBox.Name = "Box"
                            textBox.Parent = textBoxButton
                            textBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            textBox.BackgroundTransparency = 1
                            textBox.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            textBox.Position = UDim2.new(0.473479509, 0, 0.149442539, 0)
                            textBox.Size = UDim2.new(0, 120, 0, 22)
                            textBox.Font = Enum.Font.Gotham
                            textBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
                            textBox.PlaceholderText = placeholderText
                            textBox.Text = ""
                            textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textBox.TextSize = 11
                            textBox.TextWrapped = true
                            textBoxCorner.CornerRadius = UDim.new(0, 4)
                            textBoxCorner.Parent = textBox
                            textBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            textBoxStroke.Color = Color3.fromRGB(49, 49, 49)
                            textBoxStroke.Transparency = 0.2
                            textBoxStroke.Parent = textBoxButton
                            textBox.FocusLost:Connect(function()
                                callback(textBox.Text)
                                wait(0.1)
                                textBox.Text = ""
                            end)
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                        end,
                        NewSlider = function(_, sliderLabel, minValue, maxValue, callback)
                            local sliderFrame = Instance.new("Frame")
                            local sliderFrameCorner = Instance.new("UICorner")
                            local sliderFrameStroke = Instance.new("UIStroke")
                            local label = Instance.new("TextLabel")
                            local sliderDisplay = Instance.new("Frame")
                            local sliderDisplayCorner = Instance.new("UICorner")
                            local sliderBackground = Instance.new("Frame")
                            local sliderBackgroundCorner = Instance.new("UICorner")
                            local slideTrigger = Instance.new("TextButton")
                            local sliderValue = Instance.new("TextLabel")
                            sliderFrame.Name = "Slider"
                            sliderFrame.Parent = newTabPage
                            sliderFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            sliderFrame.BackgroundTransparency = 0.2
                            sliderFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            sliderFrame.BorderSizePixel = 0
                            sliderFrame.Position = UDim2.new(0.0132013205, 0, 0.382352948, 0)
                            sliderFrame.Size = UDim2.new(0, 295, 0, 48)
                            sliderFrameCorner.CornerRadius = UDim.new(0, 4)
                            sliderFrameCorner.Parent = sliderFrame
                            sliderFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            sliderFrameStroke.Color = Color3.fromRGB(49, 49, 49)
                            sliderFrameStroke.Transparency = 0.2
                            sliderFrameStroke.Parent = sliderFrame
                            label.Name = "Text"
                            label.Parent = sliderFrame
                            label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            label.BackgroundTransparency = 1
                            label.Position = UDim2.new(0.0236948822, 0, 0.10310173, 0)
                            label.Size = UDim2.new(0, 230, 0, 19)
                            label.Font = Enum.Font.Gotham
                            label.Text = sliderLabel
                            label.TextColor3 = Color3.fromRGB(255, 255, 255)
                            label.TextSize = 13
                            label.TextXAlignment = Enum.TextXAlignment.Left
                            sliderDisplay.Name = "SliderDisplay"
                            sliderDisplay.Parent = sliderFrame
                            sliderDisplay.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
                            sliderDisplay.BorderColor3 = Color3.fromRGB(0, 203, 203)
                            sliderDisplay.Position = UDim2.new(0.0200000834, 0, 0.610000014, 0)
                            sliderDisplay.Size = UDim2.new(0, 0, 0, 12)
                            sliderDisplay.ZIndex = 2
                            sliderDisplayCorner.Parent = sliderDisplay
                            sliderBackground.Name = "BelowSlider"
                            sliderBackground.Parent = sliderFrame
                            sliderBackground.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
                            sliderBackground.BorderColor3 = Color3.fromRGB(67, 67, 67)
                            sliderBackground.Position = UDim2.new(0.0200000834, 0, 0.620000005, 0)
                            sliderBackground.Size = UDim2.new(0.96, 0, 0, 12)
                            sliderBackgroundCorner.Parent = sliderBackground
                            slideTrigger.Name = "SlideTrigger"
                            slideTrigger.Parent = sliderFrame
                            slideTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            slideTrigger.BackgroundTransparency = 1
                            slideTrigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            slideTrigger.BorderSizePixel = 0
                            slideTrigger.Position = UDim2.new(0.0203389823, 0, 0.645833313, 0)
                            slideTrigger.Size = UDim2.new(1, 0, 0, 10)
                            slideTrigger.Font = Enum.Font.SourceSans
                            slideTrigger.Text = ""
                            slideTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
                            slideTrigger.TextSize = 14
                            sliderValue.Name = "SliderText"
                            sliderValue.Parent = sliderFrame
                            sliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            sliderValue.BackgroundTransparency = 1
                            sliderValue.Position = UDim2.new(0.881322026, 0, 0.10310173, 0)
                            sliderValue.Size = UDim2.new(0, 26, 0, 19)
                            sliderValue.Font = Enum.Font.Gotham
                            sliderValue.Text = "1"
                            sliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                            sliderValue.TextSize = 13
                            game.Players.LocalPlayer:GetMouse()
                            local isSliding = false
                            game:GetService("UserInputService").InputEnded:Connect(function(inputEnded)
                                if inputEnded.UserInputType == Enum.UserInputType.MouseButton1 then
                                    isSliding = false
                                end
                            end)
                            slideTrigger.MouseButton1Down:Connect(function()
                                isSliding = true
                                task.spawn(function()
                                    while true do
                                        task.wait()
                                        if isSliding then
                                            local mouseX = game:GetService("Players").LocalPlayer:GetMouse().X
                                            local rawValue = math.clamp((mouseX - sliderBackground.AbsolutePosition.X) / sliderBackground.AbsoluteSize.X, 0, 1)
                                            local value = minValue + (maxValue - minValue) * rawValue
                                            local roundedValue = math.floor(value / 1 + math.sign(value) * 0.5) * 1
                                            if roundedValue < 0 then
                                                roundedValue = roundedValue + 1
                                            end
                                            sliderDisplay.Size = UDim2.new((math.clamp(roundedValue, minValue, maxValue) - minValue) / (maxValue - minValue), 0, 0, 12)
                                            sliderValue.Text = tostring(math.clamp(roundedValue, minValue, maxValue))
                                            if roundedValue == 0 then
                                                sliderDisplay.Visible = false
                                            else
                                                sliderDisplay.Visible = true
                                            end
                                            task.spawn(function()
                                                callback(roundedValue)
                                            end)
                                        end
                                        if not isSliding then
                                            return
                                        end
                                    end
                                end)
                            end)
                            newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                        end,
                        WaitingFrame = function(_, message)
                            local waitingFrame = Instance.new("TextButton")
                            local waitingFrameCorner = Instance.new("UICorner")
                            local messageLabel = Instance.new("TextLabel")
                            local tipsLabel = Instance.new("TextLabel")
                            waitingFrame.Name = "WaitingFrame"
                            waitingFrame.Parent = game.CoreGui.IceHub.MainFrameShadow.MainFrame
                            waitingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                            waitingFrame.BorderColor3 = Color3.fromRGB(30, 30, 30)
                            waitingFrame.BorderSizePixel = 0
                            waitingFrame.Position = UDim2.new(0, 0, -0.00476190494, 0)
                            waitingFrame.Size = UDim2.new(0, 425, 0, 211)
                            waitingFrame.ZIndex = 5
                            waitingFrame.AutoButtonColor = false
                            waitingFrame.Font = Enum.Font.SourceSans
                            waitingFrame.Text = ""
                            waitingFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
                            waitingFrame.TextSize = 14
                            waitingFrameCorner.CornerRadius = UDim.new(0, 4)
                            waitingFrameCorner.Parent = waitingFrame
                            messageLabel.Name = "Message"
                            messageLabel.Parent = waitingFrame
                            messageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            messageLabel.BackgroundTransparency = 1
                            messageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            messageLabel.BorderSizePixel = 0
                            messageLabel.Position = UDim2.new(0.145882353, 0, 0.238095239, 0)
                            messageLabel.Size = UDim2.new(0, 303, 0, 100)
                            messageLabel.ZIndex = 6
                            messageLabel.Font = Enum.Font.SourceSansBold
                            messageLabel.Text = message
                            messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            messageLabel.TextSize = 17
                            messageLabel.TextWrapped = true
                            tipsLabel.Name = "Tips"
                            tipsLabel.Parent = waitingFrame
                            tipsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            tipsLabel.BackgroundTransparency = 1
                            tipsLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            tipsLabel.BorderSizePixel = 0
                            tipsLabel.Position = UDim2.new(0.0705882385, 0, 0.828571439, 0)
                            tipsLabel.Size = UDim2.new(0, 365, 0, 25)
                            tipsLabel.ZIndex = 6
                            tipsLabel.Font = Enum.Font.SourceSansBold
                            tipsLabel.Text = "If this window doesn't go away after a long, then report it to us."
                            tipsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            tipsLabel.TextSize = 14
                            tipsLabel.TextWrapped = true
                        end,
                        CloseWaitingFrame = function()
                            for _, child in pairs(MainFrame:GetChildren()) do
                                if child.Name == "WaitingFrame" then
                                    child:Destroy()
                                end
                            end
                        end,
                        NewSearchDropdown = function(_, dropdownLabel, _, searchPlaceholder, items, callback)
                            local dropdownObject = {}
                            local searchCallback = callback or function() end
                            local dropdownFrame = Instance.new("Frame")
                            local dropdownButton = Instance.new("TextButton")
                            local dropdownButtonCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            local iconImage = Instance.new("ImageLabel")
                            local dropdownText = Instance.new("TextLabel")
                            local listLayout = Instance.new("UIListLayout")
                            local frameStroke = Instance.new("UIStroke")
                            local frameCorner = Instance.new("UICorner")
                            local dropdownScroll = Instance.new("ScrollingFrame")
                            local scrollListLayout = Instance.new("UIListLayout")
                            local emptyFrame = Instance.new("Frame")
                            local searchBox = Instance.new("TextBox")
                            local searchBoxCorner = Instance.new("UICorner")
                            local searchBoxStroke = Instance.new("UIStroke")
                            dropdownFrame.Name = "DropdownFrame"
                            dropdownFrame.Parent = newTabPage
                            dropdownFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownFrame.BackgroundTransparency = 0.2
                            dropdownFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownFrame.BorderSizePixel = 0
                            dropdownFrame.Position = UDim2.new(0.00990098994, 0, -0.235294297, 0)
                            dropdownFrame.Size = UDim2.new(0, 295, 0, 30)
                            dropdownButton.Name = "cDropdown"
                            dropdownButton.Parent = dropdownFrame
                            dropdownButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownButton.BackgroundTransparency = 1
                            dropdownButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownButton.Position = UDim2.new(0.000110562003, 0, 0.00999999978, 0)
                            dropdownButton.Size = UDim2.new(0, 295, 0, 30)
                            dropdownButton.AutoButtonColor = false
                            dropdownButton.Font = Enum.Font.Gotham
                            dropdownButton.Text = ""
                            dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownButton.TextSize = 12
                            dropdownButton.TextXAlignment = Enum.TextXAlignment.Left
                            dropdownButtonCorner.CornerRadius = UDim.new(0, 4)
                            dropdownButtonCorner.Parent = dropdownButton
                            helpButton.Name = "Help"
                            helpButton.Parent = dropdownButton
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = HelpText or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            iconImage.Name = "Icon"
                            iconImage.Parent = dropdownButton
                            iconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            iconImage.BackgroundTransparency = 1
                            iconImage.Position = UDim2.new(0.0271186437, 0, 0.18033345, 0)
                            iconImage.Size = UDim2.new(0, 19, 0, 19)
                            iconImage.Image = "http://www.roblox.com/asset/?id=3926305904"
                            iconImage.ImageColor3 = Color3.fromRGB(85, 85, 85)
                            iconImage.ImageRectOffset = Vector2.new(604, 684)
                            iconImage.ImageRectSize = Vector2.new(36, 36)
                            dropdownText.Name = "Text"
                            dropdownText.Parent = dropdownButton
                            dropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownText.BackgroundTransparency = 1
                            dropdownText.Position = UDim2.new(0.121999964, 0, 0.150000006, 0)
                            dropdownText.Size = UDim2.new(0, 223, 0, 22)
                            dropdownText.Font = Enum.Font.Gotham
                            dropdownText.Text = dropdownLabel
                            dropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownText.TextSize = 13
                            dropdownText.TextXAlignment = Enum.TextXAlignment.Left
                            listLayout.Parent = dropdownFrame
                            listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            listLayout.SortOrder = Enum.SortOrder.LayoutOrder
                            listLayout.Padding = UDim.new(0, 5)
                            frameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            frameStroke.Color = Color3.fromRGB(49, 49, 49)
                            frameStroke.Transparency = 0.2
                            frameStroke.Parent = dropdownFrame
                            frameCorner.CornerRadius = UDim.new(0, 4)
                            frameCorner.Parent = dropdownFrame
                            dropdownScroll.Name = "DropdownScroll"
                            dropdownScroll.Parent = dropdownFrame
                            dropdownScroll.Active = true
                            dropdownScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownScroll.BackgroundTransparency = 1
                            dropdownScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            dropdownScroll.BorderSizePixel = 0
                            dropdownScroll.Position = UDim2.new(0.0168350171, 0, 0.192307696, 0)
                            dropdownScroll.Size = UDim2.new(0, 287, 0, 132)
                            dropdownScroll.CanvasSize = UDim2.new(0, 0, 0, 165)
                            dropdownScroll.ScrollBarThickness = 2
                            dropdownScroll.Visible = false
                            scrollListLayout.Parent = dropdownScroll
                            scrollListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            scrollListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                            scrollListLayout.Padding = UDim.new(0, 5)
                            searchBox.Name = "Box"
                            searchBox.Parent = dropdownScroll
                            searchBox.AnchorPoint = Vector2.new(0.5, 0.5)
                            searchBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            searchBox.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            searchBox.Position = UDim2.new(0.5, 0, 0.5, 0)
                            searchBox.Size = UDim2.new(0, 267, 0, 27)
                            searchBox.Font = Enum.Font.Gotham
                            searchBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
                            searchBox.PlaceholderText = searchPlaceholder
                            searchBox.Text = ""
                            searchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                            searchBox.TextSize = 13
                            searchBox.TextWrapped = true
                            searchBoxCorner.CornerRadius = UDim.new(0, 4)
                            searchBoxCorner.Parent = searchBox
                            searchBoxStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            searchBoxStroke.Color = Color3.fromRGB(49, 49, 49)
                            searchBoxStroke.Transparency = 0.2
                            searchBoxStroke.Parent = searchBox
                            local function updateHeight()
                                if dropdownScroll.Visible then
                                    task.spawn(function()
                                        dropdownScroll.CanvasSize = UDim2.new(0, 0, 0, scrollListLayout.AbsoluteContentSize.Y + 5)
                                        dropdownScroll.Size = UDim2.new(0, 287, 0, 132)
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, 170)
                                        }):Play()
                                        task.wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                    end)
                                end
                            end
                            searchBox.Changed:Connect(function()
                                if searchBox.Text == "" then
                                    for _, child in pairs(dropdownScroll:GetChildren()) do
                                        if child:IsA("TextButton") and child.Name == "Button" then
                                            task.wait()
                                            child.Visible = true
                                            updateHeight()
                                        end
                                    end
                                else
                                    for _, child in pairs(dropdownScroll:GetChildren()) do
                                        if child:IsA("TextButton") and child.Name == "Button" then
                                            if string.lower(child.Text):match(string.lower(searchBox.Text)) then
                                                task.wait()
                                                child.Visible = true
                                                updateHeight()
                                            else
                                                task.wait()
                                                child.Visible = false
                                                updateHeight()
                                            end
                                        end
                                    end
                                end
                            end)
                            dropdownButton.MouseButton1Click:Connect(function()
                                if dropdownScroll.Visible then
                                    task.spawn(function()
                                        dropdownScroll.Visible = false
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, 30)
                                        }):Play()
                                        wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                    end)
                                else
                                    task.spawn(function()
                                        dropdownScroll.CanvasSize = UDim2.new(0, 0, 0, scrollListLayout.AbsoluteContentSize.Y + 5)
                                        dropdownScroll.Size = UDim2.new(0, 287, 0, 132)
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, 170)
                                        }):Play()
                                        task.wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                        dropdownScroll.Visible = true
                                    end)
                                end
                            end)
                            for _, itemValue in pairs(items or {}) do
                                local itemButton = Instance.new("TextButton")
                                local itemStroke = Instance.new("UIStroke")
                                local itemCorner = Instance.new("UICorner")
                                itemButton.Parent = dropdownScroll
                                itemButton.Name = "Button"
                                itemButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                                itemButton.BackgroundTransparency = 1
                                itemButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                                itemButton.BorderSizePixel = 0
                                itemButton.Position = UDim2.new(0.0412371121, 0, 0.0632911399, 0)
                                itemButton.Size = UDim2.new(0, 267, 0, 27)
                                itemButton.Font = Enum.Font.Gotham
                                itemButton.Text = tostring(itemValue)
                                itemButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                                itemButton.TextSize = 14
                                itemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                                itemStroke.Color = Color3.fromRGB(49, 49, 49)
                                itemStroke.Transparency = 0.2
                                itemStroke.Parent = itemButton
                                itemCorner.CornerRadius = UDim.new(0, 2)
                                itemCorner.Parent = itemButton
                                itemButton.MouseButton1Click:Connect(function()
                                    task.spawn(function()
                                        searchCallback(itemValue)
                                    end)
                                    task.spawn(function()
                                        dropdownText.Text = dropdownLabel .. " - " .. tostring(itemValue)
                                        task.wait()
                                        dropdownScroll.Visible = false
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, 30)
                                        }):Play()
                                        wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                    end)
                                end)
                                emptyFrame.Parent = dropdownScroll
                                emptyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                emptyFrame.BackgroundTransparency = 1
                                emptyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                emptyFrame.BorderSizePixel = 0
                                emptyFrame.LayoutOrder = -1
                                emptyFrame.Position = UDim2.new(0, 0, 0.173410401, 0)
                                emptyFrame.Size = UDim2.new(0, 100, 0, 0)
                                newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                function dropdownObject.Refresh(_, newItems)
                                    for _, child in pairs(dropdownScroll:GetChildren()) do
                                        if child:IsA("TextButton") and child.Name == "Button" then
                                            child:Destroy()
                                        end
                                    end
                                    for _, newValue in pairs(newItems or {}) do
                                        local newItemButton = Instance.new("TextButton")
                                        local newItemStroke = Instance.new("UIStroke")
                                        local newItemCorner = Instance.new("UICorner")
                                        newItemButton.Parent = dropdownScroll
                                        newItemButton.Name = "Button"
                                        newItemButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                                        newItemButton.BackgroundTransparency = 1
                                        newItemButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                                        newItemButton.BorderSizePixel = 0
                                        newItemButton.Position = UDim2.new(0.0412371121, 0, 0.0632911399, 0)
                                        newItemButton.Size = UDim2.new(0, 267, 0, 27)
                                        newItemButton.Font = Enum.Font.Gotham
                                        newItemButton.Text = tostring(newValue)
                                        newItemButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                                        newItemButton.TextSize = 14
                                        newItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                                        newItemStroke.Color = Color3.fromRGB(49, 49, 49)
                                        newItemStroke.Transparency = 0.2
                                        newItemStroke.Parent = newItemButton
                                        newItemCorner.CornerRadius = UDim.new(0, 2)
                                        newItemCorner.Parent = newItemButton
                                        newItemButton.MouseButton1Click:Connect(function()
                                            task.spawn(function()
                                                searchCallback(newValue)
                                            end)
                                            task.spawn(function()
                                                dropdownText.Text = dropdownLabel .. " - " .. tostring(newValue)
                                                task.wait()
                                                dropdownScroll.Visible = false
                                                tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                                    Size = UDim2.new(0, 295, 0, 30)
                                                }):Play()
                                                wait(0.2)
                                                tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                                    CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                                }):Play()
                                            end)
                                        end)
                                    end
                                end
                            end
                            return dropdownObject
                        end,
                        NewDropdown = function(_, dropdownLabel, _, items, callback)
                            local dropdownObject = {}
                            local dropdownItems = items or {}
                            local dropdownCallback = callback or function() end
                            local dropdownFrame = Instance.new("Frame")
                            local dropdownButton = Instance.new("TextButton")
                            local dropdownButtonCorner = Instance.new("UICorner")
                            local helpButton = Instance.new("ImageButton")
                            local helpButtonCorner = Instance.new("UICorner")
                            local iconImage = Instance.new("ImageLabel")
                            local dropdownText = Instance.new("TextLabel")
                            local listLayout = Instance.new("UIListLayout")
                            local frameStroke = Instance.new("UIStroke")
                            local frameCorner = Instance.new("UICorner")
                            local dropdownScroll = Instance.new("ScrollingFrame")
                            local scrollListLayout = Instance.new("UIListLayout")
                            local emptyFrame = Instance.new("Frame")
                            dropdownFrame.Name = "DropdownFrame"
                            dropdownFrame.Parent = newTabPage
                            dropdownFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownFrame.BackgroundTransparency = 0.2
                            dropdownFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownFrame.BorderSizePixel = 0
                            dropdownFrame.Position = UDim2.new(0.00990098994, 0, -0.235294297, 0)
                            dropdownFrame.Size = UDim2.new(0, 295, 0, 30)
                            dropdownButton.Name = "cDropdown"
                            dropdownButton.Parent = dropdownFrame
                            dropdownButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownButton.BackgroundTransparency = 1
                            dropdownButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            dropdownButton.Position = UDim2.new(0.000110562003, 0, 0.00999999978, 0)
                            dropdownButton.Size = UDim2.new(0, 295, 0, 30)
                            dropdownButton.AutoButtonColor = false
                            dropdownButton.Font = Enum.Font.Gotham
                            dropdownButton.Text = ""
                            dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownButton.TextSize = 12
                            dropdownButton.TextXAlignment = Enum.TextXAlignment.Left
                            dropdownButtonCorner.CornerRadius = UDim.new(0, 4)
                            dropdownButtonCorner.Parent = dropdownButton
                            helpButton.Name = "Help"
                            helpButton.Parent = dropdownButton
                            helpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.BackgroundTransparency = 1
                            helpButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                            helpButton.Position = UDim2.new(0.901694894, 0, 0.13333334, 0)
                            helpButton.Size = UDim2.new(0, 23, 0, 23)
                            helpButton.AutoButtonColor = false
                            helpButton.Image = "rbxassetid://3926305904"
                            helpButton.ImageColor3 = Color3.fromRGB(65, 65, 65)
                            helpButton.ImageRectOffset = Vector2.new(764, 764)
                            helpButton.ImageRectSize = Vector2.new(36, 36)
                            helpButton.MouseButton1Click:Connect(function()
                                task.spawn(function()
                                    BlurFrame.Visible = true
                                    HelpTextLabel.Text = HelpText or ""
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 0
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 0.6
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 0,
                                        BackgroundTransparency = 0
                                    }):Play()
                                    wait(1.5)
                                    tweenService:Create(helpTextStroke, TweenInfo.new(0.2), {
                                        Transparency = 1
                                    }):Play()
                                    tweenService:Create(BlurFrame, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1
                                    }):Play()
                                    tweenService:Create(HelpTextLabel, TweenInfo.new(0.2), {
                                        TextTransparency = 1,
                                        BackgroundTransparency = 1
                                    }):Play()
                                    wait(0.3)
                                    HelpTextLabel.Text = ""
                                    BlurFrame.Visible = false
                                end)
                            end)
                            helpButtonCorner.CornerRadius = UDim.new(0, 4)
                            helpButtonCorner.Parent = helpButton
                            iconImage.Name = "Icon"
                            iconImage.Parent = dropdownButton
                            iconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            iconImage.BackgroundTransparency = 1
                            iconImage.Position = UDim2.new(0.0271186437, 0, 0.18033345, 0)
                            iconImage.Size = UDim2.new(0, 19, 0, 19)
                            iconImage.Image = "http://www.roblox.com/asset/?id=3926305904"
                            iconImage.ImageColor3 = Color3.fromRGB(85, 85, 85)
                            iconImage.ImageRectOffset = Vector2.new(604, 684)
                            iconImage.ImageRectSize = Vector2.new(36, 36)
                            dropdownText.Name = "Text"
                            dropdownText.Parent = dropdownButton
                            dropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownText.BackgroundTransparency = 1
                            dropdownText.Position = UDim2.new(0.121999964, 0, 0.150000006, 0)
                            dropdownText.Size = UDim2.new(0, 223, 0, 22)
                            dropdownText.Font = Enum.Font.Gotham
                            dropdownText.Text = dropdownLabel
                            dropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownText.TextSize = 13
                            dropdownText.TextXAlignment = Enum.TextXAlignment.Left
                            listLayout.Parent = dropdownFrame
                            listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            listLayout.SortOrder = Enum.SortOrder.LayoutOrder
                            listLayout.Padding = UDim.new(0, 5)
                            frameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            frameStroke.Color = Color3.fromRGB(49, 49, 49)
                            frameStroke.Transparency = 0.2
                            frameStroke.Parent = dropdownFrame
                            frameCorner.CornerRadius = UDim.new(0, 4)
                            frameCorner.Parent = dropdownFrame
                            dropdownScroll.Name = "DropdownScroll"
                            dropdownScroll.Parent = dropdownFrame
                            dropdownScroll.Active = true
                            dropdownScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            dropdownScroll.BackgroundTransparency = 1
                            dropdownScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            dropdownScroll.BorderSizePixel = 0
                            dropdownScroll.Position = UDim2.new(0.0168350171, 0, 0.192307696, 0)
                            dropdownScroll.Size = UDim2.new(0, 287, 0, 132)
                            dropdownScroll.CanvasSize = UDim2.new(0, 0, 0, 165)
                            dropdownScroll.ScrollBarThickness = 2
                            dropdownScroll.Visible = false
                            scrollListLayout.Parent = dropdownScroll
                            scrollListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            scrollListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                            scrollListLayout.Padding = UDim.new(0, 5)
                            dropdownButton.MouseButton1Click:Connect(function()
                                if dropdownScroll.Visible then
                                    task.spawn(function()
                                        dropdownScroll.Visible = false
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, 30)
                                        }):Play()
                                        wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                    end)
                                elseif #dropdownItems < 4 then
                                    task.spawn(function()
                                        dropdownScroll.CanvasSize = UDim2.new(0, 0, 0, scrollListLayout.AbsoluteContentSize.Y)
                                        local newHeight = 32 * #dropdownItems + 4
                                        dropdownScroll.Size = UDim2.new(0, 287, 0, newHeight)
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, newHeight + 35)
                                        }):Play()
                                        task.wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                        dropdownScroll.Visible = true
                                    end)
                                else
                                    task.spawn(function()
                                        dropdownScroll.CanvasSize = UDim2.new(0, 0, 0, scrollListLayout.AbsoluteContentSize.Y + 5)
                                        dropdownScroll.Size = UDim2.new(0, 287, 0, 132)
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, 170)
                                        }):Play()
                                        task.wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                        dropdownScroll.Visible = true
                                    end)
                                end
                            end)
                            for _, itemValue in pairs(dropdownItems) do
                                local itemButton = Instance.new("TextButton")
                                local itemStroke = Instance.new("UIStroke")
                                local itemCorner = Instance.new("UICorner")
                                itemButton.Parent = dropdownScroll
                                itemButton.Name = "Button"
                                itemButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                                itemButton.BackgroundTransparency = 1
                                itemButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                                itemButton.BorderSizePixel = 0
                                itemButton.Position = UDim2.new(0.0412371121, 0, 0.0632911399, 0)
                                itemButton.Size = UDim2.new(0, 267, 0, 27)
                                itemButton.Font = Enum.Font.Gotham
                                itemButton.Text = tostring(itemValue)
                                itemButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                                itemButton.TextSize = 14
                                itemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                                itemStroke.Color = Color3.fromRGB(49, 49, 49)
                                itemStroke.Transparency = 0.2
                                itemStroke.Parent = itemButton
                                itemCorner.CornerRadius = UDim.new(0, 2)
                                itemCorner.Parent = itemButton
                                itemButton.MouseButton1Click:Connect(function()
                                    task.spawn(function()
                                        dropdownCallback(itemValue)
                                    end)
                                    task.spawn(function()
                                        dropdownText.Text = dropdownLabel .. " - " .. tostring(itemValue)
                                        task.wait()
                                        dropdownScroll.Visible = false
                                        tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                            Size = UDim2.new(0, 295, 0, 30)
                                        }):Play()
                                        wait(0.2)
                                        tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                            CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                        }):Play()
                                    end)
                                end)
                                emptyFrame.Parent = dropdownScroll
                                emptyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                emptyFrame.BackgroundTransparency = 1
                                emptyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                emptyFrame.BorderSizePixel = 0
                                emptyFrame.LayoutOrder = -1
                                emptyFrame.Position = UDim2.new(0, 0, 0.173410401, 0)
                                emptyFrame.Size = UDim2.new(0, 100, 0, 0)
                                newTabPage.CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                function dropdownObject.Refresh(_, newItems)
                                    for _, child in pairs(dropdownScroll:GetChildren()) do
                                        if child:IsA("TextButton") and child.Name == "Button" then
                                            child:Destroy()
                                        end
                                    end
                                    for _, newValue in pairs(newItems or {}) do
                                        local newItemButton = Instance.new("TextButton")
                                        local newItemStroke = Instance.new("UIStroke")
                                        local newItemCorner = Instance.new("UICorner")
                                        newItemButton.Parent = dropdownScroll
                                        newItemButton.Name = "Button"
                                        newItemButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                                        newItemButton.BackgroundTransparency = 1
                                        newItemButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
                                        newItemButton.BorderSizePixel = 0
                                        newItemButton.Position = UDim2.new(0.0412371121, 0, 0.0632911399, 0)
                                        newItemButton.Size = UDim2.new(0, 267, 0, 27)
                                        newItemButton.Font = Enum.Font.Gotham
                                        newItemButton.Text = tostring(newValue)
                                        newItemButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                                        newItemButton.TextSize = 14
                                        newItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                                        newItemStroke.Color = Color3.fromRGB(49, 49, 49)
                                        newItemStroke.Transparency = 0.2
                                        newItemStroke.Parent = newItemButton
                                        newItemCorner.CornerRadius = UDim.new(0, 2)
                                        newItemCorner.Parent = newItemButton
                                        newItemButton.MouseButton1Click:Connect(function()
                                            task.spawn(function()
                                                dropdownCallback(newValue)
                                            end)
                                            task.spawn(function()
                                                dropdownText.Text = dropdownLabel .. " - " .. tostring(newValue)
                                                task.wait()
                                                dropdownScroll.Visible = false
                                                tweenService:Create(dropdownFrame, TweenInfo.new(0.2), {
                                                    Size = UDim2.new(0, 295, 0, 30)
                                                }):Play()
                                                wait(0.2)
                                                tweenService:Create(newTabPage, TweenInfo.new(0.15), {
                                                    CanvasSize = UDim2.new(0, 0, 0, tabPageLayout.AbsoluteContentSize.Y + 5)
                                                }):Play()
                                            end)
                                        end)
                                    end
                                end
                            end
                            return dropdownObject
                        end
                    }
                end
            }
        end
    }
end
return IceHub
