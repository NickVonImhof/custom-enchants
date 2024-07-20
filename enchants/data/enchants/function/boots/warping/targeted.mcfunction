execute at @n[tag=teletarget] run summon marker ~ ~-0.75 ~ {Tags: ["current"]}

tag @s add is_player
execute as @n[tag=teletarget] at @s run tp @p[tag=is_player] ^ ^ ^-1.5 facing entity @n[tag=current] feet
tag @s remove is_player
tag @n[tag=teletarget] remove teletarget
kill @n[tag=current]

execute at @s unless block ~ ~ ~ air run scoreboard players set @s recurse_depth 0
execute at @s unless block ~ ~ ~ air run function enchants:tpup