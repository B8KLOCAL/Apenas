local script1URL = "https://raw.githubusercontent.com/seuusuario/repositorio/refs/heads/main/script1.lua"
local script2URL = "https://raw.githubusercontent.com/B8KLOCAL/Apenas/refs/heads/main/Test.lua"

print("🚀 Executando Script 1...")

-- Executar VoidHub primeiro
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua", true))()

-- Preparar Script 2 para o próximo teleporte
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport('loadstring(game:HttpGet("' .. script2URL .. '", true))()')
    print("✅ Script 2 preparado para próximo teleporte!")
elseif queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("' .. script2URL .. '", true))()')
    print("✅ Script 2 preparado para próximo teleporte!")
else
    print("❌ queue_on_teleport não disponível")
end

print("🔄 Ciclo iniciado: 1 → 2 → 1 → 2 → ...")

