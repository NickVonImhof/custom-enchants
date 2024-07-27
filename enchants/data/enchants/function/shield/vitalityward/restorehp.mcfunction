
execute store result score @s[predicate=enchants:shield/vitalityward/vitalityward_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:vitalityward
execute store result score @s[predicate=enchants:shield/vitalityward/vitalityward_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:vitalityward

execute store result storage storage regen_dmg int 1 run scoreboard players get @s lvl
#regen = lvl + 2
#base value
scoreboard players set @s delta 2
scoreboard players operation @s lvl += @s delta
execute store result storage storage regen_amplifier int 1 run scoreboard players get @s lvl

scoreboard players reset @s lvl
scoreboard players reset @s delta

function enchants:shield/vitalityward/macro_restorehp with storage storage

particle heart ~ ~0.5 ~ 0.4 0 0.4 0 1 normal

function enchants:shield/vitalityward/xpcost