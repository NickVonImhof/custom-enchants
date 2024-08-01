
execute store result score @s lvl run data get entity @s Inventory[{Slot:100b}].components.minecraft:enchantments.levels.enchants:galestep
execute if entity @s[scores={lvl=1}] run tp @s @s

function enchants:rotation

execute store result storage storage rotY float -0.0001 run scoreboard players get @s rotY

function enchants:boots/galestep/jump_macro with storage storage

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

effect give @n[type=armor_stand] wind_charged infinite 100 true
kill @n[type=armor_stand]


# tag @s[scores={lvl=1}] add snuck
# 9 5 1

#multiplier per lvl
scoreboard players set @s delta 4
scoreboard players operation @s lvl *= @s delta
#base value
scoreboard players set @s delta 13
scoreboard players operation @s delta -= @s lvl

execute store result score @s galestep_cd run scoreboard players get @s delta
scoreboard players set @s[scores={galestep_cd=..-1}] galestep_cd 0

scoreboard players reset @s delta
scoreboard players reset @s lvl

function enchants:boots/galestep/xpcost