#shoot if carrot mainhand
execute if entity @s[scores={Carrot=1..,celestialray_cd=0},predicate=enchants:carrot_on_a_stick/celestialray/celestialray_mainhand] \
    run function enchants:carrot_on_a_stick/celestialray/shoot
#shoot if carrot offhand unless holding mainhand carrot
execute if entity @s[scores={Carrot=1..,celestialray_cd=0},predicate=enchants:carrot_on_a_stick/celestialray/celestiralray_offhand,predicate=!enchants:carrot_on_a_stick/carrot_mainhand] \
    run function enchants:carrot_on_a_stick/celestialray/shoot
scoreboard players remove @s[scores={celestialray_cd=1..}] celestialray_cd 1