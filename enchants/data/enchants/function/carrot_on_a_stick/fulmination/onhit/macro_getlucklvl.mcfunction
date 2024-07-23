data modify storage storage luck set value "minecraft:luck"
$data modify storage storage current_effect set from entity @s active_effects[$(index)].id

execute store success score @s success1 run data modify storage storage luck set from storage storage current_effect
execute if entity @s[scores={success1=0}] run function enchants:carrot_on_a_stick/fulmination/onhit/lucktocharge with storage storage

$scoreboard players set @s recurse_depth $(index)
scoreboard players add @s recurse_depth 1
execute store result storage storage index int 1 run scoreboard players get @s recurse_depth
execute if entity @s[scores={success1=1}] unless entity @s[scores={recurse_depth=20..}] run function enchants:carrot_on_a_stick/fulmination/onhit/macro_getlucklvl with storage storage