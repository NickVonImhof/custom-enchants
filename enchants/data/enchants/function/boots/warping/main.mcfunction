execute if entity @s[tag=!warping] run function enchants:boots/warping/join
execute if entity @s[predicate=enchants:sneaking,tag=!snuck,scores={warping_cd=0}] run function enchants:boots/warping/teleport
tag @s[tag=snuck,predicate=!enchants:sneaking] remove snuck
scoreboard players remove @s[scores={warping_cd=1..}] warping_cd 1