-- Luny's Library | Custom Cinza Stealth by LunyThegoatx (para Kaio) - Janeiro 2026

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Library/refs/heads/main/V5/Source.lua"))()

-- Tema Cinza puro (medium gray clean, discreto e stealth)
redzlib.Themes.Cinza = {
    ["Color Hub 1"] = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(80, 80, 80)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(100, 100, 100)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(80, 80, 80))
    }),
    ["Color Hub 2"] = Color3.fromRGB(90, 90, 90),        -- Fundo principal
    ["Color Stroke"] = Color3.fromRGB(120, 120, 120),    -- Bordas sutis
    ["Color Theme"] = Color3.fromRGB(170, 170, 170),     -- Accent / highlights
    ["Color Text"] = Color3.fromRGB(235, 235, 235),      -- Texto principal claro
    ["Color Dark Text"] = Color3.fromRGB(190, 190, 190)  -- Texto secundário
}

-- Força tamanho exato 400x280 + tema Cinza (salva no .json)
redzlib.Save.UISize = {400, 280}
redzlib.Save.Theme = "Cinza"

-- Cria a janela com título e subtítulo custom
local Window = redzlib:MakeWindow({
    Name = "Luny's Library",
    SubTitle = "by LunyThegoatx",
    SaveFolder = "LunyLibrary"
})

-- Placeholder de "notify" usando Dialog (já que redzlib não tem Notify nativo)
redzlib:Dialog({
    Title = "Carregado!",
    Text = "Luny's Library by LunyThegoatx - Cinza Stealth 400x280 🔥",
    Buttons = {
        { Text = "OK", Callback = function() end }
    }
})

-- Exemplo rápido de tab + botão de teste (pode adicionar mais depois)
local Tab = Window:MakeTab("Teste Kaio")
Tab:AddButton({
    Name = "Clique aqui (Kaio test)",
    Callback = function()
        print("Oi do Kaio! Library funcionando 🍪")
        redzlib:Dialog({Title = "Sucesso", Text = "Botão clicado!"})
    end
})
