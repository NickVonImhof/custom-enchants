tag @s add searched

#if your score is lower than lowest found so far, update lowest (and your tag!)
execute if score @s lifetimer < @p[tag=is_player] lifetimer run tag @n[type=marker,tag=myrewindmarker,tag=lowest_found] remove lowest_found
execute if score @s lifetimer < @p[tag=is_player] lifetimer run tag @s add lowest_found
execute if score @s lifetimer < @p[tag=is_player] lifetimer store result score @p[tag=is_player] lifetimer run scoreboard players get @s lifetimer

#check the other markers
execute as @n[type=marker,tag=myrewindmarker,tag=!searched] at @s run function enchants:boots/rewind/findoldestmarker
