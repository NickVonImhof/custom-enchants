tag @s add is_player
execute as @e[type=marker,tag=reflectionmarker] if score @s uuid = @p[tag=is_player] uuid run tag @s add myreflectionmarker
tag @s remove is_player
kill @e[tag=myreflectionmarker]