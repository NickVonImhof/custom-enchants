#hold to shoot
execute if entity @s[tag=!carrot_ran] run function enchants:carrot_on_a_stick/holdclick_master

#shoot if carrot mainhand
execute if entity @s[scores={pressRC=1..},predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_mainhand] \
    run function enchants:carrot_on_a_stick/flamethrower/shoot
#shoot if carrot offhand unless holding mainhand carrot
execute if entity @s[scores={pressRC=1..},predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_offhand,predicate=!enchants:carrot_on_a_stick/carrot_mainhand] \
    run function enchants:carrot_on_a_stick/flamethrower/shoot


# player's entities 
tag @s add is_player
execute as @e[tag=flame,type=small_fireball] if score @s uuid = @n[tag=is_player] uuid run tag @s add myflame
execute as @e[tag=myflame] at @s run function enchants:carrot_on_a_stick/flamethrower/flameeffects
tag @s remove is_player