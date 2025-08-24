-- EXECUTA VOIDHUB AGORA
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()

-- URL DO SCRIPT COMPLETO (substitua pela URL onde você salvar este código)
local meuScript = "https://raw.githubusercontent.com/SEU_USUARIO/SEU_REPO/main/NOME_DO_ARQUIVO.lua"

-- PREPARA O SCRIPT COMPLETO PARA PRÓXIMO TELEPORTE
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport('loadstring(game:HttpGet("' .. meuScript .. '))()')
elseif queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("' .. meuScript .. '))()')
end

-- ==========================================
-- EXEMPLO COM SUA URL DO GITHUB:
-- ==========================================

--[[
Se você salvar este código em um arquivo chamado "loop.lua", ficaria assim:

-- EXECUTA VOIDHUB AGORA
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()

-- URL DO SCRIPT COMPLETO
local meuScript = "https://raw.githubusercontent.com/B8KLOCAL/Apenas/refs/heads/main/loop.lua"

-- PREPARA O SCRIPT COMPLETO PARA PRÓXIMO TELEPORTE
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport('loadstring(game:HttpGet("' .. meuScript .. '))()')
elseif queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("' .. meuScript .. '))()')
end
--]]
