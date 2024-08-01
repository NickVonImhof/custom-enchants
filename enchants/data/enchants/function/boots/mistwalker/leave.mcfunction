execute if entity @s[tag=boots_active] run function enchants:boots/mistwalker/deactivate

scoreboard players reset @s noxptimer
tag @s remove snuck

tag @s remove mistwalker
