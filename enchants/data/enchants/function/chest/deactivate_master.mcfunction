tag @s remove chest_active

execute if entity @s[tag=blitz] run function enchants:chest/blitz/deactivate
execute if entity @s[tag=zephyr] run function enchants:chest/zephyr/deactivate
execute if entity @s[tag=enlarging] run function enchants:chest/enlarging/deactivate
execute if entity @s[tag=diminishing] run function enchants:chest/diminishing/deactivate
execute if entity @s[tag=ironskin] run function enchants:chest/ironskin/deactivate