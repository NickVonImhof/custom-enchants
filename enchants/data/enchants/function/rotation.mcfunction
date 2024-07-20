summon marker ^ ^ ^1 {Tags: ["direction"]}

execute store result score @s posX run data get entity @s Pos[0] 1000
execute store result score @s posY run data get entity @s Pos[1] 1000
execute store result score @s posZ run data get entity @s Pos[2] 1000
execute as @n[type=marker,tag=direction] store result score @s posX run data get entity @s Pos[0] 1000
execute as @n[type=marker,tag=direction] store result score @s posY run data get entity @s Pos[1] 1000
execute as @n[type=marker,tag=direction] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @n[type=marker,tag=direction] posX -= @s posX
scoreboard players operation @n[type=marker,tag=direction] posY -= @s posY
scoreboard players operation @n[type=marker,tag=direction] posZ -= @s posZ

execute store result score @s rotX run scoreboard players get @n[type=marker,tag=direction] posX
execute store result score @s rotY run scoreboard players get @n[type=marker,tag=direction] posY
execute store result score @s rotZ run scoreboard players get @n[type=marker,tag=direction] posZ

kill @e[tag=direction]