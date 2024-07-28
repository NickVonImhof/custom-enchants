tag @s remove chest_active

execute if entity @s[tag=quickstep] run function enchants:chest/quickstep/deactivate
execute if entity @s[tag=aerostep] run function enchants:chest/aerostep/deactivate
execute if entity @s[tag=enlarging] run function enchants:chest/enlarging/deactivate
execute if entity @s[tag=diminishing] run function enchants:chest/diminishing/deactivate
execute if entity @s[tag=ironskin] run function enchants:chest/ironskin/deactivate