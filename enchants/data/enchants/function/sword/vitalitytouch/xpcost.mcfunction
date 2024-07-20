
execute store result score @s lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:vitalitytouch
#multiplier per lvl
scoreboard players set @s delta 15
scoreboard players operation @s lvl *= @s delta
#base value
scoreboard players set @s delta 100
scoreboard players operation @s lvl += @s delta

execute store result score @s r_cost run scoreboard players get @s lvl
function enchants:levels/xpcost

scoreboard players reset @s lvl
scoreboard players reset @s delta