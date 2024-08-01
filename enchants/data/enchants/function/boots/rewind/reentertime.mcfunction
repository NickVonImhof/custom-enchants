
gamemode survival @s[scores={gamemode=0}]
gamemode creative @s[scores={gamemode=1}]
gamemode spectator @s[scores={gamemode=2}]

tag @s add is_player
execute as @e[type=marker,tag=particlemarker] if score @s uuid = @p[tag=is_player] uuid run kill @s 
tag @s remove is_player

tag @s remove outsidetime
execute store result score @s[scores={current_xp=1..}] prev_health run scoreboard players get @n[type=marker,tag=rewindmarker] prev_health
scoreboard players reset @s rewinding
scoreboard players reset @s gamemode

effect clear @s blindness
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0.8
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.6 0.3 0.01 40 normal

function enchants:boots/rewind/xpcost