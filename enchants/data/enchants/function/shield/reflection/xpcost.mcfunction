execute store result score @s[predicate=enchants:shield/reflection/reflection_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:reflection
execute store result score @s[predicate=enchants:shield/reflection/reflection_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:reflection

#multiplier per lvl
scoreboard players set @s delta 3
scoreboard players operation @s lvl *= @s delta
#base value
scoreboard players set @s delta 13
scoreboard players operation @s lvl += @s delta

execute store result score @s r_cost run scoreboard players get @s lvl
function enchants:levels/xpcost

scoreboard players reset @s lvl
scoreboard players reset @s delta