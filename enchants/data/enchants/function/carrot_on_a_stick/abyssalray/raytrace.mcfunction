scoreboard players add @s recurse_depth 1

tag @n[distance=..1.7,tag=!is_player,type=!item] add targeted_mob

execute unless entity @e[tag=targeted_mob,limit=1] positioned ^ ^ ^0.5 unless block ~ ~ ~ minecraft:air run summon marker ~ ~ ~ {Tags: ["targeted_mob"]}
execute unless entity @e[tag=targeted_mob,limit=1] if entity @s[scores={recurse_depth=40..}] run summon marker ~ ~ ~ {Tags: ["targeted_mob"]}
$execute unless entity @e[tag=targeted_mob,limit=1] positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:air unless entity @s[scores={recurse_depth=$(range)..}] run function enchants:carrot_on_a_stick/abyssalray/raytrace with storage storage
scoreboard players reset @s recurse_depth

particle dust{color:[0.0, 0.0, 0.0], scale:2.0} ~ ~ ~ 0 0 0 0 1 normal
particle dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~ 0.25 0.25 0.25 0 4 normal
