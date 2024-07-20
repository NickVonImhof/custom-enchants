
execute store result score @s lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:reach
#multiplier per lvl
scoreboard players set @s delta 50
scoreboard players operation @s lvl *= @s delta
#base value
scoreboard players set @s delta 75
scoreboard players operation @s lvl += @s delta

execute store result score @s r_cost run scoreboard players get @s lvl
function enchants:levels/xpcost

scoreboard players reset @s lvl
scoreboard players reset @s delta