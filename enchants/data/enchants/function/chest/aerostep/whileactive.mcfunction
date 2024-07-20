effect clear @s levitation
effect clear @s slow_falling

effect give @s[x_rotation=75..90] slow_falling 11 0 true
effect give @s[x_rotation=-59..74] levitation 11 0 true
effect give @s[x_rotation=-90..-48] levitation 11 6 true

# execute unless entity @s[gamemode=spectator] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 0.02 1.2
execute unless entity @s[gamemode=spectator] run playsound block.grass.step master @a ~ ~ ~ 0.08 0.5
execute unless entity @s[gamemode=spectator] run particle cloud ~ ~0.3 ~ 0 0 0 0.09 5 normal

function enchants:chest/aerostep/xpcost