--[[
    redz-library-v5 | Versão Legível + Sistema de Temas Completo
    Refatorado para legibilidade e com suporte a múltiplos temas,
    gradientes, cores customizadas e fundos variados.
]]

-- ─────────────────────────────────────────────
-- UTILIDADES GLOBAIS
-- ─────────────────────────────────────────────

local cloneref    = cloneref or function(...) return ... end
local deleteFolder = delfolder or deletefolder
local deleteFile   = delfile or deletefile
local makeFolder   = makefolder
local writeFile    = writefile
local readFile     = readfile

-- Cache de serviços para evitar chamadas repetidas
local Services = setmetatable({}, {
    __index = function(self, name)
        local svc = cloneref(game:GetService(name))
        rawset(self, name, svc)
        return svc
    end
})

local MarketplaceService = Services.MarketplaceService
local UserInputService   = Services.UserInputService
local TweenService       = Services.TweenService
local HttpService        = Services.HttpService
local RunService         = Services.RunService
local Players            = Services.Players

local Heartbeat    = RunService.Heartbeat
local LocalPlayer  = Players.LocalPlayer
local Mouse        = LocalPlayer:GetMouse()

local CoreGui = (gethui or function() return Services.CoreGui end)()

-- ─────────────────────────────────────────────
-- DEFINIÇÃO DOS TEMAS
-- ─────────────────────────────────────────────
-- Cada tema controla: Background (gradiente), Primary, Stroke,
-- Error, Icons, botões, textos, slider, dropdown e mais.
-- Para adicionar um tema novo: copie um bloco e mude as cores.

local Themes = {

    -- ── TEMA ESCURO (padrão) ──────────────────
    Darker = {
        Colors = {
            Background = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25,  25,  25 )),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(33,  33,  33 )),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25,  25,  25 )),
            },
            Primary     = Color3.fromRGB(88, 101, 242),
            OnPrimary   = Color3.fromRGB(61,  67, 135),
            ScrollBar   = Color3.fromRGB( 1,  76, 105),
            Stroke      = Color3.fromRGB(45,  45,  45),
            Error       = Color3.fromRGB(255, 102, 102),
            Icons       = Color3.fromRGB(232, 233, 235),
            JoinButton  = Color3.fromRGB(37,  128,  69),
            Link        = Color3.fromRGB(40,  150, 255),

            Dialog      = { Background = Color3.fromRGB(28, 28, 28) },
            Buttons     = { Holding = Color3.fromRGB(34, 34, 34), Default = Color3.fromRGB(28, 28, 30) },
            Border      = { Holding = Color3.fromRGB(60, 60, 60), Default = Color3.fromRGB(38, 38, 38) },
            Text        = { Default = Color3.fromRGB(255,255,255), Dark = Color3.fromRGB(200,200,200), Darker = Color3.fromRGB(175,175,175) },
            Slider      = { SliderBar = Color3.fromRGB(1, 76, 105), SliderNumber = Color3.fromRGB(232,233,235) },
            Dropdown    = { Holder = Color3.fromRGB(30, 30, 30) },
        },
        Icons = {
            Error    = "rbxassetid://10709752996",
            Button   = "rbxassetid://10709791437",
            Close    = "rbxassetid://10747384394",
            TextBox  = "rbxassetid://15637081879",
            Search   = "rbxassetid://10734943674",
            Keybind  = "rbxassetid://10734982144",
            Dropdown = { Open = "rbxassetid://10709791523", Close = "rbxassetid://10709790948" },
        },
        Font = {
            Normal    = Enum.Font.BuilderSans,
            Medium    = Enum.Font.BuilderSansMedium,
            Bold      = Enum.Font.BuilderSansBold,
            ExtraBold = Enum.Font.BuilderSansExtraBold,
            SliderValue = Enum.Font.FredokaOne,
        },
        BackgroundTransparency = 0.03,
    },

    -- ── TEMA ROXO / NEON ──────────────────────
    Neon = {
        Colors = {
            Background = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15,  10,  30 )),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(22,  15,  45 )),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(15,  10,  30 )),
            },
            Primary     = Color3.fromRGB(180,  50, 255),
            OnPrimary   = Color3.fromRGB(100,  20, 160),
            ScrollBar   = Color3.fromRGB(140,  40, 200),
            Stroke      = Color3.fromRGB( 60,  30,  90),
            Error       = Color3.fromRGB(255,  80, 120),
            Icons       = Color3.fromRGB(220, 200, 255),
            JoinButton  = Color3.fromRGB(100, 220, 100),
            Link        = Color3.fromRGB(120, 180, 255),

            Dialog      = { Background = Color3.fromRGB(20, 12, 38) },
            Buttons     = { Holding = Color3.fromRGB(35, 20, 60), Default = Color3.fromRGB(25, 15, 45) },
            Border      = { Holding = Color3.fromRGB(90, 40,130), Default = Color3.fromRGB(55, 25, 85) },
            Text        = { Default = Color3.fromRGB(255,240,255), Dark = Color3.fromRGB(210,190,240), Darker = Color3.fromRGB(170,150,200) },
            Slider      = { SliderBar = Color3.fromRGB(140, 40, 200), SliderNumber = Color3.fromRGB(220,200,255) },
            Dropdown    = { Holder = Color3.fromRGB(20, 12, 40) },
        },
        Icons = {
            Error    = "rbxassetid://10709752996",
            Button   = "rbxassetid://10709791437",
            Close    = "rbxassetid://10747384394",
            TextBox  = "rbxassetid://15637081879",
            Search   = "rbxassetid://10734943674",
            Keybind  = "rbxassetid://10734982144",
            Dropdown = { Open = "rbxassetid://10709791523", Close = "rbxassetid://10709790948" },
        },
        Font = {
            Normal    = Enum.Font.BuilderSans,
            Medium    = Enum.Font.BuilderSansMedium,
            Bold      = Enum.Font.BuilderSansBold,
            ExtraBold = Enum.Font.BuilderSansExtraBold,
            SliderValue = Enum.Font.FredokaOne,
        },
        BackgroundTransparency = 0.02,
    },

    -- ── TEMA AZUL OCEAN ───────────────────────
    Ocean = {
        Colors = {
            Background = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB( 5,  20,  45)),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(10,  30,  65)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB( 5,  20,  45)),
            },
            Primary     = Color3.fromRGB( 30, 160, 255),
            OnPrimary   = Color3.fromRGB( 10,  90, 170),
            ScrollBar   = Color3.fromRGB( 20, 120, 200),
            Stroke      = Color3.fromRGB( 20,  50,  90),
            Error       = Color3.fromRGB(255, 100,  80),
            Icons       = Color3.fromRGB(180, 220, 255),
            JoinButton  = Color3.fromRGB( 30, 180, 100),
            Link        = Color3.fromRGB( 80, 200, 255),

            Dialog      = { Background = Color3.fromRGB(8, 22, 48) },
            Buttons     = { Holding = Color3.fromRGB(15, 40, 80), Default = Color3.fromRGB(10, 28, 58) },
            Border      = { Holding = Color3.fromRGB(40, 90,150), Default = Color3.fromRGB(20, 55, 100) },
            Text        = { Default = Color3.fromRGB(220,240,255), Dark = Color3.fromRGB(170,210,245), Darker = Color3.fromRGB(130,175,220) },
            Slider      = { SliderBar = Color3.fromRGB(20,120,200), SliderNumber = Color3.fromRGB(180,220,255) },
            Dropdown    = { Holder = Color3.fromRGB(8, 22, 50) },
        },
        Icons = {
            Error    = "rbxassetid://10709752996",
            Button   = "rbxassetid://10709791437",
            Close    = "rbxassetid://10747384394",
            TextBox  = "rbxassetid://15637081879",
            Search   = "rbxassetid://10734943674",
            Keybind  = "rbxassetid://10734982144",
            Dropdown = { Open = "rbxassetid://10709791523", Close = "rbxassetid://10709790948" },
        },
        Font = {
            Normal    = Enum.Font.BuilderSans,
            Medium    = Enum.Font.BuilderSansMedium,
            Bold      = Enum.Font.BuilderSansBold,
            ExtraBold = Enum.Font.BuilderSansExtraBold,
            SliderValue = Enum.Font.FredokaOne,
        },
        BackgroundTransparency = 0.02,
    },

    -- ── TEMA CLARO / LIGHT ────────────────────
    Light = {
        Colors = {
            Background = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(235, 235, 240)),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(245, 245, 250)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(235, 235, 240)),
            },
            Primary     = Color3.fromRGB( 70,  80, 220),
            OnPrimary   = Color3.fromRGB(120, 130, 230),
            ScrollBar   = Color3.fromRGB( 80, 130, 200),
            Stroke      = Color3.fromRGB(200, 200, 210),
            Error       = Color3.fromRGB(220,  50,  50),
            Icons       = Color3.fromRGB( 60,  60,  80),
            JoinButton  = Color3.fromRGB( 40, 160,  80),
            Link        = Color3.fromRGB( 30, 100, 220),

            Dialog      = { Background = Color3.fromRGB(230, 230, 238) },
            Buttons     = { Holding = Color3.fromRGB(215, 215, 225), Default = Color3.fromRGB(225, 225, 235) },
            Border      = { Holding = Color3.fromRGB(170, 170, 190), Default = Color3.fromRGB(200, 200, 215) },
            Text        = { Default = Color3.fromRGB(30,30,40), Dark = Color3.fromRGB(70,70,90), Darker = Color3.fromRGB(110,110,130) },
            Slider      = { SliderBar = Color3.fromRGB(80,130,200), SliderNumber = Color3.fromRGB(30,30,50) },
            Dropdown    = { Holder = Color3.fromRGB(225, 225, 235) },
        },
        Icons = {
            Error    = "rbxassetid://10709752996",
            Button   = "rbxassetid://10709791437",
            Close    = "rbxassetid://10747384394",
            TextBox  = "rbxassetid://15637081879",
            Search   = "rbxassetid://10734943674",
            Keybind  = "rbxassetid://10734982144",
            Dropdown = { Open = "rbxassetid://10709791523", Close = "rbxassetid://10709790948" },
        },
        Font = {
            Normal    = Enum.Font.BuilderSans,
            Medium    = Enum.Font.BuilderSansMedium,
            Bold      = Enum.Font.BuilderSansBold,
            ExtraBold = Enum.Font.BuilderSansExtraBold,
            SliderValue = Enum.Font.FredokaOne,
        },
        BackgroundTransparency = 0.01,
    },

    -- ── TEMA VERMELHO SANGUE ──────────────────
    Blood = {
        Colors = {
            Background = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25,  8,   8 )),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(38,  12,  12)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25,  8,   8 )),
            },
            Primary     = Color3.fromRGB(200,  30,  30),
            OnPrimary   = Color3.fromRGB(130,  15,  15),
            ScrollBar   = Color3.fromRGB(170,  20,  20),
            Stroke      = Color3.fromRGB( 65,  18,  18),
            Error       = Color3.fromRGB(255, 140,  80),
            Icons       = Color3.fromRGB(255, 200, 200),
            JoinButton  = Color3.fromRGB(180,  30,  30),
            Link        = Color3.fromRGB(255, 100, 100),

            Dialog      = { Background = Color3.fromRGB(28, 10, 10) },
            Buttons     = { Holding = Color3.fromRGB(48, 15, 15), Default = Color3.fromRGB(35, 10, 10) },
            Border      = { Holding = Color3.fromRGB(90, 25, 25), Default = Color3.fromRGB(55, 15, 15) },
            Text        = { Default = Color3.fromRGB(255,230,230), Dark = Color3.fromRGB(220,180,180), Darker = Color3.fromRGB(185,145,145) },
            Slider      = { SliderBar = Color3.fromRGB(170,20,20), SliderNumber = Color3.fromRGB(255,200,200) },
            Dropdown    = { Holder = Color3.fromRGB(30, 10, 10) },
        },
        Icons = {
            Error    = "rbxassetid://10709752996",
            Button   = "rbxassetid://10709791437",
            Close    = "rbxassetid://10747384394",
            TextBox  = "rbxassetid://15637081879",
            Search   = "rbxassetid://10734943674",
            Keybind  = "rbxassetid://10734982144",
            Dropdown = { Open = "rbxassetid://10709791523", Close = "rbxassetid://10709790948" },
        },
        Font = {
            Normal    = Enum.Font.BuilderSans,
            Medium    = Enum.Font.BuilderSansMedium,
            Bold      = Enum.Font.BuilderSansBold,
            ExtraBold = Enum.Font.BuilderSansExtraBold,
            SliderValue = Enum.Font.FredokaOne,
        },
        BackgroundTransparency = 0.02,
    },

    -- ── TEMA VERDE FLORESTA ───────────────────
    Forest = {
        Colors = {
            Background = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB( 8,  22,  10)),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(12,  32,  15)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB( 8,  22,  10)),
            },
            Primary     = Color3.fromRGB( 40, 200,  80),
            OnPrimary   = Color3.fromRGB( 20, 120,  45),
            ScrollBar   = Color3.fromRGB( 30, 160,  60),
            Stroke      = Color3.fromRGB( 20,  55,  25),
            Error       = Color3.fromRGB(255,  90,  90),
            Icons       = Color3.fromRGB(190, 240, 200),
            JoinButton  = Color3.fromRGB( 40, 180,  70),
            Link        = Color3.fromRGB(100, 230, 140),

            Dialog      = { Background = Color3.fromRGB(9, 24, 11) },
            Buttons     = { Holding = Color3.fromRGB(15, 45, 20), Default = Color3.fromRGB(10, 30, 14) },
            Border      = { Holding = Color3.fromRGB(35, 90, 45), Default = Color3.fromRGB(20, 58, 28) },
            Text        = { Default = Color3.fromRGB(220,255,228), Dark = Color3.fromRGB(170,215,180), Darker = Color3.fromRGB(130,175,142) },
            Slider      = { SliderBar = Color3.fromRGB(30,160,60), SliderNumber = Color3.fromRGB(190,240,200) },
            Dropdown    = { Holder = Color3.fromRGB(9, 26, 12) },
        },
        Icons = {
            Error    = "rbxassetid://10709752996",
            Button   = "rbxassetid://10709791437",
            Close    = "rbxassetid://10747384394",
            TextBox  = "rbxassetid://15637081879",
            Search   = "rbxassetid://10734943674",
            Keybind  = "rbxassetid://10734982144",
            Dropdown = { Open = "rbxassetid://10709791523", Close = "rbxassetid://10709790948" },
        },
        Font = {
            Normal    = Enum.Font.BuilderSans,
            Medium    = Enum.Font.BuilderSansMedium,
            Bold      = Enum.Font.BuilderSansBold,
            ExtraBold = Enum.Font.BuilderSansExtraBold,
            SliderValue = Enum.Font.FredokaOne,
        },
        BackgroundTransparency = 0.02,
    },

}

-- Registra nome em cada tema e congela
for themeName, themeData in Themes do
    themeData.Name = themeName
    table.freeze(themeData)
end

-- ─────────────────────────────────────────────
-- ESTADO GLOBAL DA BIBLIOTECA
-- ─────────────────────────────────────────────

local Library = {
    Information = {
        Version     = "v2.0.1",
        GitHubOwner = "tlredz",
    },
    Default = {
        Theme  = "Darker",
        UISize = UDim2.fromOffset(550, 380),
        TabSize = 160,
    },
    Themes      = Themes,
    Connections = {},
    Options     = {},
    Tabs        = {},
}

Library.Info = Library.Information
Library.Save = Library.Default

-- ─────────────────────────────────────────────
-- CONSTANTES
-- ─────────────────────────────────────────────

local ViewportSize = workspace.CurrentCamera.ViewportSize

local LIMITS = {
    MAX_SCALE = 1.6,
    MIN_SCALE = 0.6,
    TEXTBOX = { PLACEHOLDER_TEXT = "Input" },
}

-- ─────────────────────────────────────────────
-- UTILITÁRIOS INTERNOS
-- ─────────────────────────────────────────────

-- Conecta evento e registra conexão
local function Connect(signal, callback)
    table.insert(Library.Connections, signal:Connect(callback))
end

-- Navega por string de chaves separadas por ponto, ex: "Colors.Text.Default"
local function GetNestedValue(tbl, path)
    for key in path:gmatch("[^%.]+") do
        tbl = tbl[key]
    end
    return tbl
end

-- Aplica propriedade de tema a uma instância
local function ApplyThemeProp(instance, prop, path, theme)
    theme = theme or Library.CurrentTheme
    local value = (type(path) == "function") and path() or path
    instance[prop] = GetNestedValue(theme, value)
end

-- Aplica múltiplas propriedades de tema
local function ApplyThemeProps(theme, instance, props)
    for prop, path in props do
        ApplyThemeProp(instance, prop, path, theme)
    end
end

