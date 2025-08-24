-- EXECUTA VOIDHUB AGORA
print("Testando VoidHub...")
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()
print("VoidHub executado!")

-- Prepara para executar O SCRIPT COMPLETO após próximo teleporte
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/B8KLOCAL/Apenas/refs/heads/main/TEST2.lua?token=GHSAT0AAAAAADIKW3CM7SFSDCZMGGKYYDYE2FLPCDQ"))()')
    print("✅ Script completo preparado com syn!")
elseif queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/B8KLOCAL/Apenas/refs/heads/main/TEST2.lua?token=GHSAT0AAAAAADIKW3CM7SFSDCZMGGKYYDYE2FLPCDQ"))()')
    print("✅ Script completo preparado com queue_on_teleport!")
else
    print("❌ Executor não suporta teleporte")
end

print("🔄 Sistema auto-recursivo iniciado!")
print("📝 A cada teleporte vai executar este script completo de novo")

-- ==========================================
-- EXPLICAÇÃO DO QUE MUDOU:
-- ==========================================

--[[
ANTES (seu código original):
- Executava VoidHub agora
- Preparava apenas VoidHub para próximo teleporte
- Resultado: Parava no 3º teleporte

AGORA (corrigido):
- Executa VoidHub agora
- Prepara o SCRIPT COMPLETO (ele mesmo) para próximo teleporte
- Resultado: Loop infinito

O QUE VAI ACONTECER:
1º teleporte: Executa script completo → VoidHub + prepara script completo
2º teleporte: Executa script completo → VoidHub + prepara script completo  
3º teleporte: Executa script completo → VoidHub + prepara script completo
... INFINITAMENTE

SUBSTITUA o conteúdo do seu TEST2.lua por ESTE código aqui de cima!
--]]
