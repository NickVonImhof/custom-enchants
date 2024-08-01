


# execute if entity @s[predicate=enchants:sneaking,tag=!snuck,scores={galestep_cd=0}] run function enchants:boots/galestep/jump
execute if entity @s[tag=!snuck,scores={galestep_cd=0,Sneak=1..}] run function enchants:boots/galestep/jump
# execute unless entity @s[scores={Sneak=1..}] if entity @s[tag=snuck] run tag @s remove snuck
scoreboard players remove @s[scores={galestep_cd=1..}] galestep_cd 1


