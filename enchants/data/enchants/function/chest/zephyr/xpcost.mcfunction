
# execute store result score @s[predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:flamethrower
# execute store result score @s[predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:flamethrower

# scoreboard players set @s delta 3
# scoreboard players operation @s lvl *= @s delta
# scoreboard players set @s delta 30
# scoreboard players operation @s lvl += @s delta

# execute store result score @s r_cost run scoreboard players get @s lvl
# function enchants:levels/xpcost

# scoreboard players reset @s lvl
# scoreboard players reset @s delta

# mono level so pretty simple
scoreboard players set @s r_cost 10
function enchants:levels/xpcost