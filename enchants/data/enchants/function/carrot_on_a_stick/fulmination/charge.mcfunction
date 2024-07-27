tellraw @s[scores={fulmination_cd=1..},tag=!fulmination_cd_notified] {"text":"Fulmination on cooldown.","italic":true,"color":"aqua"}
tag @s[scores={fulmination_cd=1..}] add fulmination_cd_notified
execute if entity @s[scores={fulmination_cd=1..}] run return -1

execute store result score @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:fulmination
execute store result score @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:fulmination


#only add charge if below max
scoreboard players set @s[scores={lvl=2..}] delta 2
scoreboard players operation @s lvl /= @s delta
scoreboard players operation @s fulmination_charge += @s lvl
scoreboard players operation @s fulmination_charge < @s fulmination_max_charge
scoreboard players set @s r_cost 10
function enchants:levels/xpcost

execute store result storage storage sound float 0.02 run scoreboard players get @s fulmination_charge
function enchants:carrot_on_a_stick/fulmination/macro_sound with storage storage

scoreboard players reset @s delta
scoreboard players reset @s lvl