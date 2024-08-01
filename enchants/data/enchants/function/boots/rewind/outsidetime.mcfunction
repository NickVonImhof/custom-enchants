# player's entities 
tag @s add is_player
execute as @e[type=marker,tag=rewindmarker] if score @s uuid = @p[tag=is_player] uuid at @s run tp @p[tag=is_player] ~ ~ ~
execute as @e[type=marker,tag=particlemarker] if score @s uuid = @p[tag=is_player] uuid at @s facing entity @p[tag=is_player] eyes run \
    particle minecraft:soul_fire_flame ~ ~ ~ ^ ^ ^1000000 0.0000002 0
tag @s remove is_player

#effect give @s blindness infinite 100 true

scoreboard players remove @s rewinding 1
execute if entity @s[scores={rewinding=0}] run function enchants:boots/rewind/reentertime