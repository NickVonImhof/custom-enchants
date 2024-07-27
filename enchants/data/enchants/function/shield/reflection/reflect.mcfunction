

execute store result entity @s Motion[0] double -1 run data get entity @s Motion[0]
execute store result entity @s Motion[1] float -1 run data get entity @s Motion[1]
execute store result entity @s Motion[2] double -1 run data get entity @s Motion[2]

tag @s remove reflect

playsound item.shield.block master @a ~ ~ ~ 0.5 1.5