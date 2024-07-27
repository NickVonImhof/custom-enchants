
execute if entity @s[scores={current_xp = 0}] run damage @s 2 magic by @s

scoreboard players set @s r_cost 40
function enchants:levels/xpcost