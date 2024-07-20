
execute store result score @s lvl run data get entity @s Inventory[{Slot:100b}].components.minecraft:enchantments.levels.enchants:warping

#multiplier per lvl
scoreboard players set @s delta 30
scoreboard players operation @s lvl *= @s delta
#base value
scoreboard players set @s delta 180
scoreboard players operation @s lvl += @s delta

execute store result score @s r_cost run scoreboard players get @s lvl
function enchants:levels/xpcost

scoreboard players reset @s lvl
scoreboard players reset @s delta