
execute if entity @s[scores={current_xp=0}] run effect clear @s resistance

scoreboard players set @s r_cost 400
function enchants:levels/xpcost

execute if entity @s[scores={current_xp=0}] run effect give @s resistance infinite 4 false