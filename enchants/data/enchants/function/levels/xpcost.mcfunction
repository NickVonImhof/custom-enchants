##CHECK IF RATIONAL XP ACCUMULATED ENOUGH TO CHARGE XP


#add
scoreboard players operation @s r_xp += @s r_cost
execute if entity @s[scores={r_xp=100..}] run function enchants:levels/calcremainder

scoreboard players reset @s r_cost
