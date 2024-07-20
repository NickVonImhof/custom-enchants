#shoot if carrot mainhand
execute if entity @s[scores={Carrot=1..,abyssalray_cd=0},predicate=enchants:carrot_on_a_stick/abyssalray/abyssalray_mainhand] \
    run function enchants:carrot_on_a_stick/abyssalray/shoot
#shoot if carrot offhand unless holding mainhand carrot
execute if entity @s[scores={Carrot=1..,abyssalray_cd=0},predicate=enchants:carrot_on_a_stick/abyssalray/abyssalray_offhand,predicate=!enchants:carrot_on_a_stick/carrot_mainhand] \
    run function enchants:carrot_on_a_stick/abyssalray/shoot
scoreboard players remove @s[scores={abyssalray_cd=1..}] abyssalray_cd 1