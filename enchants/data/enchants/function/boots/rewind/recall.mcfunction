
scoreboard players set @s lifetimer 101

tag @s add is_player
execute as @e[type=marker,tag=rewindmarker] if score @s uuid = @p[tag=is_player] uuid run tag @s add myrewindmarker
execute as @e[type=marker,tag=myrewindmarker,limit=1,sort=furthest] at @s run function enchants:boots/rewind/findoldestmarker
tag @s remove is_player

#now: have marker with lowest found
scoreboard players set @s[gamemode=survival] gamemode 0
scoreboard players set @s[gamemode=creative] gamemode 1
scoreboard players set @s[gamemode=adventure] gamemode 2

gamemode spectator @s
scoreboard players set @s rewinding 20
execute as @n[type=marker,tag=lowest_found] at @s run function enchants:boots/rewind/summonmarker
tag @s add outsidetime

kill @e[type=marker,tag=myrewindmarker]

#summon particle marker
summon marker ~ ~1 ~ {Tags:["particlemarker","current"]}
execute store result score @n[type=marker,tag=current] uuid run scoreboard players get @s uuid
tag @n[type=marker,tag=current] remove current

scoreboard players reset @s lifetimer
tag @s add snuck
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.2
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.6 0.3 0.01 40 normal