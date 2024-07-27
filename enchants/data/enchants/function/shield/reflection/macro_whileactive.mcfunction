#particles
execute positioned as @s as @n[tag=myreflectionmarker] at @s run tp @s ~ ~ ~ ~10 ~
$execute at @n[tag=myreflectionmarker] run particle cloud ^ ^ ^$(distance_particles)
$execute at @n[tag=myreflectionmarker] rotated ~90 ~ run particle cloud ^ ^ ^$(distance_particles)
$execute at @n[tag=myreflectionmarker] rotated ~180 ~ run particle cloud ^ ^ ^$(distance_particles)
$execute at @n[tag=myreflectionmarker] rotated ~270 ~ run particle cloud ^ ^ ^$(distance_particles)
tp @n[tag=myreflectionmarker] ~ ~1 ~

#projectiles
$tag @e[type=arrow,distance=..$(distance_reflect)] add reflect
$tag @e[type=small_fireball,distance=..$(distance_reflect)] add reflect
$tag @e[type=fireball,distance=..$(distance_reflect)] add reflect
$tag @e[type=wither_skull,distance=..$(distance_reflect)] add reflect
$tag @e[type=small_fireball,distance=..$(distance_reflect)] add reflect
$tag @e[type=potion,distance=..$(distance_reflect)] add reflect
$tag @e[type=llama_spit,distance=..$(distance_reflect)] add reflect
$tag @e[type=snowball,distance=..$(distance_reflect)] add reflect
$tag @e[type=dragon_fireball,distance=..$(distance_reflect)] add reflect
$tag @e[type=trident,distance=..$(distance_reflect)] add reflect
$tag @e[type=egg,distance=..$(distance_reflect)] add reflect
$tag @e[type=potion,distance=..$(distance_reflect)] add reflect
$tag @e[type=experience_bottle,distance=..$(distance_reflect)] add reflect

$execute at @e[tag=reflect,distance=..$(distance_kill).5] run particle block_marker{block_state:{Name:barrier}} ~ ~ ~ 0 0 0 0 1
$kill @e[tag=reflect,distance=..$(distance_kill).5]

execute as @e[tag=reflect] at @s run function enchants:shield/reflection/reflect