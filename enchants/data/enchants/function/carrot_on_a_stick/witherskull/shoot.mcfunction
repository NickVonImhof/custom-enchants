execute anchored eyes run summon wither_skull ^ ^-.62 ^.5 {Tags: ["skull", "current"]}
execute store result score @n[tag=current] uuid run scoreboard players get @s uuid

function enchants:rotation

execute store result score @s[predicate=enchants:carrot_on_a_stick/witherskull/witherskull_offhand] lvl_saved run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:witherskull
execute store result score @s[predicate=enchants:carrot_on_a_stick/witherskull/witherskull_mainhand] lvl_saved run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:witherskull

# shooting speed
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 215
scoreboard players operation @s lvl *= @s delta
execute store result storage storage shootspeed double 0.0000025 run scoreboard players get @s lvl

# execute as @n[tag=current] at @n[tag=current] rotated as @s run tp @s ^ ^ ^0.1 facing ^ ^ ^1

#life timer
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 5
scoreboard players operation @s lvl *= @s delta
scoreboard players set @s delta 5
scoreboard players operation @s lvl += @s delta
execute store result storage storage lifetimer int 1 run scoreboard players get @s lvl

function enchants:carrot_on_a_stick/witherskull/macro_shoot with storage storage

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

tag @n[tag=current] remove current

scoreboard players set @s witherskull_cd 15

playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.4 1

scoreboard players reset @s lvl_saved
scoreboard players reset @s lvl
scoreboard players reset @s delta

function enchants:carrot_on_a_stick/witherskull/xpcost

