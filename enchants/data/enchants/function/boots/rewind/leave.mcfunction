execute if entity @s[tag=outsidetime] run function enchants:boots/rewind/reentertime

effect clear @s[scores={prev_health=1..}] regeneration
scoreboard players reset @s prev_health

tag @s remove rewind
scoreboard players reset @s rewind_tempo

tag @s add is_player
execute as @e[type=marker,tag=rewindmarker] if score @s uuid = @p[tag=is_player] uuid run tag @s add myrewindmarker
tag @s remove is_player
kill @e[tag=myrewindmarker]