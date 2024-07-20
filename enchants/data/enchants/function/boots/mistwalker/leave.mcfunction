execute if entity @s[tag=boots_active] run function enchants:boots/mistwalker/deactivate

scoreboard players reset @s gamemode
tag @s remove snuck

tag @s remove mistwalker
