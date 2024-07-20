
execute store result score @s[predicate=enchants:carrot_on_a_stick/abyssalray/abyssalray_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:abyssalray
execute store result score @s[predicate=enchants:carrot_on_a_stick/abyssalray/abyssalray_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:abyssalray

#multiplier per lvl
scoreboard players set @s delta 50
scoreboard players operation @s lvl *= @s delta
#base value
scoreboard players set @s delta 150
scoreboard players operation @s lvl += @s delta

execute store result score @s r_cost run scoreboard players get @s lvl
function enchants:levels/xpcost

scoreboard players reset @s lvl
scoreboard players reset @s delta