-- Escreve arquivo criando pastas intermediárias
local function SafeWrite(path, content)
    if makeFolder then
        local parts = path:split("/")
        parts[#parts] = nil
        local dir = table.concat(parts, "/")
        if dir ~= "" and (isfolder == nil or not isfolder(dir)) then
            makeFolder(dir)
        end
    end
    writeFile(path, content)
end

-- Calcula número formatado com vírgulas
local function FormatNumber(n)
    local str = tostring(n)
    local result = ""
    local count  = 0
    for i = #str, 1, -1 do
        result = str:sub(i, i) .. result
        count  = count + 1
        if i > 1 and count % 3 == 0 then
            result = "," .. result
        end
    end
    return result
end

-- Formata segundos em h m s
local function FormatTime(seconds)
    local h  = math.floor(seconds / 3600)
    local m  = math.floor(seconds / 60) - (h * 60)
    local s  = math.floor((seconds - (math.floor(seconds / 60) * 60)) * 10) / 10
    if h > 0 then
        return ("%dh %dm %ds"):format(h, m, math.floor(s))
    elseif m > 0 then
        return ("%dm %ds"):format(m, math.floor(s))
    else
        return tostring(s)
    end
end

-- Verifica se é rbxassetid
local function IsAssetId(str)
    return str:sub(1, 13) == "rbxassetid://"
end

-- Escala baseada na viewport
local function ScaleFromViewport(value)
    return (ViewportSize.Y / 450) * value
end

-- Remove caracteres especiais para busca
local SEARCH_IGNORE = (function()
    local chars = {}
    for _, c in string.split("\n\t,_:;()[]#&=!. \"'*^<>$") do
        chars[c] = true
    end
    return chars
end)()

local function NormalizeSearch(str)
    return str:lower():gsub(".", function(c)
        return SEARCH_IGNORE[c] and "" or c
    end)
end

-- Cria tween simples
local function Tween(instance, prop, goal, duration, ...)
    local info = TweenInfo.new(duration, Enum.EasingStyle.Quint, ...)
    return TweenService:Create(instance, info, { [prop] = goal })
end

-- Dispara callbacks em tasks separadas
local function FireCallbacks(callbacks, ...)
    for i = 1, #callbacks do
        task.spawn(callbacks[i], ...)
    end
end

-- Converte callback para table padronizada
local function NormalizeCallback(cb)
    if cb == nil then return {} end
    assert(type(cb) == "function" or type(cb) == "table",
        ("Expected 'function' or 'table', got %s"):format(typeof(cb)), 2)
    if type(cb) ~= "function" then
        local obj, prop = cb[1], cb[2]
        cb = function(v) obj[prop] = v end
    end
    return table.pack(cb)
end

-- Conjunto rápido de valores
local function MakeSet(values, returnTrue)
    local set = {}
    for i = 1, #values do
        set[values[i]] = returnTrue and true or true
    end
    return set
end

-- ─────────────────────────────────────────────
-- SISTEMA DE TEMA (Renderização Reativa)
-- ─────────────────────────────────────────────

local ThemeNode = {}
ThemeNode.__index = ThemeNode

-- Cria nó raiz
local RootThemeNode = setmetatable({
    IS_RENDERING   = true,
    UPDATED_OBJECTS = false,
    Descendants    = {},
    Parent         = nil,
}, ThemeNode)

function ThemeNode:Add(instance, props)
    self.Descendants[instance] = props
    if self.IS_RENDERING then
        ApplyThemeProps(Library.CurrentTheme, instance, props)
    end
end

function ThemeNode:Update()
    if self.IS_RENDERING and not self.UPDATED_OBJECTS then
        local theme = Library.CurrentTheme
        self.UPDATED_OBJECTS = true
        for inst, props in self.Descendants do
            local t = typeof(props)
            if t == "table" then
                inst:Update()
            else
                ApplyThemeProps(theme, inst, props)
            end
        end
    end
end

function ThemeNode:Destroy()
    local parent = self.Parent
    if parent then
        local idx = table.find(parent.Descendants)
        if idx then table.remove(parent.Descendants, idx) end
    end
    table.clear(self.Descendants)
    setmetatable(self, nil)
end

function ThemeNode:SetRendering(enabled)
    if self.IS_RENDERING ~= enabled then
        self.IS_RENDERING    = enabled
        self.UPDATED_OBJECTS = false
    end
end

function ThemeNode:New()
    local node = setmetatable({
        IS_RENDERING    = true,
        UPDATED_OBJECTS = false,
        Descendants     = {},
        Parent          = (self.Descendants ~= nil and self) or nil,
    }, ThemeNode)
    if self.Descendants then
        table.insert(self.Descendants, node)
    end
    return node
end

-- ─────────────────────────────────────────────
-- CONSTRUTOR DE INSTÂNCIAS (Instance Builder)
-- ─────────────────────────────────────────────

local Builder    = {}
local NewInstance -- forward declare

-- Extensões especiais para propriedades de instância
local InstanceHelpers = {}
InstanceHelpers.__index = InstanceHelpers

local ElementCreators = {
    Corner = function(radius)
        return NewInstance("UICorner", { CornerRadius = radius or UDim.new(0, 8) })
    end,
    Stroke = function(color, thickness)
        return NewInstance("UIStroke", { Color = color or Color3.fromRGB(60,60,60), Thickness = thickness or 1 })
    end,
    Image = function(image)
        return NewInstance("ImageLabel", { Image = image or "", BackgroundTransparency = 1, Size = UDim2.fromScale(1,1) })
    end,
    Button = function()
        return NewInstance("TextButton", { Text = "", Size = UDim2.fromScale(1,1), AutoButtonColor = false })
    end,
    Padding = function(l, r, t, b)
        return NewInstance("UIPadding", {
            PaddingLeft   = l or UDim.new(0,10),
            PaddingRight  = r or UDim.new(0,10),
            PaddingTop    = t or UDim.new(0,10),
            PaddingBottom = b or UDim.new(0,10),
        })
    end,
    ListLayout = function(padding)
        return NewInstance("UIListLayout", { Padding = padding or UDim.new(0,5) })
    end,
    Text = function(text)
        return NewInstance("TextLabel", { BackgroundTransparency = 1, Text = text or "" })
    end,
    Gradient = function(colorSeq)
        return NewInstance("UIGradient", { Color = colorSeq })
    end,
}

local ElementFactory = {}
ElementFactory.__index = function(_, key)
    return ElementCreators[key]
end

local Factory = setmetatable({}, ElementFactory)

function Factory:Create(parent, kind, ...)
    local creator = ElementCreators[kind]
    if creator then
        local inst = creator(...)
        inst.Parent = parent
        return inst
    end
end

-- Aplica tabela de propriedades a uma instância
function Builder.SetProperties(inst, props)
    for k, v in props do
        if InstanceHelpers[k] then
            InstanceHelpers[k](inst, v)
        else
            inst[k] = v
        end
    end
end

-- Define múltiplos valores (nome, parent, props)
function Builder.SetValues(inst, ...)
    for _, v in { ... } do
        local t = typeof(v)
        if t == "table" then
            Builder.SetProperties(inst, v)
        else
            inst[t == "string" and "Name" or "Parent"] = v
        end
    end
    return inst
end

-- Cria instância e aplica valores
NewInstance = function(className, ...)
    return Builder.SetValues(Instance.new(className), ...)
end

-- InstanceHelpers especiais
function InstanceHelpers:Childs(children)
    for i = 1, #children do
        children[i].Parent = self
    end
end

function InstanceHelpers:Elements(elements)
    for kind, args in pairs(elements) do
        local inst
        if type(args) == "table" then
            inst = Factory:Create(self, kind)
            if inst then Builder.SetProperties(inst, args) end
        else
            Factory:Create(self, kind, args)
        end
    end
end

function InstanceHelpers:ThemeTag(props)
    local node = props.OBJECTS
    props.OBJECTS = nil
    return (node or RootThemeNode):Add(self, props)
end

-- ─────────────────────────────────────────────
-- SISTEMA DE DRAG
-- ─────────────────────────────────────────────

local IsDragging = false

function Builder.Draggable(frame, uiScale, lerpSpeed, constrainFn)
    local startMouse, startPos
    local lastTime = 0
    local dragTarget -- frame atual sendo arrastado
    local cleanup

    lerpSpeed = lerpSpeed or 0.28

    local function OnMove(input)
        if not startMouse then return end
        local delta = input.Position - startMouse
        local target
        lastTime = tick()

        if constrainFn then
            target = constrainFn(
                startPos.X.Scale, startPos.X.Offset + delta.X / uiScale.Scale,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y / uiScale.Scale
            )
        else
            target = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X / uiScale.Scale,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y / uiScale.Scale
            )
        end
        frame.Position = frame.Position:Lerp(target, lerpSpeed)
    end

    local function WatchIdle()
        while dragTarget == frame do
            if (tick() - lastTime) >= 1 then
                cleanup()
                break
            end
            task.wait()
        end
    end

    local MouseButtons = MakeSet({ Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch })
    local MoveInputs   = MakeSet({ Enum.UserInputType.MouseMovement, Enum.UserInputType.Touch })

    Connect(frame.InputBegan, function(input)
        if IsDragging == false and dragTarget == nil and MouseButtons[input.UserInputType] then
            startMouse = input.Position
            startPos   = frame.Position
            dragTarget = frame
            lastTime   = tick()
            IsDragging = true

            local changed
            function cleanup()
                IsDragging = false
                dragTarget = nil
                changed:Disconnect()
            end

            task.spawn(WatchIdle)

            changed = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    cleanup()
                end
            end)
        end
    end)

    Connect(UserInputService.InputChanged, function(input)
        if dragTarget == frame and MoveInputs[input.UserInputType] then
            OnMove(input)
        end
    end)
end

-- ─────────────────────────────────────────────
-- SCREENGUI PRINCIPAL
-- ─────────────────────────────────────────────

local GUI_NAME = "redz-library-v5"
local ScreenGui = CoreGui:FindFirstChild(GUI_NAME)

if not ScreenGui then
    ScreenGui = NewInstance("ScreenGui", GUI_NAME, CoreGui, { IgnoreGuiInset = true })
end

-- ─────────────────────────────────────────────
-- JANELA DE DROPDOWN (compartilhada)
-- ─────────────────────────────────────────────
-- A janela de dropdown flutuante é criada uma vez e reutilizada.

local ActiveDropdownFrame  -- a janela dropdown visível
local ActiveDropdownClose  -- callback para fechar o dropdown atual
local DropdownContainer    -- parent dos dropdowns no ScreenGui
local DialogOverlay        -- overlay para dialog
local MainWindowFrame      -- frame principal da janela
local UIScaleObject        -- UIScale do ScreenGui

-- ─────────────────────────────────────────────
-- METATABLES DOS ELEMENTOS
-- ─────────────────────────────────────────────

-- Base compartilhada por todos os elementos
local ElementBase  = {}
ElementBase.__index = ElementBase

-- Metatables específicas por tipo
local ToggleMeta    = {}
local SliderMeta    = {}
local DropdownMeta  = {}
local TextBoxMeta   = {}
local DialogMeta    = {}
local TabMeta       = {}
local WindowMeta    = {}
local MinimizerMeta = {}
local OptionMeta    = {} -- Seção, Botão, Parágrafo, etc.

ToggleMeta.__index   = function(t, k) return ToggleMeta[k]   or rawget(ElementBase, k) end
SliderMeta.__index   = function(t, k) return SliderMeta[k]   or rawget(ElementBase, k) end
DropdownMeta.__index = function(t, k) return DropdownMeta[k] or rawget(ElementBase, k) end
TextBoxMeta.__index  = function(t, k) return TextBoxMeta[k]  or rawget(ElementBase, k) end
DialogMeta.__index   = DialogMeta
TabMeta.__index      = TabMeta
WindowMeta.__index   = WindowMeta
MinimizerMeta.__index = MinimizerMeta
OptionMeta.__index   = OptionMeta

-- ─────────────────────────────────────────────
-- MÉTODOS DO DIALOG
-- ─────────────────────────────────────────────

local ActiveDialog     -- dialog aberto no momento

local function CloseDialogOverlay()
    ActiveDialog.Closed  = true
    ActiveDialog.Closing = false
    setmetatable(ActiveDialog, nil)
    ActiveDialog = nil
    DialogOverlay.Parent = nil
end

local function CloseAnyDialog()
    if ActiveDialog ~= nil then
        ActiveDialog:Close()
    end
end

function DialogMeta:NewOption(config)
    local label    = config[1] or config.Name or config.Title
    local callbacks = NormalizeCallback(config[2] or config.Callback)
    table.insert(callbacks, CloseAnyDialog)

    assert(type(label) == "string",
        ("\"Dialog.NewOption.Name\": 'string' expected, got %s"):format(typeof(label)))

    local btn = NewInstance("TextButton", {
        AutoButtonColor   = false,
        Size              = UDim2.fromScale(0.2, 1),
        BackgroundTransparency = 1,
        TextSize          = 10,
        Text              = label,
        Elements = { Corner = UDim.new(1,0) },
        ThemeTag = {
            BackgroundColor3 = "Colors.Buttons.Default",
            TextColor3       = "Colors.Text.Dark",
            Font             = "Font.Normal",
        },
    })

    local showTween = Tween(btn, "BackgroundTransparency", 0,   0.3)
    local hideTween = Tween(btn, "BackgroundTransparency", 1,   0.3)

    Connect(btn.MouseLeave,  function() hideTween:Play() end)
    Connect(btn.MouseEnter,  function() showTween:Play() end)
    Connect(btn.Activated,   function() FireCallbacks(callbacks) end)

    btn.Parent = DialogOverlay.Template.Options
end

function DialogMeta:Close(immediate)
    if self.Closed or self.Closing or ActiveDialog ~= self then return end
    self.Closing = true

    local shrink = Tween(self.TEMPLATE, "Size", self.NEW_SIZE, 0.1)
    shrink:Play()

    if immediate then
        shrink.Completed:Wait()
        CloseDialogOverlay()
    else
        Connect(shrink.Completed, CloseDialogOverlay)
    end
end

function DialogMeta.new(descLabel, titleLabel)
    return setmetatable({
        TITLE_LABEL       = titleLabel,
        DESCRIPTION_LABEL = descLabel,
        Content           = descLabel.Text,
        Title             = titleLabel.Text,
        Closed            = false,
        Closing           = false,
        Kind              = "Dialog",
    }, DialogMeta)
end

-- ─────────────────────────────────────────────
-- MÉTODOS DO DROPDOWN
-- ─────────────────────────────────────────────

function DropdownMeta:SetEnabled(options)
    assert(type(options) == "table",
        ("\"Dropdown.SetEnabled\": 'table' expected, got %s"):format(typeof(options)))
    self.SET_ENABLED_OPTIONS(options)
end

function DropdownMeta:Clear()
    self.CLEAR_DROPDOWN()
end

function DropdownMeta:NewOptions(...)
    self:Clear()
    self:Add(...)
end

function DropdownMeta:GetOptionsCount()
    return #self.DROPDOWN_OPTIONS
end

