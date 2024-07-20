$execute store result entity @n[tag=current] Motion[0] double $(shootspeed) run scoreboard players get @s rotX
$execute store result entity @n[tag=current] Motion[1] double $(shootspeed) run scoreboard players get @s rotY
$execute store result entity @n[tag=current] Motion[2] double $(shootspeed) run scoreboard players get @s rotZ
$scoreboard players set @n[tag=current] lifetimer $(lifetimer)