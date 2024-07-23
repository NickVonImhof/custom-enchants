execute store result score @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:fulmination
execute store result score @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:fulmination

#multiplier per lvl
scoreboard players set @s delta 20
scoreboard players operation @s lvl *= @s delta

execute store result score @s fulmination_max_charge run scoreboard players get @s lvl

scoreboard players reset @s lvl
scoreboard players reset @s delta