# scoreboard players set @s[predicate=enchants:boots/warping/warping_1] recurse_depth 7
# scoreboard players set @s[predicate=enchants:boots/warping/warping_2] recurse_depth 14
# scoreboard players set @s[predicate=enchants:boots/warping/warping_3] recurse_depth 21
scoreboard players set @s recurse_depth 0

execute store result score @s lvl run data get entity @s Inventory[{Slot:100b}].components.minecraft:enchantments.levels.enchants:warping
scoreboard players set @s delta 7
scoreboard players operation @s lvl *= @s delta
execute store result storage storage dist int 1 run scoreboard players get @s lvl

execute anchored eyes run function enchants:boots/warping/teletarget with storage storage

execute unless entity @s[scores={teledistance=1..}] unless entity @n[tag=teletarget] run tag @s add notp
tellraw @s[tag=notp] {"text":"Unable to teleport","italic":true,"color":"aqua"}
execute unless entity @s[tag=notp] run function enchants:boots/warping/shouldtp

scoreboard players reset @s teledistance
scoreboard players reset @s lvl
scoreboard players reset @s delta
tag @s[tag=notp] remove notp
tag @s add snuck