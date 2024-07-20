#figure out if there is a target to go behind
tag @s add is_player
tag @n[distance=..1.3,tag=!is_player,type=!item,type=!arrow,type=!fireball,type=!small_fireball,type=!armor_stand,type=!marker] add teletarget
execute as @n[tag=teletarget] anchored eyes at @s unless block ^ ^ ^-1.5 air run tag @s remove teletarget
tag @s remove is_player


# continue moving forward until last air is found
execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air store result score @s teledistance run scoreboard players get @s recurse_depth
#execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run scoreboard players add @s teledistance 1
scoreboard players add @s recurse_depth 1
execute if entity @n[tag=teletarget] run scoreboard players set @s teledistance 0
$execute positioned ^ ^ ^1 unless entity @s[scores={recurse_depth=$(dist)..}] unless entity @e[tag=teletarget] run function enchants:boots/warping/teletarget {"dist":$(dist)}
scoreboard players reset @s recurse_depth