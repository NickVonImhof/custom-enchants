
#projectiles
tag @e[type=arrow,distance=..4] add reflect
tag @e[type=small_fireball,distance=..4] add reflect
tag @e[type=fireball,distance=..4] add reflect
tag @e[type=wither_skull,distance=..4] add reflect
tag @e[type=small_fireball,distance=..4] add reflect
tag @e[type=potion,distance=..4] add reflect
tag @e[type=llama_spit,distance=..4] add reflect
tag @e[type=snowball,distance=..4] add reflect
tag @e[type=dragon_fireball,distance=..4] add reflect
tag @e[type=trident,distance=..4] add reflect
tag @e[type=egg,distance=..4] add reflect
tag @e[type=potion,distance=..4] add reflect
tag @e[type=experience_bottle,distance=..4] add reflect

execute as @e[tag=reflect] at @s run function enchants:shield/reflection/reflect


# particles
tag @s add is_player
execute as @e[type=marker,tag=reflectionmarker] if score @s uuid = @n[tag=is_player] uuid run tag @s add myreflectionmarker
tag @s remove is_player


execute positioned as @s as @n[tag=myreflectionmarker] at @s run tp @s ~ ~ ~ ~10 ~
execute at @n[tag=myreflectionmarker] run particle cloud ^ ^ ^3
execute at @n[tag=myreflectionmarker] rotated ~120 ~ run particle cloud ^ ^ ^3
execute at @n[tag=myreflectionmarker] rotated ~240 ~ run particle cloud ^ ^ ^3
tp @n[tag=myreflectionmarker] ~ ~1 ~

tag @e[type=marker,tag=myreflectionmarker] remove myreflectionmarker

function enchants:shield/reflection/xpcost