tag @s remove witherskull
scoreboard players reset @s[scores={witherskull_cd=0}] witherskull_cd

tag @s add is_player
execute as @e[tag=skull,type=wither_skull] if score @s uuid = @p[tag=is_player] uuid run tag @s add myskull
tag @s remove is_player
kill @e[tag=myskull]