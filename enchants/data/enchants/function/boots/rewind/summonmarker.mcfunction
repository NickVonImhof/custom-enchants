summon marker ~ ~ ~ {Tags:["rewindmarker","current"]}
execute store result score @n[type=marker,tag=current] uuid run scoreboard players get @s uuid
execute if entity @s[type=player] store result score @n[type=marker,tag=current] prev_health run data get entity @s Health
execute if entity @s[type=marker] store result score @n[type=marker,tag=current] prev_health run scoreboard players get @s prev_health
scoreboard players set @n[type=marker,tag=current] lifetimer 100

tag @n[tag=current] remove current