#shoot if carrot mainhand
execute if entity @s[scores={Carrot=1..,witherskull_cd=0},predicate=enchants:carrot_on_a_stick/witherskull/witherskull_mainhand] \
    run function enchants:carrot_on_a_stick/witherskull/shoot
#shoot if carrot offhand unless holding mainhand carrot
execute if entity @s[scores={Carrot=1..,witherskull_cd=0},predicate=enchants:carrot_on_a_stick/witherskull/witherskull_offhand,predicate=!enchants:carrot_on_a_stick/carrot_mainhand] \
    run function enchants:carrot_on_a_stick/witherskull/shoot
scoreboard players remove @s[scores={witherskull_cd=1..}] witherskull_cd 1

# player's entities 
tag @s add is_player
execute as @e[tag=skull,type=wither_skull] if score @s uuid = @p[tag=is_player] uuid run tag @s add myskull
execute as @e[tag=myskull] at @s run function enchants:carrot_on_a_stick/witherskull/skulleffects
tag @s remove is_player