#hold to shoot
execute if entity @s[tag=!carrot_ran] run function enchants:carrot_on_a_stick/holdclick_master

#shoot if carrot mainhand
execute if entity @s[scores={pressRC=1..},predicate=enchants:carrot_on_a_stick/fulmination/fulmination_mainhand] \
    run function enchants:carrot_on_a_stick/fulmination/charge
#shoot if carrot offhand unless holding mainhand carrot
execute if entity @s[scores={pressRC=1..},predicate=enchants:carrot_on_a_stick/fulmination/fulmination_offhand,predicate=!enchants:carrot_on_a_stick/carrot_mainhand] \
    run function enchants:carrot_on_a_stick/fulmination/charge

execute if entity @s[tag=carrot_active,scores={fulmination_cd=0,fulmination_max_charge=0}] run function enchants:carrot_on_a_stick/fulmination/activate

playsound block.note_block.pling master @s[scores={fulmination_cd=1}] ~ ~ ~ 0.5 2
scoreboard players remove @s[scores={fulmination_cd=1..}] fulmination_cd 1



# player's entities 
tag @s add is_player
execute as @e[tag=explosionorb,type=arrow] if score @s uuid = @n[tag=is_player] uuid run tag @s add myexplosionorb
execute as @e[tag=myexplosionorb] at @s run function enchants:carrot_on_a_stick/fulmination/explosionorbeffects
tag @s remove is_player