
execute if entity @s[scores={fulmination_charge=0}] run function enchants:carrot_on_a_stick/fulmination/maxcharge

#only add charge if below max
scoreboard players add @s fulmination_charge 1
scoreboard players operation @s fulmination_charge < @s fulmination_max_charge
scoreboard players set @s r_cost 10
function enchants:levels/xpcost

execute store result storage storage sound float 0.02 run scoreboard players get @s fulmination_charge
function enchants:carrot_on_a_stick/fulmination/macro_sound with storage storage
