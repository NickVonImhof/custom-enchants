playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 1
$particle heart ~ ~0.5 ~ 0.4 0 0.4 0 $(particles) normal
$effect give @s regeneration $(health) 3 false
tag @s remove targeted_mob

# tag @e[tag=not_undead] remove not_undead