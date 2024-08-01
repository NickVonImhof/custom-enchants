
effect give @s regeneration infinite 255 true

execute if score @s Health >= @s prev_health run effect clear @s regeneration
execute if score @s Health >= @s prev_health run scoreboard players reset @s prev_health