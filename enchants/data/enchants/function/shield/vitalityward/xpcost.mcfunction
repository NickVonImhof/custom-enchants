execute store result score @s[predicate=enchants:shield/vitalityward/vitalityward_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:vitalityward
execute store result score @s[predicate=enchants:shield/vitalityward/vitalityward_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:vitalityward

#multiplier per lvl
scoreboard players set @s delta 20
scoreboard players operation @s lvl *= @s delta

execute store result score @s r_cost run scoreboard players get @s lvl
function enchants:levels/xpcost

scoreboard players reset @s lvl
scoreboard players reset @s delta