-- Script de Auto-Execução do VoidHub
local VoidHubURL = "https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"

print("🎯 Iniciando Auto-Execução do VoidHub...")

-- Função para executar o VoidHub
local function executarVoidHub()
    local sucesso, erro = pcall(function()
        loadstring(game:HttpGet(VoidHubURL, true))()
    end)
    
    if sucesso then
        print("✅ VoidHub executado com sucesso!")
    else
        print("❌ Erro ao executar VoidHub: " .. tostring(erro))
    end
end

-- Executar VoidHub agora
executarVoidHub()

-- Preparar para executar após teleporte
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport('loadstring(game:HttpGet("' .. VoidHubURL .. '", true))()')
    print("✅ Configurado para executar após teleporte (syn)")
elseif queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("' .. VoidHubURL .. '", true))()')
    print("✅ Configurado para executar após teleporte (queue_on_teleport)")
else
    print("⚠️  Não foi possível configurar auto-reexecução")
    print("⚠️  Seu exploit pode não suportar queue_on_teleport")
end

print("✨ Script concluído! O VoidHub será executado automaticamente após teleportes.")
