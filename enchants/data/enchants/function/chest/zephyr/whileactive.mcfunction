effect clear @s levitation
effect clear @s slow_falling

scoreboard players remove @s[scores={zephyr_tempo=1..}] zephyr_tempo 1

effect give @s[x_rotation=65..90] slow_falling infinite 0 true

effect give @s[x_rotation=0..75,scores={zephyr_tempo=1..}] levitation infinite 0 true
effect give @s[x_rotation=0..75,scores={zephyr_tempo=0}] slow_falling infinite 0 true

effect give @s[x_rotation=-25..0] levitation infinite 2 true
effect give @s[x_rotation=-48..-25] levitation infinite 4 true
effect give @s[x_rotation=-90..-48] levitation infinite 6 true

scoreboard players set @s[scores={zephyr_tempo=0}] zephyr_tempo 9


# execute unless entity @s[gamemode=spectator] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 0.02 1.2
execute unless entity @s[gamemode=spectator] run playsound block.grass.step master @a ~ ~ ~ 0.08 0.5
execute unless entity @s[gamemode=spectator] run particle cloud ~ ~0.3 ~ 0 0 0 0.09 5 normal

function enchants:chest/zephyr/xpcost