execute if entity @s[tag=!rewind] run function enchants:boots/rewind/join
execute if entity @s[predicate=enchants:sneaking,tag=!snuck,gamemode=!spectator] run function enchants:boots/rewind/recall
tag @s[tag=snuck,predicate=!enchants:sneaking] remove snuck

execute if entity @s[tag=outsidetime] run function enchants:boots/rewind/outsidetime
execute if entity @s[scores={prev_health=1..}] run function enchants:boots/rewind/restorehp


execute if entity @s[gamemode=!spectator] run function enchants:boots/rewind/runeffects