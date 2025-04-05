-- Configuração do script
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")

-- Cria a interface
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local StatusLabel = Instance.new("TextLabel")

ScreenGui.Name = "AutoClickerGUI"
ScreenGui.Parent = player:WaitForChild("PlayerGui")

Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.8, 0, 0.7, 0)
Frame.Size = UDim2.new(0, 150, 0, 100)

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = Frame
ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleButton.Size = UDim2.new(0.8, 0, 0.4, 0)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = "ATIVAR AUTO-CLICK"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 14

StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = Frame
StatusLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
StatusLabel.BorderSizePixel = 0
StatusLabel.Position = UDim2.new(0.1, 0, 0.6, 0)
StatusLabel.Size = UDim2.new(0.8, 0, 0.3, 0)
StatusLabel.Font = Enum.Font.SourceSans
StatusLabel.Text = "Status: Desativado"
StatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
StatusLabel.TextSize = 14

-- Variáveis do script
local autoClickEnabled = false
local clickConnection = nil
local targetButton = player.PlayerGui:WaitForChild("UI"):WaitForChild("Bottom"):WaitForChild("ClickButton")

-- Função para simular cliques usando VirtualInputManager
local function performClick()
    if not autoClickEnabled then return end
    
    -- Obtém a posição e tamanho do botão na tela
    local buttonAbsPos = targetButton.AbsolutePosition
    local buttonSize = targetButton.AbsoluteSize
    
    -- Calcula o centro do botão
    local centerX = buttonAbsPos.X + buttonSize.X / 2
    local centerY = buttonAbsPos.Y + buttonSize.Y / 2
    
    -- Simula o clique do mouse
    VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, true, game, 1)
    task.wait(0.05) -- Pequena pausa entre pressionar e soltar
    VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, false, game, 1)
    
    -- Agenda o próximo click se ainda estiver ativado
    if autoClickEnabled then
        clickConnection = task.delay(0.1, performClick) -- Intervalo de 0.1 segundos
    end
end

-- Função para alternar o auto-click
local function toggleAutoClick()
    autoClickEnabled = not autoClickEnabled
    
    if autoClickEnabled then
        ToggleButton.Text = "DESATIVAR AUTO-CLICK"
        StatusLabel.Text = "Status: Ativado"
        StatusLabel.TextColor3 = Color3.fromRGB(50, 255, 50)
        performClick()
    else
        ToggleButton.Text = "ATIVAR AUTO-CLICK"
        StatusLabel.Text = "Status: Desativado"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
        if clickConnection then
            task.cancel(clickConnection)
            clickConnection = nil
        end
    end
end

-- Configura os eventos
ToggleButton.MouseButton1Click:Connect(toggleAutoClick)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.M and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
        if autoClickEnabled then
            toggleAutoClick()
        end
    end
end)

-- Verifica se o botão alvo existe
if not targetButton then
    StatusLabel.Text = "Botão não encontrado"
    ToggleButton.Visible = false
end