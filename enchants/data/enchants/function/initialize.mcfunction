execute store result score @s uuid run data get entity @s UUID[0]
scoreboard players set @s d_xp 0
scoreboard players set @s r_xp 0
xp add @s 1 points

tag @s add initialized