playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.5 0.5
particle dust{color:[1.0,0.0,0.0],scale:2} ~ ~1 ~ 0.4 0.5 0.4 0 20 normal
$damage @s $(damage) magic by @s from @s
tag @s remove targeted_mob

# tag @e[tag=not_undead] remove not_undead