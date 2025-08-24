-- TESTE BÁSICO PRIMEIRO
print("Testando VoidHub...")
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()
print("VoidHub executado!")

-- Prepara para próximo teleporte
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()
        if syn and syn.queue_on_teleport then
            syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()')
        elseif queue_on_teleport then
            queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()')
        end
    ]])
    print("Preparado!")
elseif queue_on_teleport then
    queue_on_teleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()
        if syn and syn.queue_on_teleport then
            syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()')
        elseif queue_on_teleport then
            queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua"))()')
        end
    ]])
    print("Preparado!")
else
    print("Executor não suporta teleporte")
end
