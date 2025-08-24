-- EXECUTA VOIDHUB AGORA
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()

-- CÓDIGO COMPLETO QUE VAI EXECUTAR APÓS TELEPORTE
local scriptCompleto = [[
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
]]

-- PREPARA ESSE SCRIPT ESPECÍFICO PARA PRÓXIMO TELEPORTE
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport(scriptCompleto)
elseif queue_on_teleport then
    queue_on_teleport(scriptCompleto)
end

-- ==========================================
-- VERSÃO COM URL REAL (MAIS SIMPLES):
-- ==========================================

--[[
VERSÃO MAIS SIMPLES - cole este código em um arquivo no GitHub:

-- EXECUTA VOIDHUB AGORA
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()

-- URL DO PRÓPRIO SCRIPT (coloque a URL real aqui)
local meuScript = "https://raw.githubusercontent.com/B8KLOCAL/Apenas/refs/heads/main/SEU_ARQUIVO.lua"

-- PREPARA O SCRIPT COMPLETO PARA PRÓXIMO TELEPORTE
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport('loadstring(game:HttpGet("' .. meuScript .. '))()')
elseif queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("' .. meuScript .. '))()')
end

Use a versão simples - é mais confiável!
--]]