function DropdownMeta:Remove(...)
    local items = { ... }
    assert(#items > 0, "'Dropdown.Remove' requires one or more options.")
    for _, item in items do
        self.REMOVE_DROPDOWN_OPTION(item)
    end
end

function DropdownMeta:Add(...)
    local items = { ... }
    assert(#items > 0, "'Dropdown.Add' requires one or more options.")
    for _, item in items do
        self.ADD_DROPDOWN_OPTION(item)
    end
end

function DropdownMeta.new(parent, frame, titleLabel, descLabel, callbacks)
    return setmetatable({
        CALLBACKS         = callbacks,
        DESTROY_ELEMENT   = frame,
        VISIBLE_ELEMENT   = frame,
        TITLE_LABEL       = titleLabel,
        DESCRIPTION_LABEL = descLabel,
        Description       = descLabel.Text,
        Title             = titleLabel.Text,
        Parent            = parent,
        Kind              = "Dropdown",
    }, DropdownMeta)
end

-- ─────────────────────────────────────────────
-- MÉTODOS DO SLIDER
-- ─────────────────────────────────────────────

function SliderMeta:SetValue(value)
    assert(type(value) == "number",
        ("\"Slider.SetValue\": 'number' expected, got %s"):format(typeof(value)))
    if self.Value ~= value then
        self.WHEN_VALUE_CHANGED(value)
    end
end

SliderMeta.Set = SliderMeta.SetValue

function SliderMeta.new(parent, frame, titleLabel, descLabel, callbacks)
    return setmetatable({
        CALLBACKS         = callbacks,
        DESTROY_ELEMENT   = frame,
        VISIBLE_ELEMENT   = frame,
        TITLE_LABEL       = titleLabel,
        DESCRIPTION_LABEL = descLabel,
        Description       = descLabel.Text,
        Title             = titleLabel.Text,
        Parent            = parent,
        Kind              = "Slider",
    }, SliderMeta)
end

-- ─────────────────────────────────────────────
-- MÉTODOS DO TOGGLE
-- ─────────────────────────────────────────────

function ToggleMeta:SetValue(value)
    assert(type(value) == "boolean",
        ("\"Toggle.SetValue\": 'boolean' expected, got %s"):format(typeof(value)))
    if self.Value ~= value then
        self.Value = value
        self.WHEN_VALUE_CHANGED(value)
    end
end

ToggleMeta.Set = ToggleMeta.SetValue

function ToggleMeta.new(parent, frame, titleLabel, descLabel, onChanged, callbacks)
    return setmetatable({
        CALLBACKS         = callbacks,
        WHEN_VALUE_CHANGED = onChanged,
        DESTROY_ELEMENT   = frame,
        VISIBLE_ELEMENT   = frame,
        TITLE_LABEL       = titleLabel,
        DESCRIPTION_LABEL = descLabel,
        Description       = descLabel.Text,
        Title             = titleLabel.Text,
        Parent            = parent,
        Kind              = "Toggle",
    }, ToggleMeta)
end

-- ─────────────────────────────────────────────
-- MÉTODOS DO TEXTBOX
-- ─────────────────────────────────────────────

function TextBoxMeta:SetText(text)
    assert(type(text) == "string",
        ("\"TextBox.SetText\": 'string' expected, got %s"):format(typeof(text)))
    self.TEXTBOX.Text = text
    return self
end

function TextBoxMeta:SetPlaceholder(text)
    assert(type(text) == "string",
        ("\"TextBox.SetPlaceholder\": 'string' expected, got %s"):format(typeof(text)))
    self.TEXTBOX.PlaceholderText = text
    return self
end

function TextBoxMeta:CaptureFocus()
    self.TEXTBOX:CaptureFocus()
    return self
end

function TextBoxMeta:Clear()
    self.TEXTBOX.Text = ""
    return self
end

function TextBoxMeta:SetTextFilter(fn)
    if fn ~= nil then
        assert(type(fn) == "function",
            ("\"TextBox.SetTextFilter\": 'function' or 'nil' expected, got %s"):format(typeof(fn)))
    end
    self.TEXTBOX_TEXT_FILTER = fn
    return self
end

TextBoxMeta.Set = TextBoxMeta.SetText

function TextBoxMeta.new(parent, titleLabel, descLabel, frame, textbox, callbacks)
    return setmetatable({
        Title             = titleLabel.Text,
        Description       = descLabel.Text,
        DESCRIPTION_LABEL = descLabel,
        TITLE_LABEL       = titleLabel,
        CALLBACKS         = callbacks,
        DESTROY_ELEMENT   = frame,
        VISIBLE_ELEMENT   = frame,
        TEXTBOX           = textbox,
        BUTTON            = frame,
        Parent            = parent,
        Kind              = "TextBox",
    }, TextBoxMeta)
end

-- ─────────────────────────────────────────────
-- HELPERS DE CRIAÇÃO DE UI
-- ─────────────────────────────────────────────

-- Cria botão de aba lateral com seu container
local function CreateTabButton(windowMeta, tabConfig, tabsContainer)
    local TabWidth = 160

    local button = NewInstance("TextButton", "Button", tabsContainer, {
        Size              = UDim2.new(1, 0, 0, 24),
        AutoButtonColor   = false,
        Text              = "",
        Elements          = { Corner = UDim.new(0, 6) },
        ThemeTag          = { BackgroundColor3 = "Colors.Buttons.Default" },
        Childs = {
            NewInstance("TextLabel", "Title", {
                BackgroundTransparency = 1,
                Font       = Enum.Font.GothamMedium,
                Text       = tabConfig.Title,
                TextSize   = 10,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate   = Enum.TextTruncate.AtEnd,
                ThemeTag   = { TextColor3 = "Colors.Text.Default" },
            }),
        },
    })

    -- Indicador de aba selecionada (ponto colorido)
    local indicator = NewInstance("Frame", button, {
        Position         = UDim2.new(0, 1, 0.5, 0),
        AnchorPoint      = Vector2.new(0, 0.5),
        Size             = UDim2.fromOffset(4, 4),
        BackgroundTransparency = 1,
        ThemeTag         = { BackgroundColor3 = "Colors.Primary" },
        Elements         = { Corner = UDim.new(0.5, 0) },
    })

    -- Container da aba (onde os elementos ficam)
    local container = NewInstance("ScrollingFrame", "Container", {
        Size             = UDim2.new(1, 0, 1, 0),
        Position         = UDim2.new(0, 0, 1, 0),
        AnchorPoint      = Vector2.new(0, 1),
        ScrollBarThickness = 1.5,
        BackgroundTransparency = 1,
        ScrollBarImageTransparency = 0.2,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollingDirection  = Enum.ScrollingDirection.Y,
        BorderSizePixel  = 0,
        CanvasSize       = UDim2.new(),
        ThemeTag         = { ScrollBarImageColor3 = "Colors.ScrollBar" },
        Elements         = {
            Padding = {
                PaddingLeft   = UDim.new(0, 10),
                PaddingRight  = UDim.new(0, 10),
                PaddingTop    = UDim.new(0, 10),
                PaddingBottom = UDim.new(0, 10),
            },
            ListLayout = { Padding = UDim.new(0, 5) },
        },
    })

    -- Ícone do botão de aba
    local icon = NewInstance("ImageLabel", button, {
        Position = UDim2.new(0, 8, 0.5, 0),
        Size     = UDim2.new(0, 13, 0, 13),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        ImageTransparency = 0.3,
        Image    = tabConfig.Icon or "",
    })

    -- Ajusta posição do título conforme presença de ícone
    local function UpdateIconLayout()
        local hasIcon = icon.Image:sub(1, 13) == "rbxassetid://"
        local title   = button.Title
        icon.Visible      = hasIcon
        title.Size        = UDim2.new(1, hasIcon and -25 or -15, 1, 0)
        title.Position    = UDim2.fromOffset(hasIcon and 25 or 15, 0)
    end

    Connect(icon:GetPropertyChangedSignal("Image"), UpdateIconLayout)
    UpdateIconLayout()

    return button, container, indicator, icon
end

-- Cria um elemento base de opção (linha com título + descrição)
local function CreateOptionRow(tab, title, description, holderSize)
    local tabNode = Library.TabNodes and Library.TabNodes[tab]

    local titleLabel = NewInstance("TextLabel", {
        TextXAlignment  = Enum.TextXAlignment.Left,
        TextTruncate    = Enum.TextTruncate.AtEnd,
        AutomaticSize   = Enum.AutomaticSize.Y,
        Size            = UDim2.new(1, -20, 0, 0),
        Position        = UDim2.fromScale(0, 0.5),
        AnchorPoint     = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        TextSize        = 11,
        ThemeTag        = {
            OBJECTS    = RootThemeNode,
            TextColor3 = "Colors.Text.Default",
            Font       = "Font.Medium",
        },
    })

    local descLabel = NewInstance("TextLabel", {
        TextXAlignment  = Enum.TextXAlignment.Left,
        AutomaticSize   = Enum.AutomaticSize.Y,
        Size            = UDim2.new(1, -20, 0, 0),
        Position        = UDim2.new(0, 12, 0, 15),
        BackgroundTransparency = 1,
        TextWrapped     = true,
        TextSize        = 8,
        RichText        = true,
        ThemeTag        = {
            OBJECTS    = tabNode,
            TextColor3 = "Colors.Text.Dark",
            Font       = "Font.Normal",
        },
    })

    local rowTheme = {
        OBJECTS          = tabNode,
        BackgroundColor3 = "Colors.Buttons.Default",
    }

    local row = NewInstance("TextButton", "Option", {
        AutomaticSize     = Enum.AutomaticSize.Y,
        Size              = UDim2.new(1, 0, 0, 25),
        AutoButtonColor   = false,
        Text              = "",
        ThemeTag          = rowTheme,
        Elements          = { Corner = UDim.new(0, 6) },
        Childs = {
            NewInstance("Frame", "Holder", {
                AutomaticSize     = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,
                Size              = holderSize,
                Elements          = {
                    ListLayout = {
                        SortOrder         = Enum.SortOrder.LayoutOrder,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        Padding           = UDim.new(0, 2),
                    },
                    Padding = {
                        PaddingBottom = UDim.new(0, 5),
                        PaddingTop    = UDim.new(0, 5),
                    },
                },
                Childs = { titleLabel, descLabel },
            }),
        },
    })

    local holder         = row.Holder
    local lastHovered    -- para highlight de linha

    -- Hover highlight
    local function SetRowColor(color, updateLast)
        if updateLast then
            if lastHovered then
                local prevColor = GetNestedValue(Library.CurrentTheme, "Colors.Buttons.Default")
                lastHovered.Theme.BackgroundColor3 = "Colors.Buttons.Default"
                Tween(lastHovered.Button, "BackgroundColor3", prevColor, 0.2):Play()
            end
            lastHovered = { Button = row, Theme = rowTheme }
        end
        rowTheme.BackgroundColor3 = color
        Tween(row, "BackgroundColor3", GetNestedValue(Library.CurrentTheme, color), 0.2):Play()
    end

    Connect(row.MouseLeave, function() SetRowColor("Colors.Buttons.Default", false) end)
    Connect(row.MouseEnter, function() SetRowColor("Colors.Buttons.Holding",  true)  end)

    -- Esconde descrição se vazia
    Connect(descLabel:GetPropertyChangedSignal("Text"), function()
        local hasDesc = #descLabel.Text > 0
        if descLabel.Visible ~= hasDesc then
            local anchor = hasDesc and 0 or 0.5
            descLabel.Visible   = hasDesc
            holder.Position     = UDim2.fromScale(0, anchor)
            holder.AnchorPoint  = Vector2.new(0, anchor)
        end
    end)

    titleLabel.Text = title
    descLabel.Text  = description or ""

    -- Insere na aba
    local tabData = Library.TabData and Library.TabData[tab]
    if tabData then
        row.Parent = tabData.Container
    end

    return row, titleLabel, descLabel
end

-- ─────────────────────────────────────────────
-- VALIDAÇÃO DE CONFIGURAÇÕES
-- ─────────────────────────────────────────────

local function ValidateTitle(kind, config)
    local title = config[1] or config.Name or config.Title
    local desc  = config.Desc or config.Description
    assert(type(title) == "string",
        ("\"Tab.Add%s.Title\": 'string' expected, got %s"):format(kind, typeof(title)))
    if desc ~= nil and type(desc) ~= "string" then
        error(("\"Tab.Add%s.Description\": 'string' or 'nil' expected, got %s"):format(kind, typeof(desc)), 3)
    end
    return title, desc or ""
end

local function ValidateFlag(kind, flag)
    if flag ~= nil and type(flag) ~= "string" then
        error(("\"Tab.Add%s.Flag\": 'nil' or 'string' expected, got %s"):format(kind, typeof(flag)), 3)
    end
    return flag
end

-- ─────────────────────────────────────────────
-- JANELA DROPDOWN FLUTUANTE
-- ─────────────────────────────────────────────

local function CreateDropdownWindow()
    local DROP_WIDTH    = 160
    local ITEM_HEIGHT   = 25
    local MAX_ITEMS     = 12
    local PADDING       = 5

    local baseStyle = {
        Corner   = UDim.new(0, 6),
        Stroke   = { ThemeTag = { Color = "Colors.Stroke" } },
        Gradient = { Rotation = 45, ThemeTag = { Color = "Colors.Background" } },
    }

    -- Overlay (fecha ao clicar fora)
    local overlay = NewInstance("TextButton", DropdownContainer, {
        Size              = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        Active            = true,
        Text              = "",
    })

    -- Frame do dropdown
    local dropFrame = NewInstance("Frame", "Dropdown", overlay, {
        Size     = UDim2.fromOffset(DROP_WIDTH, 100),
        Position = UDim2.fromOffset(50, 50),
        Elements = baseStyle,
        Active   = true,
        ThemeTag = { BackgroundTransparency = "BackgroundTransparency" },
    })

    -- Botão de busca
    local SEARCH_WIDTH = 130
    local searchBtn = NewInstance("TextButton", "Search", dropFrame, {
        Position     = UDim2.new(1, 5, 0, 5),
        Size         = UDim2.new(0, 25, 0, 25),
        AutomaticSize = Enum.AutomaticSize.X,
        Active       = true,
        Elements     = baseStyle,
        Text         = "",
        ThemeTag     = { BackgroundTransparency = "BackgroundTransparency" },
        Childs = {
            NewInstance("UIPadding", {
                PaddingLeft = UDim.new(0,5), PaddingRight  = UDim.new(0,5),
                PaddingBottom = UDim.new(0,5), PaddingTop  = UDim.new(0,5),
            }),
            NewInstance("UIListLayout", {
                Padding = UDim.new(0,5), FillDirection = Enum.FillDirection.Horizontal,
            }),
            NewInstance("TextBox", "SearchBox", {
                Size             = UDim2.fromScale(0, 1),
                Position         = UDim2.fromScale(0.5, 0.5),
                AnchorPoint      = Vector2.new(0.5, 0.5),
                Visible          = false,
                PlaceholderText  = "Search...",
                ClearTextOnFocus = false,
                Text             = "",
                Elements         = { Corner = UDim.new(0, 6) },
                ThemeTag         = {
                    BackgroundColor3 = "Colors.Stroke",
                    TextColor3       = "Colors.Text.Default",
                    Font             = "Font.ExtraBold",
                },
            }),
            NewInstance("ImageLabel", "SearchIcon", {
                Size            = UDim2.fromScale(1, 1),
                SizeConstraint  = Enum.SizeConstraint.RelativeYY,
                Position        = UDim2.fromScale(0.5, 0.5),
                AnchorPoint     = Vector2.new(0.5, 0.5),
                BackgroundTransparency = 1,
                ThemeTag        = {
                    BackgroundColor3 = "Colors.Stroke",
                    ImageColor3      = "Colors.Icons",
                    Image            = "Icons.Search",
                },
            }),
        },
    })

    -- Lista de itens (scrollable)
    local itemsList = NewInstance("ScrollingFrame", dropFrame, {
        Size             = UDim2.new(1, -6, 1, -6),
        Position         = UDim2.fromScale(0.5, 0.5),
        AnchorPoint      = Vector2.new(0.5, 0.5),
        ScrollBarThickness = 3,
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        CanvasSize       = UDim2.new(),
        ScrollingDirection = Enum.ScrollingDirection.Y,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        Active           = true,
        ThemeTag         = { OBJECTS = RootThemeNode, ScrollBarImageColor3 = "Colors.ScrollBar" },
        Elements         = {
            Padding = {
                PaddingLeft = UDim.new(0,8), PaddingRight  = UDim.new(0,8),
                PaddingTop  = UDim.new(0,5), PaddingBottom = UDim.new(0,5),
            },
            ListLayout = { Padding = UDim.new(0, 4) },
        },
    })

    local searchIcon = searchBtn.SearchIcon
    local searchBox  = searchBtn.SearchBox

    -- Tweens
    local closeSizeTween = Tween(dropFrame, "Size", UDim2.fromOffset(DROP_WIDTH, 0), 0.2)
    local expandSearch   = Tween(searchBox, "Size", UDim2.new(0, SEARCH_WIDTH - 30, 1, 0), 0.3)
    local collapseSearch = Tween(searchBox, "Size", UDim2.new(0, 0, 1, 0), 0.2)

    local visibleItems   = {} -- instâncias no scroll
    local isOpen         = false
    local isSearching    = false
    local openCallback   -- callback do elemento que abriu
    local onItemClicked  -- função chamada ao clicar item
    local holderFrame    -- frame de referência para posicionamento
    local isMultiSelect  = false
    local lastFocusTime  = 0
    local allOptions     = nil -- lista completa de opções

    -- Calcula altura ideal do dropdown
    local function CalculateHeight(count)
        local maxFromViewport = UserInputService.AbsoluteSize and
            (UserInputService.AbsoluteSize.Y / UIScaleObject.Scale) or 400
        return math.min(
            (ITEM_HEIGHT * math.max(count, 0.5)) + 10,
            (ITEM_HEIGHT * MAX_ITEMS) + 10,
            maxFromViewport / 1.75
        )
    end

    -- Verifica se mouse está dentro do dropdown
    local function IsMouseInside()
        local pos  = dropFrame.AbsolutePosition
        local size = dropFrame.AbsoluteSize
        local mx, my = Mouse.X, Mouse.Y
        return mx >= pos.X and mx <= pos.X + size.X and
               my >= pos.Y and my <= pos.Y + size.Y
    end

    -- Calcula posição ideal do dropdown
    local function CalculateDropdownPosition(count)
        local scale     = UIScaleObject.Scale
        local vpSize    = UserInputService.AbsoluteSize or Vector2.new(800, 600)
        local height    = CalculateHeight(count)
        local hPos      = holderFrame.AbsolutePosition
        local hSize     = holderFrame.AbsoluteSize
        local vpW, vpH  = vpSize.X / scale, vpSize.Y / scale
        local hX        = hPos.X / scale
        local hY        = hPos.Y / scale
        local hH        = hSize.Y / scale
        local midY      = hY + hH / 2
        local dropY     = midY - height / 2
        local minY, maxY = PADDING, vpH - height - PADDING
        local clampedY  = math.clamp(dropY, minY, maxY)
        local anchor    = Vector2.new(0, 0)
        if clampedY > vpH * 0.7 then
            anchor  = Vector2.new(0, 1)
            clampedY = math.min(midY + height / 2, vpH - PADDING)
        end
        local clampedX = math.clamp(
            hX, PADDING, vpW - dropFrame.Size.X.Offset - PADDING * 2 - searchBtn.AbsoluteSize.X / scale
        )
        return Vector2.new(clampedX, clampedY), anchor
    end

    local function RepositionDropdown(count)
        local pos, anchor = CalculateDropdownPosition(count)
        dropFrame.AnchorPoint = anchor
        dropFrame.Position    = UDim2.fromOffset(pos.X, pos.Y)
    end

    local function HideSearch()
        if not isSearching then return end
        isSearching = false
        searchBox.Text = ""
        collapseSearch:Play()
        collapseSearch.Completed:Wait()
        searchBox.Visible = false
    end

    local function ShowSearch()
        if isSearching then return end
        isSearching = true
        searchBox.Visible = true
        expandSearch:Play()
        searchBox:CaptureFocus()

        local hSize = dropFrame.AbsoluteSize
        local vpSize = UserInputService.AbsoluteSize or Vector2.new(800, 600)
        local scale  = UIScaleObject.Scale
        local neededX = dropFrame.AbsolutePosition.X + hSize.X + 5 + SEARCH_WIDTH * scale
        if neededX > vpSize.X - PADDING * scale then
            local newX = (vpSize.X - hSize.X - SEARCH_WIDTH * scale - 5 - PADDING * scale) / scale
            Tween(dropFrame, "Position", UDim2.fromOffset(math.max(newX, PADDING), dropFrame.Position.Y.Offset), 0.3):Play()
        end
    end

    local function TryOpen(closeCallback)
        if not isOpen then
            openCallback = closeCallback
            overlay.Parent = MainWindowFrame
            return true
        end
    end

    local function CloseDropdown()
        if not isOpen then return end
        if openCallback then
            openCallback()
            openCallback = nil
        end
        task.spawn(HideSearch)
        isOpen = false
        closeSizeTween:Play()
        closeSizeTween.Completed:Wait()
        overlay.Parent = nil
        isOpen = false
    end

    -- Fecha se clicou fora
    local function CheckFocusLost()
        if searchBox:IsFocused() then
            lastFocusTime = tick()
            return
        end
        if (tick() - lastFocusTime) >= 0.3 and not IsMouseInside() then
            CloseDropdown()
        end
    end

    -- Limpa itens visíveis
    local function ClearVisibleItems()
        for inst in visibleItems do
            inst.Parent = nil
            visibleItems[inst] = nil
        end
    end

    -- Aplica visual de seleção num item
    local function SetOptionVisual(option, selected)
        option.Selected = selected
        if option.Instance then
            local inst  = option.Instance
            local label = inst.TextLabel
            local dot   = inst.Frame
            local transparency = selected and 0 or (isMultiSelect and 0.8 or 1)
            local textTrans    = selected and 0 or 0.4
            local dotSize      = UDim2.fromOffset(4, selected and 14 or 4)
            if inst.Parent then
                Tween(dot,   "BackgroundTransparency", transparency, 0.35):Play()
                Tween(label, "TextTransparency",        textTrans,     0.35):Play()
                Tween(dot,   "Size",                    dotSize,       0.35):Play()
            else
                label.TextTransparency     = textTrans
                dot.BackgroundTransparency = transparency
                dot.Size                   = dotSize
            end
        end
    end

    -- Filtra itens pela busca
    local function FilterSearch(option)
        if not isSearching or not option then return end
        local text = searchBox.Text
        if #text == 0 then
            option.Instance.Visible = true
        else
            local prefix    = text:sub(1, 1)
            local norm      = NormalizeSearch(text)
            local doFilter  = true
            if prefix == "+" or prefix == "-" then
                doFilter = option.Selected == (prefix == "+")
                norm = norm:sub(2)
            end
            option.Instance.Visible = doFilter and option.SearchText:find(norm, 1, true) ~= nil
        end
    end

    -- Cria template de um item do dropdown
    local function CreateOptionTemplate(option, addToList)
        local itemBtn = NewInstance("TextButton", {
            Size            = UDim2.new(1, 0, 0, 21),
            AutoButtonColor = false,
            Text            = "",
            Elements        = { Corner = UDim.new(0, 4) },
            ThemeTag        = { BackgroundColor3 = "Colors.Buttons.Default" },
            Childs = {
                NewInstance("Frame", {
                    Position = UDim2.new(0, 1, 0.5),
                    Size     = UDim2.new(0, 4, 0, 4),
                    BackgroundTransparency = 1,
                    AnchorPoint = Vector2.new(0, 0.5),
                    Elements = { Corner = UDim.new(0.5, 0) },
                    ThemeTag = { BackgroundColor3 = "Colors.Primary" },
                }),
                NewInstance("TextLabel", {
                    Size             = UDim2.fromScale(1, 1),
                    Position         = UDim2.fromOffset(10, 0),
                    TextXAlignment   = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1,
                    TextTransparency = 0.4,
                    Text             = option.DisplayName,
                    TextSize         = 9,
                    ThemeTag         = { Font = "Font.Bold", TextColor3 = "Colors.Text.Default" },
                }),
            },
        })

        local lastClick = 0

        Connect(itemBtn.Activated, function()
            if (tick() - lastClick) < 0 then return end
            if overlay.Parent and not isOpen then
                lastClick = tick() + 0.2
                onItemClicked(option)
            end
        end)

        option.SearchText = NormalizeSearch(option.DisplayName)
        option.Instance   = itemBtn

        if addToList then
            itemBtn.Parent = itemsList
            FilterSearch(option)
        end

        SetOptionVisual(option, option.Selected)
    end

    -- Mostra lista de opções
    local function SetOptions(options)
        ClearVisibleItems()
        allOptions = options

        for i = 1, #options do
            local opt  = options[i]
            local inst = opt.Instance
            if inst == nil then
                CreateOptionTemplate(opt)
                inst = opt.Instance
            end
            inst.Parent = itemsList
            visibleItems[inst] = true
        end

        RepositionDropdown(#options)
        Tween(dropFrame, "Size", UDim2.fromOffset(DROP_WIDTH, CalculateHeight(#options)), 0.3):Play()
    end

    -- Filtra durante digitação
    local function OnSearchTextChanged()
        if not allOptions then return end
        local text   = searchBox.Text
        local prefix = text:sub(1, 1)
        local norm   = NormalizeSearch(text)
        local empty  = #norm == 0
        local count  = 0

        for i = 1, #allOptions do
            local opt    = allOptions[i]
            local passes = empty
            if not passes then
                local doFilter = true
                if prefix == "+" or prefix == "-" then
                    doFilter = opt.Selected == (prefix == "+")
                    norm = norm:sub(2)
                end
                passes = doFilter and opt.SearchText:find(norm, 1, true) ~= nil
            end
            opt.Instance.Visible = passes
            if passes then count = count + 1 end
        end

        dropFrame.Size = UDim2.fromOffset(DROP_WIDTH, CalculateHeight(count))
    end

    Connect(MainWindowFrame and MainWindowFrame:GetPropertyChangedSignal("Visible") or overlay:GetPropertyChangedSignal("Visible"), CheckFocusLost)
    Connect(overlay.MouseButton1Down, CheckFocusLost)
    Connect(overlay.Activated,        CheckFocusLost)
    Connect(searchBtn.Activated,      ShowSearch)
    Connect(searchBox:GetPropertyChangedSignal("Text"), OnSearchTextChanged)

    return {
        CreateOptionTemplate = CreateOptionTemplate,
        SetOptionValue       = SetOptionVisual,
        CloseDropdown        = CloseDropdown,
        OpenDropdown         = TryOpen,
        SetOptions           = SetOptions,
        Clear                = ClearVisibleItems,
        SetOnClicked         = function(fn) onItemClicked = fn end,
        SetMultiSelect       = function(v)  isMultiSelect = v  end,
        SetHolder            = function(f)  holderFrame   = f  end,
    }
end

local SharedDropdownWindow -- instância única reutilizada

-- ─────────────────────────────────────────────
-- VERIFICAÇÃO DE KEYCODE VÁLIDO
-- ─────────────────────────────────────────────

local ValidKeyCodes

local function IsValidKeyCode(kc)
    if ValidKeyCodes == nil then
        ValidKeyCodes = MakeSet(Enum.KeyCode:GetEnumItems())
    end
    return typeof(kc) == "EnumItem" and ValidKeyCodes[kc]
end

-- ─────────────────────────────────────────────
-- MÉTODO: MinimizerMeta
-- ─────────────────────────────────────────────

function MinimizerMeta:SetKeyCode(kc)
    assert(IsValidKeyCode(kc),
        ("\"Minimizer.SetKeyCode\": 'KeyCode' expected, got %s"):format(typeof(kc)))
    self.KeyCode = kc
end

-- ─────────────────────────────────────────────
-- MÉTODO: OptionMeta (base para todos)
-- ─────────────────────────────────────────────

function OptionMeta:SetTitle(title)
    assert(type(title) == "string",
        ("\"Option.SetTitle\": 'string' expected, got %s"):format(typeof(title)))
    assert(self.TITLE_LABEL,
        ("\"Option.SetTitle\": cannot change title for %s:%s"):format(self.Kind, self.Title))
    self.TITLE_LABEL.Text = title
    self.Title = title
    return self
end

function OptionMeta:SetDescription(desc)
    assert(desc == nil or type(desc) == "string",
        ("\"Option.SetDescription\": 'string' or 'nil' expected, got %s"):format(typeof(desc)))
    assert(self.DESCRIPTION_LABEL,
        ("\"Option.SetDescription\": cannot change desc for %s:%s"):format(self.Kind, self.Title))
    self.DESCRIPTION_LABEL.Text = desc
    self.Description = desc
    return self
end

function OptionMeta:SetVisible(visible)
    assert(typeof(self.VISIBLE_ELEMENT) == "Instance",
        ("\"Option.SetVisible\": cannot change visibility for %s:%s"):format(self.Kind, self.Title))
    assert(type(visible) == "boolean",
        ("\"Option.SetVisible\": 'boolean' expected, got %s"):format(typeof(visible)))
    self.VISIBLE_ELEMENT.Visible = visible
end

function OptionMeta:Destroy()
    assert(typeof(self.DESTROY_ELEMENT) == "Instance",
        ("\"Option.Destroy\": cannot destroy %s:%s"):format(self.Kind, self.Title))
    self.DESTROY_ELEMENT:Destroy()
    setmetatable(self, nil)
    self.Destroyed = true
end

function OptionMeta:AddCallback(fn)
    assert(self.CALLBACKS, "\"Option.AddCallback\": cannot add callback to this option.")
    assert(type(fn) == "function",
        ("\"Option.AddCallback\": 'function' expected, got %s"):format(typeof(fn)))
    table.insert(self.CALLBACKS, fn)
    return self
end

OptionMeta.NewCallback  = OptionMeta.AddCallback
OptionMeta.SetContent   = OptionMeta.SetDescription
OptionMeta.SetDesc      = OptionMeta.SetDescription

-- ─────────────────────────────────────────────
-- MÉTODOS: TabMeta (AddToggle, AddSlider, etc.)
-- ─────────────────────────────────────────────

function TabMeta:GetNoSelfCall(methodName)
    assert(type(methodName) == "string",
        ("\"Tab.GetNoSelfCall\": 'string' expected, got %s"):format(typeof(methodName)))
    local fn = self[methodName]
    assert(type(fn) == "function",
        ("\"Tab.GetNoSelfCall\": '%s' is not a function"):format(methodName))
    return function(...) return fn(self, ...) end
end

function TabMeta:AddSection(sectionTitle)
    assert(sectionTitle == nil or type(sectionTitle) == "string",
        ("\"Tab.AddSection\": 'string' or 'nil' expected, got %s"):format(typeof(sectionTitle)))
    sectionTitle = sectionTitle or ""

    local tabNode = Library.TabNodes[self]
    local tabData = Library.TabData[self]

    local sectionFrame = NewInstance("Frame", "Option", tabData.Container, {
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
    })

    local label = NewInstance("TextLabel", sectionFrame, {
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate   = Enum.TextTruncate.AtEnd,
        Size           = UDim2.new(1, -25, 1, 0),
        Position       = UDim2.new(0, 5, 0, 0),
        BackgroundTransparency = 1,
        TextSize       = 17,
        Text           = sectionTitle,
        ThemeTag       = {
            OBJECTS    = tabNode,
            TextColor3 = "Colors.Text.Default",
            Font       = "Font.Bold",
        },
    })

    return setmetatable({
        Title           = sectionTitle,
        DESTROY_ELEMENT = sectionFrame,
        VISIBLE_ELEMENT = sectionFrame,
        TITLE_LABEL     = label,
        Kind            = "Section",
        Parent          = self,
    }, OptionMeta)
end

function TabMeta:AddToggle(config)
    local title, desc = ValidateTitle("Toggle", config)
    local flag        = ValidateFlag("Toggle", config[4] or config.Flag)
    local default     = config[2] or config.Default or false
    local callbacks   = NormalizeCallback(config[3] or config.Callback)

    assert(type(default) == "boolean",
        ("\"Tab.AddToggle.Default\": 'boolean' expected, got %s"):format(typeof(default)))

    -- Aplica flag salva
    local flags = Library.Flags
    if flag ~= nil and type(flags[flag]) == "number" then
        default = flags[flag] == 0
    end

    local tabNode = Library.TabNodes[self]
    local row, titleLabel, descLabel = CreateOptionRow(self, title, desc, UDim2.new(1, -38, 0, 0))

    -- Trilho do toggle
    local track = NewInstance("Frame", row, {
        Size        = UDim2.new(0, 35, 0, 18),
        Position    = UDim2.new(1, -10, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        Elements    = { Corner = UDim.new(0.5, 0) },
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Stroke" },
    })

    local trackInner = NewInstance("Frame", track, {
        BackgroundTransparency = 1,
        Size        = UDim2.new(0.8, 0, 0.8, 0),
        Position    = UDim2.fromScale(0.5, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
    })

    local thumbTheme = { OBJECTS = tabNode, BackgroundColor3 = "Colors.OnPrimary" }

    local thumb = NewInstance("Frame", trackInner, {
        Size        = UDim2.new(0, 12, 0, 12),
        Position    = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        Elements    = { Corner = UDim.new(0.5, 0) },
        ThemeTag    = thumbTheme,
    })

    local lastToggleTime = tick()
    local DEBOUNCE       = 0.2
    local activeTweens   = {}

    local function PlayTweens(list)
        activeTweens = {}
        for i = 1, #list do
            list[i]:Play()
            activeTweens[i] = list[i]
        end
    end

    local function CancelTweens()
        for i = #activeTweens, 1, -1 do
            local t = activeTweens[i]
            if t.PlaybackState == Enum.PlaybackState.Playing then t:Cancel() end
            activeTweens[i] = nil
        end
    end

    local toggleObj

    local function SetToggleVisual(enabled)
        if flag ~= nil then flags[flag] = enabled and 0 or 1 end
        FireCallbacks(callbacks, enabled)

        local targetPos    = UDim2.new(enabled and 1 or 0, 0, 0.5, 0)
        local targetAnchor = Vector2.new(enabled and 1 or 0, 0.5)
        local colorPath    = enabled and "Colors.Primary" or "Colors.OnPrimary"
        local targetColor  = GetNestedValue(Library.CurrentTheme, colorPath)

        thumbTheme.BackgroundColor3 = colorPath

        if toggleObj and toggleObj.Selected and (tick() - lastToggleTime) >= DEBOUNCE then
            PlayTweens({
                Tween(thumb, "Position",         targetPos,    0.25),
                Tween(thumb, "AnchorPoint",       targetAnchor, 0.25),
                Tween(thumb, "BackgroundColor3",  targetColor,  0.25),
            })
        else
            CancelTweens()
            thumb.Position        = targetPos
            thumb.AnchorPoint     = targetAnchor
            thumb.BackgroundColor3 = targetColor
        end

        lastToggleTime = tick()
    end

    toggleObj = ToggleMeta.new(self, row, titleLabel, descLabel, SetToggleVisual, callbacks)
    toggleObj:SetValue(default)

    local lastClick = 0
    Connect(row.Activated, function()
        if (tick() - lastClick) >= DEBOUNCE then
            lastClick = tick()
            toggleObj:SetValue(not toggleObj.Value)
        end
    end)

    return toggleObj
end

function TabMeta:AddButton(config)
    local title, desc = ValidateTitle("Button", config)
    local callbacks   = NormalizeCallback(config[2] or config.Callback)
    local debounce    = config.Debounce or config.Cooldown

    local tabNode = Library.TabNodes[self]
    local row, titleLabel, descLabel = CreateOptionRow(self, title, desc, UDim2.new(1, -20, 0, 0))

    -- Ícone de botão
    NewInstance("ImageLabel", row, {
        Size        = UDim2.new(0, 14, 0, 14),
        Position    = UDim2.new(1, -10, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        ThemeTag    = { OBJECTS = tabNode, Image = "Icons.Button" },
    })

    local lastClick = 0
    Connect(row.Activated, function()
        if debounce ~= nil and (tick() - lastClick) < 0 then return end
        if debounce ~= nil then lastClick = tick() + debounce end
        FireCallbacks(callbacks)
    end)

    return setmetatable({
        CALLBACKS         = callbacks,
        DESTROY_ELEMENT   = row,
        VISIBLE_ELEMENT   = row,
        TITLE_LABEL       = titleLabel,
        DESCRIPTION_LABEL = descLabel,
        Title             = title,
        Description       = desc,
        Parent            = self,
        Kind              = "Button",
    }, OptionMeta)
end

function TabMeta:AddTextBox(config)
    local title, desc  = ValidateTitle("TextBox", config)
    local flag         = ValidateFlag("TextBox", config[4] or config.Flag)
    local default      = config[2] or config.Default
    local callbacks    = NormalizeCallback(config[3] or config.Callback)
    local placeholder  = config.Placeholder or config.PlaceholderText
    local clearOnFocus = config.ClearOnFocus or config.ClearTextOnFocus

    if default ~= nil and type(default) ~= "string" then
        error(("\"Tab.AddTextBox.Default\": 'string' or 'nil' expected, got %s"):format(typeof(default)), 2)
    end

    local flags = Library.Flags
    if flag and type(flags[flag]) == "string" then
        default = flags[flag]
    end

    local tabNode = Library.TabNodes[self]
    local row, titleLabel, descLabel = CreateOptionRow(self, title, desc, UDim2.new(1, -150, 0, 0))

    -- Container do input
    local inputFrame = NewInstance("Frame", row, {
        Size        = UDim2.new(0, 150, 0, 18),
        Position    = UDim2.new(1, -10, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Stroke" },
        Elements    = { Corner = UDim.new(0, 4) },
    })

    local textBox = NewInstance("TextBox", inputFrame, {
        Size        = UDim2.new(0.85, 0, 0.85, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position    = UDim2.fromScale(0.5, 0.5),
        BackgroundTransparency = 1,
        TextScaled  = true,
        Active      = true,
        Text        = "",
        PlaceholderText = LIMITS.TEXTBOX.PLACEHOLDER_TEXT,
        ThemeTag    = { OBJECTS = tabNode, TextColor3 = "Colors.Text.Default", Font = "Font.Bold" },
    })

    local iconTheme = { OBJECTS = tabNode, Image = "Icons.TextBox", ImageColor3 = "Colors.Icons" }

    local iconLabel = NewInstance("ImageLabel", inputFrame, {
        Size        = UDim2.new(0, 12, 0, 12),
        Position    = UDim2.new(0, -5, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        ThemeTag    = iconTheme,
    })

    if default     ~= nil then textBox.Text             = default     end
    if clearOnFocus ~= nil then textBox.ClearTextOnFocus = clearOnFocus end
    if placeholder  ~= nil then textBox.PlaceholderText  = placeholder  end

    local tbObj = TextBoxMeta.new(self, titleLabel, descLabel, row, textBox, callbacks)

    local function SetIconColor(colorPath)
        iconTheme.ImageColor3 = colorPath
        Tween(iconLabel, "ImageColor3", GetNestedValue(Library.CurrentTheme, colorPath), 0.5):Play()
    end

    if flag ~= nil then
        Connect(textBox:GetPropertyChangedSignal("Text"), function()
            flags[flag] = textBox.Text
        end)
    end

    Connect(textBox.Focused,   function() SetIconColor("Colors.Primary") end)
    Connect(textBox.FocusLost, function()
        SetIconColor("Colors.Icons")
        local filter = tbObj.TEXTBOX_TEXT_FILTER
        if filter then
            local result = filter(textBox.Text)
            if type(result) == "string" then textBox.Text = result end
        end
        FireCallbacks(callbacks, textBox.Text)
    end)
    Connect(row.Activated, function() textBox:CaptureFocus() end)

    return tbObj
end

function TabMeta:AddSlider(config)
    local title, desc = ValidateTitle("Slider", config)
    local flag        = ValidateFlag("Slider", config[7] or config.Flag)

    local minVal   = config[2] or config.Min
    local maxVal   = config[3] or config.Max
    local step     = config[4] or config.Increment
    local default  = config[5] or config.Default
    local callbacks = NormalizeCallback(config[6] or config.Callback)

    assert(type(minVal) == "number", ("\"Tab.AddSlider.Min\": 'number' expected, got %s"):format(typeof(minVal)))
    assert(type(maxVal) == "number", ("\"Tab.AddSlider.Max\": 'number' expected, got %s"):format(typeof(maxVal)))

    if step    ~= nil and type(step)    ~= "number" then error(("\"Tab.AddSlider.Increment\": 'number' or 'nil' expected, got %s"):format(typeof(step)),    2) end
    if default ~= nil and type(default) ~= "number" then error(("\"Tab.AddSlider.Default\": 'number' or 'nil' expected, got %s"):format(typeof(default)), 2) end

    default = default or minVal
    step    = step    or 1

    local flags = Library.Flags
    if flag ~= nil and type(flags[flag]) == "number" then
        default = flags[flag]
    end

    local tabNode    = Library.TabNodes[self]
    local tabData    = Library.TabData[self]
    local row, titleLabel, descLabel = CreateOptionRow(self, title, desc, UDim2.new(0.55, 0, 0, 0))

    -- Área de interação do slider
    local sliderArea = NewInstance("TextButton", row, {
        Size              = UDim2.new(0.45, 0, 1, 0),
        Position          = UDim2.new(1, 0, 0, 0),
        AnchorPoint       = Vector2.new(1, 0),
        AutoButtonColor   = false,
        BackgroundTransparency = 1,
        Text              = "",
    })

    -- Trilha de fundo
    local track = NewInstance("Frame", sliderArea, {
        Size        = UDim2.new(1, -20, 0, 6),
        Position    = UDim2.fromScale(0.5, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Stroke" },
        Elements    = { Corner = UDim.new(0.5, 0) },
    })

    -- Preenchimento colorido
    local fill = NewInstance("Frame", track, {
        Size        = UDim2.fromScale(0, 1),
        BorderSizePixel = 0,
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Primary" },
        Elements    = { Corner = UDim.new(0.5, 0) },
    })

    -- Thumb do slider
    local thumb = NewInstance("Frame", track, {
        Size        = UDim2.new(0, 6, 0, 12),
        BackgroundColor3 = Color3.fromRGB(220, 220, 220),
        Position    = UDim2.fromScale(0, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 0.2,
        Elements    = { Corner = UDim.new(0, 6) },
    })

    -- Label de valor
    local valueLabel = NewInstance("TextLabel", sliderArea, {
        Size        = UDim2.new(0, 50, 0, 14),
        AnchorPoint = Vector2.new(1, 0.5),
        Position    = UDim2.new(0, -1, 0.5, 0),
        BackgroundTransparency = 1,
        TextSize    = 12,
        TextXAlignment = Enum.TextXAlignment.Right,
        ThemeTag    = { OBJECTS = tabNode, TextColor3 = "Colors.Text.Default", Font = "Font.SliderValue" },
    })

    local labelScale = NewInstance("UIScale", valueLabel)
    local rng        = Random.new()

    local sliderObj  = SliderMeta.new(self, row, titleLabel, descLabel, callbacks)
    sliderObj.Min    = minVal
    sliderObj.Max    = maxVal
    sliderObj.Increment = step

    local function NormalizeValue(v)
        return (v - minVal) / (maxVal - minVal)
    end

    local function DenormalizeValue(t)
        return (t * (maxVal - minVal)) + minVal
    end

    local function SnapValue(v)
        return math.round(v / step) * step
    end

    local function ApplyValue(value, normalized)
        if value == sliderObj.Value then return end
        if flag ~= nil then flags[flag] = value end
        task.defer(FireCallbacks, callbacks, value)
        sliderObj.Value = value

        local thumbPos = UDim2.fromScale(normalized, 0.5)
        local fillSize = UDim2.fromScale(normalized, 1)
        valueLabel.Text = tostring(math.floor(value * 1000) / 1000)

        if self.Selected then
            Tween(thumb, "Position", thumbPos, 0.3):Play()
            Tween(fill,  "Size",     fillSize, 0.3):Play()
        else
            thumb.Position = thumbPos
            fill.Size      = fillSize
        end
    end

    local function SetValue(v)
        local clamped = math.clamp(SnapValue(v), minVal, maxVal)
        ApplyValue(clamped, NormalizeValue(clamped))
    end

    sliderObj.WHEN_VALUE_CHANGED = SetValue

    -- Drag do slider
    Connect(sliderArea.MouseButton1Down, function()
        if IsDragging ~= false then return end
        Tween(thumb, "BackgroundTransparency", 0, 0.3):Play()
        tabData.Container.ScrollingEnabled = false
        IsDragging = true

        local trackPos  = track.AbsolutePosition
        local trackSize = track.AbsoluteSize

        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
            local ratio   = math.clamp((Mouse.X - trackPos.X) / trackSize.X, 0, 1)
            local raw     = DenormalizeValue(ratio)
            local snapped = SnapValue(raw)
            local final   = math.clamp(snapped, minVal, maxVal)
            ApplyValue(final, NormalizeValue(final))
            task.wait()
        end

        IsDragging = false
        Tween(thumb, "BackgroundTransparency", 0.2, 0.3):Play()
        tabData.Container.ScrollingEnabled = true
    end)

    -- Animação de valor alterado
    Connect(valueLabel:GetPropertyChangedSignal("Text"), function()
        if not self.Selected then return end
        labelScale.Scale = 0.3
        Tween(labelScale, "Scale", 1.2, 0.1):Play()
        local rot = Tween(valueLabel, "Rotation", rng:NextNumber(-7.5, 7.5), 0.15)
        rot:Play()
        rot.Completed:Wait()
        Tween(labelScale,  "Scale",    1, 0.2):Play()
        Tween(valueLabel,  "Rotation", 0, 0.1):Play()
    end)

    SetValue(default)
    return sliderObj
end

function TabMeta:AddDiscordInvite(config)
    local title, desc = ValidateTitle("DiscordInvite", config)
    local icon   = config.Icon or config.Image or config.Logo
    local banner = config.Banner or config.BannerColor
    local online  = config.Online or config.MembersOnline
    local members = config.Members or config.TotalMembers
    local invite  = config.Invite or config.Link

    assert(type(invite) == "string",
        ("\"Tab.AddDiscordInvite.Invite\": 'string' expected, got %s"):format(typeof(invite)))

    if banner  ~= nil and typeof(banner)  ~= "Color3" and type(banner)  ~= "string" then
        error(("\"Tab.AddDiscordInvite.Banner\": 'nil', 'Color3', or 'string' expected, got %s"):format(typeof(banner)), 2)
    end
    if online  ~= nil and type(online)  ~= "number" then
        error(("\"Tab.AddDiscordInvite.Online\": 'number' expected, got %s"):format(typeof(online)), 2)
    end
    if members ~= nil and type(members) ~= "number" then
        error(("\"Tab.AddDiscordInvite.Members\": 'nil' or 'number' expected, got %s"):format(typeof(members)), 2)
    end

    if UserInputService.ZIndexBehavior ~= Enum.ZIndexBehavior.Sibling then
        UserInputService.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    end

    local tabNode = Library.TabNodes[self]
    local tabData = Library.TabData[self]

    local wrapper = NewInstance("Frame", "Option", tabData.Container, {
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 148),
    })

    local card = NewInstance("CanvasGroup", wrapper, {
        Size     = UDim2.new(0, 178, 1, -15),
        Position = UDim2.new(0, 5, 1, 0),
        AnchorPoint = Vector2.new(0, 1),
        ClipsDescendants = true,
        Elements = {
            Corner = UDim.new(0, 9),
            Stroke = { ThemeTag = { Color = "Colors.Border.Default" } },
        },
        ThemeTag = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Buttons.Default" },
    })

    local bannerImg = NewInstance("ImageLabel", card, {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Size             = UDim2.fromScale(1, 0.28),
        BackgroundTransparency = 1,
    })

    local inviteLink = NewInstance("TextLabel", wrapper, {
        Position   = UDim2.fromOffset(5, 0),
        Size       = UDim2.new(1, 0, 0, 15),
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        TextSize   = 9,
        Text       = invite,
        ThemeTag   = { OBJECTS = tabNode, TextColor3 = "Colors.Link", Font = "Font.Medium" },
    })

    local serverIcon = NewInstance("ImageLabel", card, {
        Size        = UDim2.fromOffset(33, 33),
        Position    = UDim2.new(0, 10, 0.28, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        Image       = icon,
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Buttons.Default" },
        Elements    = {
            Corner = UDim.new(0, 8),
            Stroke = {
                Thickness = 2.2,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                ThemeTag = { OBJECTS = tabNode, Color = "Colors.Buttons.Default" },
            },
        },
    })

    local nameLabel = NewInstance("TextLabel", card, {
        Size        = UDim2.new(1, -10, 0, 10),
        Position    = UDim2.new(0, 10, 0.44, 0),
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        TextSize    = 11,
        Text        = title,
        ThemeTag    = { OBJECTS = tabNode, TextColor3 = "Colors.Text.Default", Font = "Font.Bold" },
    })

    -- Stats (online / members)
    local statsFrame
    if online or members then
        statsFrame = NewInstance("Frame", card, {
            Size     = UDim2.new(1, -10, 0, 9),
            Position = UDim2.new(0, 0, 0.52, 0),
            BackgroundTransparency = 1,
            Elements = {
                Padding    = { PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 10) },
                ListLayout = {
                    HorizontalAlignment = Enum.HorizontalAlignment.Left,
                    VerticalAlignment   = Enum.VerticalAlignment.Center,
                    FillDirection       = Enum.FillDirection.Horizontal,
                    Padding             = UDim.new(0, 4),
                },
            },
        })

        local function AddStat(color, text)
            NewInstance("Frame", statsFrame, {
                Size          = UDim2.fromScale(0, 1),
                AutomaticSize = Enum.AutomaticSize.X,
                BackgroundTransparency = 1,
                Childs = {
                    NewInstance("Frame", {
                        Size        = UDim2.fromOffset(3, 3),
                        Position    = UDim2.new(0, 5, 0.5, 0),
                        AnchorPoint = Vector2.new(0, 0.5),
                        BackgroundColor3 = color,
                        Elements    = { Corner = UDim.new(1, 0) },
                    }),
                    NewInstance("TextLabel", {
                        Size          = UDim2.new(0, 0, 1, 0),
                        Position      = UDim2.new(0, 12, 0.5, 0),
                        AnchorPoint   = Vector2.new(0, 0.5),
                        AutomaticSize = Enum.AutomaticSize.X,
                        BackgroundTransparency = 1,
                        TextSize      = 7,
                        Text          = text,
                        ThemeTag      = { OBJECTS = tabNode, TextColor3 = "Colors.Text.Darker", Font = "Font.Normal" },
                    }),
                },
            })
        end

        if online  ~= nil then AddStat(Color3.fromRGB(67, 181, 129), FormatNumber(online)  .. " Online")  end
        if members ~= nil then AddStat(Color3.fromRGB(86, 101, 105), FormatNumber(members) .. " Members") end
    end

    local descLabel = NewInstance("TextLabel", card, {
        Size        = UDim2.new(1, -50, 0, 8),
        Position    = UDim2.new(0, 10, statsFrame and 0.6 or 0.56, 0),
        TextXAlignment = Enum.TextXAlignment.Left,
        AutomaticSize  = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        TextSize       = 8,
        Text           = desc or "",
        TextWrapped    = true,
        ThemeTag       = { OBJECTS = tabNode, TextColor3 = "Colors.Text.Darker", Font = "Font.Medium" },
    })

    -- Gradiente de fade no rodapé
    local footer = NewInstance("Frame", card, {
        Size        = UDim2.new(1, 0, 0.28, 0),
        Position    = UDim2.fromScale(0, 1),
        AnchorPoint = Vector2.new(0, 1),
        BorderSizePixel = 0,
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Buttons.Default" },
    })

    if #descLabel.Text > 0 then
        footer.Size = UDim2.new(1, 0, 0.42, 0)
        NewInstance("UIGradient", footer, {
            Rotation     = -90,
            Transparency = NumberSequence.new{
                NumberSequenceKeypoint.new(0.00, 0.00),
                NumberSequenceKeypoint.new(0.60, 0.00),
                NumberSequenceKeypoint.new(1.00, 1.00),
            },
        })
    end

    local joinBtn = NewInstance("TextButton", footer, {
        Position    = UDim2.new(0.5, 0, 1, -9),
        Size        = UDim2.new(1, -18, 0, 18),
        AnchorPoint = Vector2.new(0.5, 1),
        Text        = "Go to Server",
        Elements    = { Corner = UDim.new(0.5, 0) },
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.JoinButton", TextColor3 = "Colors.Text.Default", Font = "Font.Bold" },
    })

    local lastJoin = 0
    Connect(joinBtn.Activated, function()
        if (tick() - lastJoin) < 0 then return end
        lastJoin = tick() + 5
        local orig = joinBtn.Text
        joinBtn.Text = "Copied to Clipboard!"
        setclipboard(invite)
        task.wait(4)
        joinBtn.Text = orig
    end)

    if type(banner) == "string" then
        bannerImg.ScaleType = Enum.ScaleType.Crop
        bannerImg.Image     = banner
    elseif typeof(banner) == "Color3" then
        bannerImg.BackgroundTransparency = 0
        NewInstance("UIGradient", bannerImg, {
            Rotation = -15,
            Color    = ColorSequence.new{
                ColorSequenceKeypoint.new(0, banner),
                ColorSequenceKeypoint.new(1, banner:Lerp(Color3.new(1,1,1), 0.2)),
            },
        })
    end

    return setmetatable({
        DESTROY_ELEMENT   = wrapper,
        VISIBLE_ELEMENT   = wrapper,
        Title             = title,
        Description       = desc,
        DESCRIPTION_LABEL = descLabel,
        TITLE_LABEL       = nameLabel,
        Kind              = "DiscordInvite",
        Parent            = self,
    }, OptionMeta)
end

function TabMeta:AddParagraph(title, content)
    assert(type(title) == "string",
        ("\"Tab.AddParagraph[1]\": 'string' expected, got %s"):format(typeof(title)))
    if content ~= nil and type(content) ~= "string" then
        error(("\"Tab.AddParagraph[2]\": 'string' or 'nil' expected, got %s"):format(typeof(content)), 2)
    end

    local row, titleLabel, descLabel = CreateOptionRow(self, title, content, UDim2.new(1, 0, 0, 0))

    return setmetatable({
        DESTROY_ELEMENT   = row,
        VISIBLE_ELEMENT   = row,
        TITLE_LABEL       = titleLabel,
        DESCRIPTION_LABEL = descLabel,
        Title             = title,
        Description       = content,
        Parent            = self,
        Kind              = "Paragraph",
    }, OptionMeta)
end

function TabMeta:AddDropdown(config)
    local title, desc = ValidateTitle("Dropdown", config)
    local flag        = ValidateFlag("Dropdown", config[5] or config.Flag)
    local options     = config[2] or config.Options
    local default     = config[3] or config.Default
    local callbacks   = NormalizeCallback(config[4] or config.Callback)
    local multiSelect = config.MultiSelect

    if default     ~= nil and type(default)     ~= "table" and type(default)     ~= "string" then
        error(("\"Tab.AddDropdown.Default\": 'string', 'table', or 'nil' expected, got %s"):format(typeof(default)), 2)
    end
    if options     ~= nil and type(options)     ~= "table"   then
        error(("\"Tab.AddDropdown.Options\": 'table' or 'nil' expected, got %s"):format(typeof(options)), 2)
    end
    if multiSelect ~= nil and type(multiSelect) ~= "boolean" then
        error(("\"Tab.AddDropdown.MultiSelect\": 'boolean' or 'nil' expected, got %s"):format(typeof(multiSelect)), 2)
    end

    local flags = Library.Flags
    if flag and type(flags[flag]) == (multiSelect and "table" or "string") then
        default = flags[flag]
    end

    local tabNode = Library.TabNodes[self]
    local row, titleLabel, descLabel = CreateOptionRow(self, title, desc, UDim2.new(1, -150, 0, 0))

    -- Display do valor selecionado
    local displayFrame = NewInstance("Frame", row, {
        Size        = UDim2.new(0, 150, 0, 18),
        Position    = UDim2.new(1, -10, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        Elements    = { Corner = UDim.new(0, 4) },
        ThemeTag    = { OBJECTS = tabNode, BackgroundColor3 = "Colors.Stroke" },
    })

    local displayLabel = NewInstance("TextLabel", displayFrame, {
        Size        = UDim2.new(0.85, 0, 0.85, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position    = UDim2.fromScale(0.5, 0.5),
        BackgroundTransparency = 1,
        TextScaled  = true,
        Text        = "...",
        ThemeTag    = { OBJECTS = tabNode, TextColor3 = "Colors.Text.Default", Font = "Font.Bold" },
    })

    local arrowTheme = { OBJECTS = tabNode, Image = "Icons.Dropdown.Open", ImageColor3 = "Colors.Icons" }
    local arrowIcon  = NewInstance("ImageLabel", displayFrame, {
        Size        = UDim2.new(0, 15, 0, 15),
        Position    = UDim2.new(0, -5, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        ThemeTag    = arrowTheme,
    })

    local dropObj = DropdownMeta.new(self, row, titleLabel, descLabel, callbacks)

    -- Estado interno do dropdown
    local selectedOption   = nil   -- para single select
    local selectedStates   = {}    -- para multi select: name → bool
    local pendingDefaults  = {}
    local allOptions       = {}
    local optionByName     = {}
    local isOpen           = false
    local pendingUpdate    = false

    dropObj.DROPDOWN_OPTIONS = allOptions
    dropObj.Opened           = isOpen

    -- Atualiza ícone de seta
    local function UpdateArrow(open)
        isOpen       = open
        dropObj.Opened = open
        local colorPath = open and "Colors.Primary" or "Colors.Icons"
        local imagePath = open and "Icons.Dropdown.Close" or "Icons.Dropdown.Open"
        arrowTheme.ImageColor3 = colorPath
        arrowTheme.Image       = imagePath
        Tween(arrowIcon, "ImageColor3", GetNestedValue(Library.CurrentTheme, colorPath), 0.35):Play()
        arrowIcon.Image = GetNestedValue(Library.CurrentTheme, imagePath)
    end

    -- Retorna selecionados (multi)
    local function GetMultiSelected()
        local list = {}
        for name, selected in selectedStates do
            if selected then list[#list+1] = name end
        end
        return list
    end

    -- Atualiza texto do display
    local function UpdateDisplayText(sel)
        local text = type(sel) == "table" and table.concat(sel, ", ") or (sel or "")
        if #text >= 100 then text = text:sub(1, 97) .. "..." end
        displayLabel.Text = #text ~= 0 and text or "..."
    end

    -- Deferred callback
    local function ScheduleCallback()
        if not pendingUpdate then
            pendingUpdate = true
            task.delay(0.1, function()
                pendingUpdate = false
                local sel = multiSelect and GetMultiSelected() or (selectedOption and selectedOption.Name)
                FireCallbacks(callbacks, multiSelect and selectedStates or sel)
                UpdateDisplayText(sel)
                if flag ~= nil then flags[flag] = sel end
            end)
        end
    end

    -- Clique num item
    local function OnItemClicked(option)
        if multiSelect then
            local newState = not option.Selected
            SharedDropdownWindow.SetOptionValue(option, newState)
            selectedStates[option.Name] = newState
        else
            if selectedOption == option then return end
            if selectedOption ~= nil then
                SharedDropdownWindow.SetOptionValue(selectedOption, false)
            end
            selectedOption = option
            SharedDropdownWindow.SetOptionValue(option, true)
        end
        ScheduleCallback()
    end

    -- Abre/fecha dropdown
    local function SetDropdownOpen(open)
        if isOpen == open then return end
        if not SharedDropdownWindow then
            SharedDropdownWindow = CreateDropdownWindow()
        end
        if open then
            if not SharedDropdownWindow.OpenDropdown(function() UpdateArrow(false) end) then return end
            SharedDropdownWindow.SetHolder(displayFrame)
            SharedDropdownWindow.SetMultiSelect(multiSelect)
            SharedDropdownWindow.SetOnClicked(OnItemClicked)
            SharedDropdownWindow.SetOptions(allOptions)
        else
            SharedDropdownWindow.CloseDropdown()
        end
        UpdateArrow(open)
    end

    -- Cria opção
    local function CreateOption(name)
        name = tostring(name)
        if optionByName[name] then return end
        local opt = { Name = name, DisplayName = name, Selected = false }
        if multiSelect and selectedStates[name] == nil then
            selectedStates[name] = false
        end
        optionByName[name] = opt
        allOptions[#allOptions+1] = opt
        return opt
    end

    -- Encontra opção
    local function FindOption(arg, idx)
        if type(arg) == "boolean" and idx then
            return arg == true and allOptions[idx]
        end
        return type(arg) == "number" and allOptions[arg] or optionByName[tostring(arg)]
    end

    -- Seleciona opção sem callback
    local function SelectSilently(opt)
        opt.Selected = true
        if multiSelect then selectedStates[opt.Name] = true
        else selectedOption = opt end
    end

    -- Aplica default
    local function ApplyDefault(...)
        local opt = FindOption(...)
        if opt then
            SelectSilently(opt)
        elseif multiSelect and type(...) == "string" then
            pendingDefaults[select(1,...)] = true
        end
    end

    local function ApplyAllDefaults()
        if not default then return end
        for i = 1, (multiSelect and #default or 1) do
            ApplyDefault(default[i], i)
        end
    end

    -- Remoção de opção
    local function RemoveOption(opt)
        local idx = table.find(allOptions, opt)
        if idx then table.remove(allOptions, idx) end
        if opt.Instance then opt.Instance:Destroy() end
        optionByName[opt.Name] = nil
    end

    -- Verifica se deve estar selecionado
    local function ShouldBeSelected(opt)
        if multiSelect then
            return (selectedStates[opt.Name] or pendingDefaults[opt.Name]) == true
        else
            return selectedOption ~= nil and selectedOption.Name == opt.Name
        end
    end

    -- API pública do dropdown
    dropObj.ADD_DROPDOWN_OPTION = function(item)
        if type(item) == "table" then
            for _, v in item do dropObj:Add(v) end
            return
        end
        local opt = CreateOption(item)
        if opt then
            if isOpen then SharedDropdownWindow.CreateOptionTemplate(opt, true) end
            if ShouldBeSelected(opt) then
                SelectSilently(opt)
                if opt.Instance then SharedDropdownWindow.SetOptionValue(opt, opt.Selected) end
            end
            ScheduleCallback()
        end
    end

    dropObj.REMOVE_DROPDOWN_OPTION = function(name)
        local opt = optionByName[tostring(name)]
        if opt then RemoveOption(opt) end
    end

    dropObj.CLEAR_DROPDOWN = function()
        for i = #allOptions, 1, -1 do
            local opt = allOptions[i]
            if opt.Instance then opt.Instance:Destroy() end
            optionByName[opt.Name] = nil
            allOptions[i] = nil
        end
        if isOpen then SharedDropdownWindow.Clear() end
    end

    dropObj.SET_ENABLED_OPTIONS = function(enabledList)
        -- Implementação de SetEnabled (ativa/desativa visibilidade)
        local enabled = MakeSet(enabledList)
        for _, opt in allOptions do
            if opt.Instance then
                opt.Instance.Visible = enabled[opt.Name] == true
            end
        end
    end

    -- Inicializa opções
    do
        if options then
            for i = 1, #options do CreateOption(options[i]) end
        end

        if type(default) == "table" then
            ApplyAllDefaults()
        elseif type(default) == "string" or type(default) == "number" then
            local opt = FindOption(default)
            if opt then SelectSilently(opt) end
        end

        if multiSelect then
            local sel = GetMultiSelected()
            task.defer(FireCallbacks, callbacks, selectedStates)
            UpdateDisplayText(sel)
        else
            local name = selectedOption and selectedOption.Name or ""
            task.defer(FireCallbacks, callbacks, name)
            UpdateDisplayText(name)
        end
    end

    Connect(row.Activated, function()
        SetDropdownOpen(not isOpen)
    end)

    return dropObj
end

-- ─────────────────────────────────────────────
-- SELEÇÃO E DESTRUIÇÃO DE ABAS
-- ─────────────────────────────────────────────

local CurrentTab       -- aba atualmente selecionada
local TabActions = {}  -- TabActions[tab] = { Select, Unselect }

function TabMeta:Select()
    if CurrentTab == self then return end
    if CurrentTab then TabActions[CurrentTab].Unselect() end
    CurrentTab = self
    TabActions[self].Select()
end

function TabMeta:SetVisible(visible)
    assert(type(visible) == "boolean",
        ("\"Tab.SetVisible\": 'boolean' expected, got %s"):format(typeof(visible)))
    local tabData = Library.TabData[self]
    for _, inst in tabData do inst.Visible = visible end
end

function TabMeta:Destroy()
    assert(type(self) == "table" and self.IS_A_TAB,
        ("\"Tab.Destroy\": %s is not a tab"):format(tostring(self)))
    if self.IS_DESTROYED then return end

    local idx = table.find(Library.Tabs, self)
    assert(idx, ("\"Tab.Destroy\": failed to destroy '%s'"):format(self.Title))

    table.remove(Library.Tabs, idx)

    for _, inst in Library.TabData[self] do inst:Destroy() end
    Library.TabNodes[self]:Destroy()

    Library.TabData[self]  = nil
    Library.TabNodes[self] = nil
    setmetatable(self, nil)
end

-- ─────────────────────────────────────────────
-- CRIAÇÃO DOS SCROLLS DE ABAS E CONTAINERS
-- ─────────────────────────────────────────────

local function CreateTabsAndContainers(settings, topBar)
    local topHeight = topBar.Size.Y.Offset
    local tabWidth  = UDim2.new(0, settings.TabSize or Library.Default.TabSize, 1, -topHeight)
    local contWidth = UDim2.new(1, -tabWidth.X.Offset, 1, -topHeight)

    local tabsScroll = NewInstance("ScrollingFrame", "TabsScroll", {
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollingDirection  = Enum.ScrollingDirection.Y,
        Position            = UDim2.new(0, 0, 1, 0),
        AnchorPoint         = Vector2.new(0, 1),
        ScrollBarThickness  = 2.2,
        BackgroundTransparency = 1,
        ScrollBarImageTransparency = 0.2,
        CanvasSize          = UDim2.new(),
        BorderSizePixel     = 0,
        Size                = tabWidth,
        ThemeTag            = { ScrollBarImageColor3 = "Colors.ScrollBar" },
        Elements            = {
            Padding    = { PaddingLeft = UDim.new(0,10), PaddingRight = UDim.new(0,10), PaddingTop = UDim.new(0,10), PaddingBottom = UDim.new(0,10) },
            ListLayout = { Padding = UDim.new(0, 5) },
        },
    })

    local containersFrame = NewInstance("Frame", "Containers", {
        Size        = contWidth,
        AnchorPoint = Vector2.new(1, 1),
        Position    = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
    })

    return tabsScroll, containersFrame
end

-- ─────────────────────────────────────────────
-- MÉTODOS: WindowMeta
-- ─────────────────────────────────────────────

WindowMeta.__index = WindowMeta

local NotificationArea -- Frame de notificações

-- Variáveis de controle da janela
local MinimizeButton_Instance
local WindowTopBar
local WindowResizers
local OriginalWindowSize
local MinimizeDebounce = 0

function WindowMeta:MinimizeButton()
    if (tick() - MinimizeDebounce) < 0 then return false end

    if self.Minimized then
        MinimizeButton_Instance.Image = "rbxassetid://10734896206"
        Tween(MainWindowFrame, "Size", OriginalWindowSize, 0.25):Play()
    else
        OriginalWindowSize = MainWindowFrame.Size
        MinimizeButton_Instance.Image = "rbxassetid://10734924532"
        Tween(MainWindowFrame, "Size",
            UDim2.fromOffset(MainWindowFrame.Size.X.Offset, WindowTopBar.Size.Y.Offset), 0.25):Play()
    end

    for _, r in WindowResizers do r.Visible = self.Minimized end

    self.Minimized    = not self.Minimized
    MinimizeDebounce  = tick() + 0.5
    return true
end

function WindowMeta:Minimize()
    MainWindowFrame.Visible = not MainWindowFrame.Visible
end

function WindowMeta:GetTitle()
    return self.TITLE_LABEL.Text
end

function WindowMeta:GetSubTitle()
    return self.SUBTITLE_LABEL.Text
end

function WindowMeta:SetTitle(title)
    assert(type(title) == "string" and #title > 0,
        "\"Window.SetTitle\": 'string' expected with length > 0")
    self.TITLE_LABEL.Text = title
end

function WindowMeta:SetSubTitle(subtitle)
    assert(type(subtitle) == "string" and #subtitle > 0,
        "\"Window.SetSubTitle\": 'string' expected with length > 0")
    self.SUBTITLE_LABEL.Text = subtitle
end

function WindowMeta:SelectTab(tabOrIndex)
    local tab = type(tabOrIndex) == "number" and Library.Tabs[tabOrIndex]
    if type(tabOrIndex) == "table" and tabOrIndex.IS_A_TAB then tab = tabOrIndex end
    if tab then
        tab:Select()
    else
        assert(type(tabOrIndex) == "number", "\"Window.SelectTab\": number or tab expected")
        assert(tabOrIndex > 0 and tabOrIndex == math.floor(tabOrIndex),
            ("\"Window.SelectTab\": invalid tab index: %s"):format(tabOrIndex))
        -- será selecionada quando for criada
        WindowMeta.SelectedTab = tabOrIndex
    end
end

function WindowMeta:SetNotifyDefaultIcon(icon)
    assert(type(icon) == "string",
        ("\"Window.SetNotifyDefaultIcon\": 'string' expected, got %s"):format(typeof(icon)))
    self._defaultNotifyIcon = icon
end

function WindowMeta:Notify(config)
    if type(config) ~= "table" then config = {} end

    local title    = config[1] or config.Name    or config.Title
    local content  = config[2] or config.Content
    local icon     = config[3] or config.Icon    or config.Image
    local duration = config[4] or config.Duration or config.Time

    -- Herda de grupo de notificação
    if self.NOTIFICATION_GROUP then
        title    = title    or self.Title
        content  = content  or self.Content
        icon     = icon     or self.Icon
        duration = duration or self.Duration
    end

    assert(type(title)   == "string", ("\"Window.Notify.Title\": 'string' expected, got %s"):format(typeof(title)))
    assert(type(content) == "string", ("\"Window.Notify.Content\": 'string' expected, got %s"):format(typeof(content)))
    assert(icon == nil or type(icon) == "string", ("\"Window.Notify.Icon\": 'nil' or 'string' expected, got %s"):format(typeof(icon)))

    if duration ~= nil and type(duration) ~= "number" then
        error(("\"Window.Notify.Time\": 'number' or 'nil' expected, got %s"):format(typeof(duration)), 2)
    end
    duration = duration or 5

    -- Frame da notificação
    local notifWrapper = NewInstance("Frame", "Notification", NotificationArea, {
        Size          = UDim2.new(0.85, 0, 0, 60),
        BackgroundTransparency = 1,
        AutomaticSize = Enum.AutomaticSize.Y,
    })

    local notifCard = NewInstance("TextButton", notifWrapper, {
        AutomaticSize = Enum.AutomaticSize.Y,
        Size          = UDim2.fromScale(1, 1),
        AutoButtonColor = false,
        Text          = "",
        ThemeTag      = { BackgroundTransparency = "BackgroundTransparency" },
        Elements      = {
            Corner   = UDim.new(0, 9),
            Gradient = { Rotation = 45, ThemeTag = { Color = "Colors.Background" } },
        },
    })

    local cardScale = NewInstance("UIScale", notifWrapper)

    local holder = NewInstance("Frame", "Holder", notifCard, {
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        Size          = UDim2.fromScale(1, 1),
        Elements      = {
            ListLayout = {
                SortOrder         = Enum.SortOrder.LayoutOrder,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                Padding           = UDim.new(0, 4),
            },
            Padding = {
                PaddingBottom = UDim.new(0, 8), PaddingTop  = UDim.new(0, 8), PaddingLeft = UDim.new(0, 40),
            },
        },
    })

    local titleLabel = NewInstance("TextLabel", holder, {
        Size            = UDim2.new(1, 0, 0, 20),
        TextTruncate    = Enum.TextTruncate.AtEnd,
        TextXAlignment  = Enum.TextXAlignment.Left,
        TextYAlignment  = Enum.TextYAlignment.Bottom,
        BackgroundTransparency = 1,
        TextSize        = 14,
        ThemeTag        = { TextColor3 = "Colors.Text.Default", Font = "Font.Bold" },
    })

    local contentLabel = NewInstance("TextLabel", holder, {
        Size            = UDim2.new(1, 0, 0, 20),
        TextXAlignment  = Enum.TextXAlignment.Left,
        TextYAlignment  = Enum.TextYAlignment.Top,
        AutomaticSize   = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        TextWrapped     = true,
        TextSize        = 12,
        ThemeTag        = { TextColor3 = "Colors.Text.Dark", Font = "Font.Normal" },
    })

    local iconLabel = NewInstance("ImageLabel", notifCard, {
        Size        = UDim2.fromOffset(24, 24),
        Position    = UDim2.new(0, 8, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        ThemeTag    = { ImageColor3 = "Colors.Icons" },
    })

    local timerLabel = NewInstance("TextLabel", notifCard, {
        Size        = UDim2.new(0, 40, 0, 16),
        Position    = UDim2.new(1, -10, 0, 8),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        TextSize    = 10,
        ThemeTag    = { TextColor3 = "Colors.Text.Darker", Font = "Font.Normal" },
    })

    local isPaused = false
    local growTween  = Tween(cardScale, "Scale", 1.22, 0.35)
    local shrinkTween = Tween(cardScale, "Scale", 1.00, 0.35)

    local notifObj = setmetatable({
        TITLE_LABEL       = titleLabel,
        DESCRIPTION_LABEL = contentLabel,
        VISIBLE_ELEMENT   = notifWrapper,
        DESTROY_ELEMENT   = notifWrapper,
        NOTIFICATION      = notifCard,
        Kind              = "Notification",
        Closed            = false,
        Parent            = self,
    }, OptionMeta)

    function notifObj:Close()
        if self.Closed then return end
        self:Destroy()
        self.Closed = true
        local slide = Tween(notifCard, "Position", UDim2.fromScale(3, 0), 0.8)
        slide:Play()
        slide.Completed:Wait()
        notifWrapper:Destroy()
    end

    local function RunNotification()
        icon = Library:GetIconByName(icon or self._defaultNotifyIcon or "")
        iconLabel.Image = icon

        if not IsAssetId(icon) then
            iconLabel.Visible = false
            holder.UIPadding.PaddingLeft = UDim.new(0, 15)
        end

        notifCard.Position = UDim2.fromScale(3, 0)
        Tween(notifCard, "Position", UDim2.fromScale(0, 0), 0.35):Play()

        titleLabel.Text   = title
        contentLabel.Text = content

        local leaveSignal = notifCard.MouseLeave

        while duration > 0 do
            timerLabel.Text = FormatTime(duration)
            if isPaused then leaveSignal:Wait() end
            duration -= task.wait()
        end

        notifObj:Close()
    end

    Connect(notifCard.MouseButton1Down, function() growTween:Play() isPaused = true end)
    Connect(notifCard.MouseLeave,       function() shrinkTween:Play() isPaused = false end)

    task.defer(RunNotification, self)
    return notifObj
end

function WindowMeta:NewNotifyGroup(config)
    local title    = config[1] or config.Name    or config.Title
    local content  = config[2] or config.Content
    local icon     = config[3] or config.Icon    or config.Image
    local duration = config[4] or config.Duration or config.Time

    for k, v in { title = title, content = content, icon = icon } do
        if v ~= nil and type(v) ~= "string" then
            error(("\"Window.NewNotifyGroup.%s\": 'string' or 'nil' expected, got %s"):format(k, typeof(v)), 2)
        end
    end
    if duration ~= nil and type(duration) ~= "number" then
        error(("\"Window.NewNotifyGroup.Time\": 'number' or 'nil' expected, got %s"):format(typeof(duration)), 2)
    end

    return {
        NOTIFICATION_GROUP = true,
        Notify             = WindowMeta.Notify,
        Duration           = duration,
        Content            = content,
        Title              = title,
        Icon               = icon,
    }
end

function WindowMeta:Dialog(config)
    if self.Minimized then
        while not self:MinimizeButton() do task.wait() end
    end

    if ActiveDialog then ActiveDialog:Close(true) end

    local dlgTitle   = config.Title or config.Name
    local dlgContent = config.Content or config.Description
    local dlgOptions = config.Options

    assert(type(dlgTitle)   == "string", ("\"Window.Dialog.Title\": 'string' expected, got %s"):format(typeof(dlgTitle)))
    assert(type(dlgContent) == "string", ("\"Window.Dialog.Content\": 'string' expected, got %s"):format(typeof(dlgContent)))
    assert(type(dlgOptions) == "table" and #dlgOptions > 0, "\"Window.Dialog.Options\": table with 1+ options required")

    local template    = DialogOverlay.Template
    local descLabel   = template.Description
    local titleLabel  = template.Title
    local origSize    = template:GetAttribute("OriginalSize")
    local expandedSize = UDim2.new(origSize.X.Scale*1.2, origSize.X.Offset, origSize.Y.Scale*1.2, origSize.Y.Offset)

    template.Size = expandedSize
    DialogOverlay.Parent = MainWindowFrame
    descLabel.Text  = dlgContent
    titleLabel.Text = dlgTitle

    Tween(template, "Size", origSize, 0.3):Play()

    local dlg = DialogMeta.new(descLabel, titleLabel)
    dlg.NEW_SIZE  = expandedSize
    dlg.TEMPLATE  = template

    -- Limpa botões antigos
    for _, child in template.Options:GetChildren() do
        if child:IsA("GuiObject") then child:Destroy() end
    end

    for i = #dlgOptions, 1, -1 do
        dlg:NewOption(dlgOptions[i])
    end

    ActiveDialog = dlg
    return dlg
end

function WindowMeta:NewMinimizer(config)
    local kc = type(config) == "table" and (config[1] or config.KeyCode) or config
    if not IsValidKeyCode(kc) then
        error(("\"Window.NewMinimizer.KeyCode\": 'KeyCode' expected, got %s"):format(typeof(kc)), 2)
    end
    local minimizer = setmetatable({ KeyCode = kc }, MinimizerMeta)
    Connect(UserInputService.InputBegan, function(input)
        if input.KeyCode == minimizer.KeyCode then
            self:Minimize()
        end
    end)
    return minimizer
end

function WindowMeta:GetTabByTitle(title)
    assert(type(title) == "string",
        ("\"Window.GetTabByTitle\": 'string' expected, got %s"):format(typeof(title)))
    for i = 1, #Library.Tabs do
        if Library.Tabs[i].Title == title then return Library.Tabs[i] end
    end
end

function WindowMeta:SetFlag(name, value)
    assert(type(name) == "string",
        ("\"Window.SetFlag[1]\": 'string' expected, got %s"):format(typeof(name)))
    local flags = Library.Flags
    flags[name] = value
end

function WindowMeta:GetFlag(name)
    return Library.Flags[name]
end

function WindowMeta:DeleteFlags()
    return Library.Flags()
end

function WindowMeta:ReadFile(path)
    assert(type(path) == "string",
        ("\"Window.ReadFile[1]\": 'string' expected, got %s"):format(typeof(path)))
    path = ("%s/%s"):format(self.ScriptFolder, path)
    if readFile ~= nil and (isfile == nil or not isfile(path)) then
        return readFile(path)
    end
end

function WindowMeta:WriteFile(path, content)
    assert(type(path) == "string",
        ("\"Window.WriteFile[1]\": 'string' expected, got %s"):format(typeof(path)))
    path = ("%s/%s"):format(self.ScriptFolder, path)
    if content ~= nil and type(content) ~= "string" then
        error(("\"Window.WriteFile[2]\": 'string' or 'nil' expected, got %s"):format(typeof(content)), 2)
    end
    if content == nil then
        if deleteFile ~= nil then deleteFile(path) return true end
    else
        if writeFile ~= nil then SafeWrite(path, content) return true end
    end
    return false
end

-- Aliases
WindowMeta.NewNotificationGroup = WindowMeta.NewNotifyGroup
WindowMeta.SetDefaultNotifyIcon = WindowMeta.SetNotifyDefaultIcon
WindowMeta.GetTabByName         = WindowMeta.GetTabByTitle
WindowMeta.Notificafion         = WindowMeta.Notify

-- ─────────────────────────────────────────────
-- MakeTab — cria uma aba na janela
-- ─────────────────────────────────────────────

function WindowMeta:MakeTab(config)
    local title = config[1] or config.Name or config.Title
    local icon  = config[2] or config.Icon or config.Image

    assert(type(title) == "string",
        ("\"Tab.Title\": 'string' expected, got %s"):format(typeof(title)))
    assert(icon == nil or type(icon) == "string",
        ("\"Tab.Icon\": 'string' expected, got %s"):format(typeof(icon)))

    local windowElements = self:GetElements()
    local tabsContainer  = windowElements.TabsContainer
    local contHolder     = windowElements.ContainerHolder

    local tab = setmetatable({
        Selected = self.SelectedTab == #Library.Tabs + 1,
        Icon     = Library:GetIconByName(icon),
        Title    = title,
        Parent   = self,
        IS_A_TAB = true,
    }, TabMeta)

    local tabNode = RootThemeNode:New()
    Library.TabNodes = Library.TabNodes or {}
    Library.TabData  = Library.TabData  or {}
    Library.TabNodes[tab] = tabNode

    local button, container, indicator, iconImg = CreateTabButton(self, tab, tabsContainer)

    -- Tweens de seleção
    local ANIM_SPEED  = 0.45

    local selectTweens = {
        Tween(indicator, "BackgroundTransparency", 0,                         ANIM_SPEED),
        Tween(indicator, "Size",                   UDim2.fromOffset(4, 13),   ANIM_SPEED),
    }

    local unselectTweens = {
        Tween(indicator, "BackgroundTransparency", 1,                        ANIM_SPEED),
        Tween(indicator, "Size",                   UDim2.fromOffset(4, 4),   ANIM_SPEED),
    }

    local expandTween = Tween(container, "Size", UDim2.new(1, 0, 1, 0), 0.3)
    local COLLAPSED_SIZE = UDim2.new(1, 0, 1, 150)

    local function PlayAll(list)
        for i = 1, #list do list[i]:Play() end
    end

    local function SelectTab()
        PlayAll(selectTweens)
        tab.Selected = true
        tabNode:SetRendering(true)
        tabNode:Update()
        container.Parent = contHolder
        container.Size   = COLLAPSED_SIZE
        expandTween:Play()
    end

    local function UnselectTab()
        PlayAll(unselectTweens)
        tab.Selected     = false
        container.Parent = nil
        tabNode:SetRendering(false)
    end

    TabActions[tab] = table.freeze({ Select = SelectTab, Unselect = UnselectTab })

    Library.TabData[tab] = table.freeze({
        SelectTabButton = button,
        Container       = container,
    })

    table.insert(Library.Tabs, tab)

    Connect(button.Activated, function() tab:Select() end)

    if tab.Selected then tab:Select() end

    return tab
end

-- ─────────────────────────────────────────────
-- ÍCONES DA BIBLIOTECA
-- ─────────────────────────────────────────────

function Library:GetIconByName(name)
    if name == nil then return end
    if IsAssetId(name) or #name == 0 then return name end

    local norm = NormalizeSearch(name)
    if self.Icons[norm] then return "rbxassetid://" .. self.Icons[norm] end

    for key, id in self.Icons do
        if key:find(norm, 1, true) then
            return "rbxassetid://" .. id
        end
    end
end

function Library:IsValidTheme(name)
    assert(type(name) == "string",
        ("\"Library.IsValidTheme\": 'string' expected, got %s"):format(typeof(name)))
    return self.Themes[name] ~= nil
end

function Library:GetThemes()
    local list = {}
    for name in self.Themes do list[#list+1] = name end
    return list
end

function Library:GetTheme(name)
    if name == nil then return self.CurrentTheme end
    assert(type(name) == "string",
        ("\"Library.GetTheme\": 'string' expected, got %s"):format(typeof(name)))
    local theme = self.Themes[name]
    assert(theme, ("\"Library.GetTheme\": theme not found: %s"):format(name))
    return theme
end

-- ─────────────────────────────────────────────
-- SetTheme — muda o tema em tempo real
-- ─────────────────────────────────────────────

function Library:SetTheme(name)
    assert(type(name) == "string",
        ("\"Library.SetTheme\": 'string' expected, got %s"):format(typeof(name)))
    local theme = self.Themes[name]
    assert(theme, ("\"Library.SetTheme\": theme not found: %s"):format(name))

    self.CurrentTheme = theme

    if self.WindowSettings then
        self.WindowSettings.SelectedTheme = theme.Name
    end

    -- Atualiza todos os objetos registrados
    RootThemeNode:Update()
end

-- ─────────────────────────────────────────────
-- AddTheme — registra um tema customizado em tempo real
-- ─────────────────────────────────────────────
--[[
    Uso:
    Library:AddTheme("MeuTema", {
        Colors = {
            Background = ColorSequence.new{ ... },
            Primary    = Color3.fromRGB(255, 100, 0),
            ...
        },
        Icons = { ... },    -- opcional (herda do Darker se omitido)
        Font  = { ... },    -- opcional
        BackgroundTransparency = 0.03,
    })
]]

function Library:AddTheme(name, data)
    assert(type(name) == "string",
        ("\"Library.AddTheme[1]\": 'string' expected, got %s"):format(typeof(name)))
    assert(type(data) == "table",
        ("\"Library.AddTheme[2]\": 'table' expected, got %s"):format(typeof(data)))

    -- Herda ícones e fontes do tema Darker se não fornecidos
    local base = Themes.Darker
    data.Icons = data.Icons or base.Icons
    data.Font  = data.Font  or base.Font
    data.BackgroundTransparency = data.BackgroundTransparency or base.BackgroundTransparency
    data.Name  = name

    table.freeze(data)
    self.Themes[name] = data
end

function Library:SetUIScale(scale)
    local minS = LIMITS.MIN_SCALE
    local maxS = LIMITS.MAX_SCALE
    assert(type(scale) == "number",
        ("\"Library.SetUIScale\": 'number' expected, got %s"):format(typeof(scale)))
    assert(scale >= minS and scale <= maxS,
        ("\"Library.SetUIScale\": Min=%s, Max=%s"):format(minS, maxS))
    UIScaleObject.Scale = ScaleFromViewport(scale)
end

function Library:GetMaxScale() return LIMITS.MAX_SCALE end
function Library:GetMinScale() return LIMITS.MIN_SCALE end

function Library:GetCurrentTheme()
    assert(self.LOADED_UI_LIBRARY, "UI not loaded yet")
    return self.CurrentTheme
end

function Library:Destroy()
    for _, conn in self.Connections do conn:Disconnect() end
    if ScreenGui and ScreenGui:GetAttribute("UID") == self.SCREENGUI_UID then
        pcall(ScreenGui.Destroy, ScreenGui)
    end
end

-- ─────────────────────────────────────────────
-- MakeWindow — cria a janela principal
-- ─────────────────────────────────────────────

function Library:MakeWindow(config)
    if self.LOADED_UI_LIBRARY then
        return error("You can only create 1 Window", 2)
    end

    -- Atributo único para invalidar instâncias duplicadas
    local uid = math.random()
    ScreenGui:SetAttribute("UID", uid)
    self.SCREENGUI_UID = uid
    ScreenGui:ClearAllChildren()

    UIScaleObject = NewInstance("UIScale", "Scale", ScreenGui, {
        Scale = ScaleFromViewport(1),
    })

    -- Configurações da janela
    local wConfig = {
        Title        = config[1] or config.Name       or config.Title,
        SubTitle     = config[2] or config.SubName    or config.SubTitle,
        ScriptFolder = config[3] or config.ScriptFolder or config.FolderName,
    }

    assert(type(wConfig.Title)    == "string", ("\"Window.Title\": 'string' expected, got %s"):format(typeof(wConfig.Title)))
    assert(type(wConfig.SubTitle) == "string", ("\"Window.SubTitle\": 'string' expected, got %s"):format(typeof(wConfig.SubTitle)))

    if wConfig.ScriptFolder ~= nil then
        assert(type(wConfig.ScriptFolder) == "string",
            ("\"Window.ScriptFolder\": 'string' or nil expected, got %s"):format(typeof(wConfig.ScriptFolder)))
        assert(not wConfig.ScriptFolder:find("/"),
            "\"Window.ScriptFolder\" must not contain '/'")
    end

    -- ── Configurações persistentes ──
    local settings = (function()
        local folder = wConfig.ScriptFolder
        local data   = {}

        local ok, loaded = pcall(function()
            return folder and HttpService:JSONDecode(readFile(("%s/LibrarySettings.json"):format(folder)))
        end)
        if type(loaded) == "table" then data = loaded end

        local dirty = false
        local function Save()
            dirty = false
            pcall(function()
                SafeWrite(("%s/LibrarySettings.json"):format(folder), HttpService:JSONEncode(data))
            end)
        end

        return setmetatable({}, {
            __newindex = function(_, k, v)
                rawset(data, k, v)
                if folder and not dirty then
                    dirty = true
                    task.delay(0.5, Save)
                end
            end,
            __index = data,
        })
    end)()

    -- ── Flags persistentes ──
    local flags = (function()
        local folder = wConfig.ScriptFolder
        local data   = {}

        local ok, loaded = pcall(function()
            return folder and HttpService:JSONDecode(readFile(("%s/ScriptFlags.json"):format(folder)))
        end)
        if type(loaded) == "table" then data = loaded end

        local dirty = false
        local function Save()
            dirty = false
            pcall(function()
                SafeWrite(("%s/ScriptFlags.json"):format(folder), HttpService:JSONEncode(data))
            end)
        end

        local function ClearAll()
            table.clear(data)
            pcall(function()
                return folder and deleteFile(("%s/ScriptFlags.json"):format(folder))
            end)
        end

        return setmetatable({}, {
            __newindex = function(_, k, v)
                rawset(data, k, v)
                if folder and not dirty then
                    dirty = true
                    task.delay(0.5, Save)
                end
            end,
            __call  = ClearAll,
            __index = data,
        })
    end)()

    self.ThemesObjects  = RootThemeNode
    self.WindowSettings = settings
    self.Flags          = flags

    -- ── Carrega ícones ──
    self.Icons = (function()
        local folder = wConfig.ScriptFolder
        local ok, result = pcall(function()
            return loadstring(readFile(("%s/Icons.lua"):format(folder)))()
        end)
        if ok and type(result) == "table" then return result end

        local baseUrl    = ("https://raw.githubusercontent.com/%s"):format(self.Information.GitHubOwner)
        local iconsUrl   = ("%s/Library/refs/heads/main/redz-V5-remake/Utils/Icons.lua"):format(baseUrl)
        local raw

        local dlOk, dlResult = pcall(function()
            raw = game:HttpGet(iconsUrl)
            return loadstring(raw)()
        end)

        if dlOk and type(dlResult) == "table" then
            if type(raw) == "string" and folder then
                pcall(function() SafeWrite(("%s/Icons.lua"):format(folder), raw) end)
            end
            return dlResult
        end

        return {}
    end)()

    -- ── Aplica tema salvo ou padrão ──
    if type(settings.SelectedTheme) == "string" and self:IsValidTheme(settings.SelectedTheme) then
        self:SetTheme(settings.SelectedTheme)
    else
        self:SetTheme(self.Default.Theme)
    end

    self.LOADED_UI_LIBRARY = true

    -- ── Tamanho inicial ──
    local initialSize = self.Default.UISize
    if settings and type(settings.UISize) == "table" then
        local w, h = table.unpack(settings.UISize)
        if type(w) == "number" and type(h) == "number" then
            w = math.clamp(w, 430, 1000)
            h = math.clamp(h, 200, 500)
            initialSize = UDim2.fromOffset(w, h)
        end
    end

    -- ── Frame principal da janela ──
    local windowFrame = NewInstance("Frame", "Window", ScreenGui, {
        Position  = UDim2.new(0.5, -initialSize.X.Offset/2, 0.5, -initialSize.Y.Offset/2),
        Active    = true,
        Size      = initialSize,
        ThemeTag  = { BackgroundTransparency = "BackgroundTransparency" },
        Elements  = {
            Corner   = UDim.new(0, 8),
            Gradient = { Rotation = 45, ThemeTag = { Color = "Colors.Background" } },
        },
    })

    MainWindowFrame = windowFrame

    -- ── Controles de tamanho ──
    local resizerWindow = NewInstance("Frame", "ControlWindowSize", windowFrame, {
        Size       = UDim2.new(0, 35, 0, 35),
        Position   = initialSize,
        AnchorPoint = Vector2.new(0.8, 0.8),
        BackgroundTransparency = 1,
        Active     = true,
        Elements   = { Corner = UDim.new(0, 6) },
        ThemeTag   = { BackgroundColor3 = "Colors.OnPrimary" },
    })

    Connect(windowFrame.Destroying, function() self:Destroy() end)
    Connect(ScreenGui:GetAttributeChangedSignal("UID"), function()
        self:Destroy()
        windowFrame:Destroy()
    end)

    Builder.Draggable(windowFrame, UIScaleObject, 0.5)

    -- ── Componentes e containers ──
    local components = NewInstance("Folder", "Components", windowFrame)
    DropdownContainer = NewInstance("Folder", "Dropdowns", ScreenGui)

    -- ── TopBar ──
    local topBar = NewInstance("Frame", "TopBar", components, {
        Size = UDim2.new(1, 0, 0, 28),
        BackgroundTransparency = 1,
    })

    -- ── Título e subtítulo ──
    local titleLabel = NewInstance("TextLabel", "Title", topBar, {
        TextXAlignment = Enum.TextXAlignment.Left,
        AutomaticSize  = Enum.AutomaticSize.XY,
        Position       = UDim2.new(0, 15, 0.5, 0),
        AnchorPoint    = Vector2.new(0, 0.5),
        Text           = wConfig.Title,
        TextSize       = 12,
        BackgroundTransparency = 1,
        ThemeTag       = { TextColor3 = "Colors.Text.Default", Font = "Font.Bold" },
        Childs = {
            NewInstance("TextLabel", "SubTitle", {
                Size           = UDim2.fromScale(0, 1),
                AutomaticSize  = "X",
                AnchorPoint    = Vector2.new(0, 1),
                Position       = UDim2.new(1, 5, 0.9, 0),
                Text           = wConfig.SubTitle,
                BackgroundTransparency = 1,
                TextXAlignment = "Left",
                TextYAlignment = "Bottom",
                TextSize       = 8,
                ThemeTag       = { TextColor3 = "Colors.Text.Dark", Font = "Font.Normal" },
            }),
        },
    })

    -- ── Botões da TopBar (fechar / minimizar) ──
    local buttonsFolder = NewInstance("Folder", "Buttons", topBar)

    local closeBtn = NewInstance("ImageButton", "Close", buttonsFolder, {
        Size             = UDim2.new(0, 18, 0, 18),
        Position         = UDim2.new(1, -10, 0.5, 0),
        AnchorPoint      = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        BackgroundColor3 = Color3.fromRGB(255, 35, 35),
        AutoButtonColor  = false,
        ThemeTag         = { Image = "Icons.Close" },
        Elements         = { Corner = UDim.new(0.2, 0) },
    })

    local minimizeBtn = NewInstance("ImageButton", "Minimize", buttonsFolder, {
        Size             = UDim2.new(0, 18, 0, 18),
        Position         = UDim2.new(1, -35, 0.5, 0),
        AnchorPoint      = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        BackgroundColor3 = Color3.new(1, 1, 1),
        Image            = "rbxassetid://10734896206",
        AutoButtonColor  = false,
        Elements         = { Corner = UDim.new(0.2, 0) },
    })

    MinimizeButton_Instance = minimizeBtn
    WindowTopBar            = topBar

    -- ── Tabs e containers ──
    local tabsScroll, containersFrame = CreateTabsAndContainers(settings, topBar)
    tabsScroll.Parent      = components
    containersFrame.Parent = components

    local windowElements = table.freeze({
        ContainerHolder = containersFrame,
        TabsContainer   = tabsScroll,
        Components      = components,
        MainFrame       = windowFrame,
    })

    -- ── Redimensionadores ──
    local tabsResizer = NewInstance("Frame", "ControlTabsSize", windowFrame, {
        Size        = UDim2.new(0, 16, 0.75, -30),
        Position    = UDim2.new(0, tabsScroll.Size.X.Offset, 0.5, 15),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Active      = true,
        Elements    = { Corner = UDim.new(0, 6) },
        ThemeTag    = { BackgroundColor3 = "Colors.OnPrimary" },
    })

    WindowResizers = { resizerWindow, tabsResizer }

    -- Anima indicador de resize
    local function FlashResizer(frame)
        local attr = "Resizing"
        local prev = frame:GetAttribute(attr)
        frame:SetAttribute(attr, tick())
        if prev and (tick() - prev) <= 0.1 then return end
        Tween(frame, "BackgroundTransparency", 0.5, 0.3):Play()
        while tick() - frame:GetAttribute(attr) <= 0.1 do task.wait() end
        Tween(frame, "BackgroundTransparency", 1,   0.4):Play()
    end

    Connect(resizerWindow:GetPropertyChangedSignal("Position"), function()
        FlashResizer(resizerWindow)
        local pos = resizerWindow.Position
        windowFrame.Size = pos
        settings.UISize  = { pos.X.Offset, pos.Y.Offset }
    end)

    Connect(tabsResizer:GetPropertyChangedSignal("Position"), function()
        FlashResizer(tabsResizer)
        local pos = tabsResizer.Position
        tabsScroll.Size     = UDim2.new(0, pos.X.Offset, 1, -topBar.Size.Y.Offset)
        containersFrame.Size = UDim2.new(1, -tabsScroll.Size.X.Offset, 1, -topBar.Size.Y.Offset)
        settings.TabSize    = pos.X.Offset
    end)

    Builder.Draggable(resizerWindow, UIScaleObject, 0.68, function(_, x, _, y)
        return UDim2.fromOffset(math.clamp(x, 430, 1000), math.clamp(y, 200, 500))
    end)

    Builder.Draggable(tabsResizer, UIScaleObject, 0.68, function(_, x)
        return UDim2.new(0, math.clamp(x, 135, 210), 0.5, 15)
    end)

    -- ── Dialog Overlay (fundo e template) ──
    DialogOverlay = NewInstance("TextButton", "OutBox", {
        Size              = UDim2.fromScale(1, 1),
        BackgroundTransparency = 0.3,
        AutoButtonColor   = false,
        Text              = "",
        ThemeTag          = { BackgroundColor3 = "Colors.Buttons.Default" },
        Childs = {
            windowFrame:FindFirstChildOfClass("UICorner"):Clone(),
            NewInstance("Frame", "Template", {
                Size        = UDim2.new(0.35, 60, 0.20, 80),
                Position    = UDim2.fromScale(0.5, 0.5),
                AnchorPoint = Vector2.new(0.5, 0.5),
                Active      = true,
                Elements    = {
                    Corner   = UDim.new(0, 6),
                    Gradient = { Rotation = 45, ThemeTag = { Color = "Colors.Background" } },
                },
                Childs = {
                    NewInstance("TextLabel", "Title", {
                        Size           = UDim2.new(1, -20, 0, 20),
                        TextTruncate   = Enum.TextTruncate.AtEnd,
                        TextSize       = 15,
                        Position       = UDim2.new(0.5, 0, 0, 28),
                        AnchorPoint    = Vector2.new(0.5, 0),
                        BackgroundTransparency = 1,
                        ThemeTag       = { Font = "Font.ExtraBold", TextColor3 = "Colors.Text.Default" },
                    }),
                    NewInstance("TextLabel", "Description", {
                        Position       = UDim2.new(0.5, 0, 0, 46),
                        Size           = UDim2.new(1, -20, 0, 0),
                        AnchorPoint    = Vector2.new(0.5, 0),
                        TextWrapped    = true,
                        TextSize       = 11,
                        AutomaticSize  = Enum.AutomaticSize.Y,
                        BackgroundTransparency = 1,
                        ThemeTag       = { TextColor3 = "Colors.Text.Darker", Font = "Font.Medium" },
                    }),
                    NewInstance("Frame", "Options", {
                        Size       = UDim2.new(1, -20, 0.15, 18),
                        Position   = UDim2.new(0.5, 0, 1, -10),
                        AnchorPoint = Vector2.new(0.5, 1),
                        BackgroundTransparency = 1,
                        Elements   = {
                            Padding = {
                                PaddingLeft = UDim.new(0,10), PaddingRight  = UDim.new(0,10),
                                PaddingBottom = UDim.new(0,30), PaddingTop  = UDim.new(0,30),
                            },
                            ListLayout = {
                                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                                VerticalAlignment   = Enum.VerticalAlignment.Center,
                                FillDirection       = Enum.FillDirection.Horizontal,
                            },
                        },
                    }),
                },
            }),
        },
    })

    DialogOverlay.Template:SetAttribute("OriginalSize", DialogOverlay.Template.Size)

    Connect(DialogOverlay.Activated, function()
        if ActiveDialog ~= nil and not ActiveDialog.Closing and not ActiveDialog.Closed then
            ActiveDialog:Close()
        end
    end)

    -- ── Área de notificações ──
    NotificationArea = NewInstance("Frame", ScreenGui, {
        Size     = UDim2.new(0, 280, 1, 0),
        Position = UDim2.fromScale(1, 0),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        Elements = {
            Padding = { PaddingBottom = UDim.new(0, 20) },
            ListLayout = {
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                VerticalAlignment   = Enum.VerticalAlignment.Bottom,
                SortOrder           = Enum.SortOrder.LayoutOrder,
                Padding             = UDim.new(0, 20),
            },
        },
    })

    -- ── Monta objeto da janela ──
    local window = setmetatable(wConfig, { __index = WindowMeta })

    function window:GetElements()
        return windowElements
    end

    window.SetUIScale      = function(_, scale) Library:SetUIScale(scale) end
    window.SUBTITLE_LABEL  = titleLabel.SubTitle
    window.TITLE_LABEL     = titleLabel
    window.SelectedTab     = 1
    window.Minimized       = false
    window.ScriptFolder    = wConfig.ScriptFolder

    -- ── Botões da TopBar ──
    Connect(minimizeBtn.MouseEnter, function() minimizeBtn.BackgroundTransparency = 0.65 end)
    Connect(minimizeBtn.MouseLeave, function() minimizeBtn.BackgroundTransparency = 1.00 end)
    Connect(closeBtn.MouseEnter,    function() closeBtn.BackgroundTransparency    = 0.65 end)
    Connect(closeBtn.MouseLeave,    function() closeBtn.BackgroundTransparency    = 1.00 end)

    Connect(minimizeBtn.Activated, function() window:MinimizeButton() end)

    Connect(closeBtn.Activated, function()
        window:Dialog({
            Title   = "Close Window?",
            Content = "Do you want to close the UI?",
            Options = {
                { Title = "Yes", Callback = function() Library:Destroy() end },
                { Title = "No"  },
            },
        })
    end)

    return window
end

-- ─────────────────────────────────────────────
-- EXPORTAÇÃO
-- ─────────────────────────────────────────────

return Library
