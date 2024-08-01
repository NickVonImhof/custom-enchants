#summoning new markers
scoreboard players remove @s[scores={rewind_tempo=1..}] rewind_tempo 1
execute if entity @s[scores={rewind_tempo=0}] run function enchants:boots/rewind/summonmarker
scoreboard players set @s[scores={rewind_tempo=0}] rewind_tempo 10

# player's entities 
tag @s add is_player
execute as @e[type=marker,tag=rewindmarker] if score @s uuid = @p[tag=is_player] uuid run tag @s add myrewindmarker
execute as @e[type=marker,tag=myrewindmarker] at @s run function enchants:boots/rewind/rewindmarkereffects
tag @s remove is_player