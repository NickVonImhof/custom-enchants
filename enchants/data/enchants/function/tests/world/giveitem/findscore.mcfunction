execute positioned ~-2 ~1 ~ run tag @n[type=endermite,tag=score,distance=..1.5] add mite
execute store result storage storage:endermite score int 1 run scoreboard players get @n[tag=mite] lvl
execute if entity @n[tag=mite,name="Warping Level"] run function enchants:tests/world/giveitem/givewarping with storage storage:endermite
execute if entity @n[tag=mite,name="Mistwalker Level"] run function enchants:tests/world/giveitem/givemistwalker with storage storage:endermite
execute if entity @n[tag=mite,name="Enlarging Level"] run function enchants:tests/world/giveitem/giveenlarging with storage storage:endermite
execute if entity @n[tag=mite,name="Diminishing Level"] run function enchants:tests/world/giveitem/givediminishing with storage storage:endermite
execute if entity @n[tag=mite,name="Quickstep Level"] run function enchants:tests/world/giveitem/givequickstep with storage storage:endermite
execute if entity @n[tag=mite,name="Aerostep Level"] run function enchants:tests/world/giveitem/giveaerostep with storage storage:endermite
execute if entity @n[tag=mite,name="Flamethrower Level"] run function enchants:tests/world/giveitem/giveflamethrower with storage storage:endermite

tag @n[tag=mite] remove mite