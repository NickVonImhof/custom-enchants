
# RAYTRACE function leaves a targeted mob, be that an AOE cloud, or an actual mob.

execute store result score @s[predicate=enchants:carrot_on_a_stick/celestialray/celestiralray_offhand] lvl_saved run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:celestialray
execute store result score @s[predicate=enchants:carrot_on_a_stick/celestialray/celestialray_mainhand] lvl_saved run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:celestialray

execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 8
scoreboard players operation @s lvl *= @s delta
execute store result storage storage range int 2 run scoreboard players get @s lvl

scoreboard players set @s recurse_depth 0
tag @s add is_player
execute anchored eyes run function enchants:carrot_on_a_stick/celestialray/raytrace with storage storage
tag @s remove is_player

kill @e[type=marker,tag=targeted_mob]

execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 1
scoreboard players operation @s lvl -= @s delta
execute store result storage storage health int 1 run scoreboard players get @s lvl

execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 3
scoreboard players operation @s lvl *= @s delta
execute store result storage storage particles int 1 run scoreboard players get @s lvl
execute as @n[tag=targeted_mob] at @s run function enchants:carrot_on_a_stick/celestialray/targeted_mob with storage storage

playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 1 1
scoreboard players set @s celestialray_cd 12

scoreboard players reset @s lvl_saved
scoreboard players reset @s lvl
scoreboard players reset @s delta

function enchants:carrot_on_a_stick/celestialray/xpcost
