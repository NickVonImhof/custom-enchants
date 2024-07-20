particle witch ~ ~1 ~ .3 .5 .3 .04 40
execute if entity @s[scores={teledistance=8..}] run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1

execute if entity @s[scores={teledistance=1..}] store result storage minecraft:store teledistance int 1 run scoreboard players get @s teledistance
execute if entity @s[scores={teledistance=1..}] anchored eyes run function enchants:boots/warping/teledistance with storage minecraft:store
execute if entity @n[tag=teletarget] run function enchants:boots/warping/targeted

execute at @s run particle witch ~ ~1 ~ .3 .5 .3 .04 40
execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1
tp @s @s
scoreboard players set @s warping_cd 15


function enchants:boots/warping/xpcost