tag @s remove carrot_active

effect clear @s slowness
attribute @s minecraft:generic.jump_strength modifier remove fulmination

tag @s remove fulmination
scoreboard players reset @s pressRC
scoreboard players reset @s[scores={fulmination_cd=0}] fulmination_cd
scoreboard players reset @s fulmination_charge
scoreboard players reset @s fulmination_max_charge

tag @s add is_player
execute as @e[tag=explosionorb,type=arrow] if score @s uuid = @n[tag=is_player] uuid run tag @s add myexplosionorb
tag @s remove is_player
kill @e[tag=myexplosionorb]