function enchants:boots/mistwalker/xpcost

scoreboard players remove @s[scores={noxptimer=1..}] noxptimer 1

#have to use unless bc doesnt by default start with noxptimer
execute if entity @s[scores={current_xp=..0}] unless entity @s[scores={noxptimer=1..}] run tag @s add leavespec
execute if entity @s[tag=leavespec] run function enchants:boots/mistwalker/deactivate