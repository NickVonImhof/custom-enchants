
execute store result score @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:fulmination
execute store result score @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:fulmination

#charge starts at 25 base (for sounds)
scoreboard players set @s fulmination_charge 25

#max charge is 100
#max starts at 25 base, +15 max per level (so 40 base reallyy)
execute store result score @s fulmination_max_charge run scoreboard players get @s lvl
scoreboard players set @s delta 15
scoreboard players operation @s fulmination_max_charge *= @s delta
scoreboard players set @s delta 25
scoreboard players operation @s fulmination_max_charge += @s delta

scoreboard players reset @s lvl
scoreboard players reset @s delta


effect give @s slowness infinite 1 true

#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost