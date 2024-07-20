$tag @n[type=endermite,tag=score,scores={lvl=1..$(max_incl)},distance=..1.5] add mite
scoreboard players add @n[tag=mite] lvl 1

execute store result storage storage:endermite score int 1 run scoreboard players get @n[tag=mite] lvl
execute as @n[tag=mite] run function enchants:tests/world/sayscore with storage storage:endermite

execute unless entity @n[tag=score,tag=mite] as @n[tag=score,distance=..1.5] run say Max Level Reached
tag @n[tag=mite] remove mite