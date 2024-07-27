
execute unless entity @s[tag=initialized] run function enchants:initialize

title @s[scores={current_xp=1..}] actionbar ["",{"text":" ","italic":true,"color":"#38858A"},{"score":{"name":"@s","objective":"current_xp"},"color":"aqua"},{"text":" ","italic":true,"color":"#38858A"}]

#flamethrower
execute if entity @s[tag=flamethrower] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_mainhand] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_offhand] \
    run function enchants:carrot_on_a_stick/flamethrower/leave
execute if entity @s[tag=flamethrower] run function enchants:carrot_on_a_stick/flamethrower/main

#witherskull
execute if entity @s[tag=witherskull] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/witherskull/witherskull_mainhand] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/witherskull/witherskull_offhand] \
    run function enchants:carrot_on_a_stick/witherskull/leave
execute if entity @s[tag=witherskull] run function enchants:carrot_on_a_stick/witherskull/main

#abyssal ray
execute if entity @s[tag=abyssalray] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/abyssalray/abyssalray_mainhand] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/abyssalray/abyssalray_offhand] \
    run function enchants:carrot_on_a_stick/abyssalray/leave
execute if entity @s[tag=abyssalray] run function enchants:carrot_on_a_stick/abyssalray/main

#celestialray ray
execute if entity @s[tag=celestialray] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/celestialray/celestialray_mainhand] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/celestialray/celestiralray_offhand] \
    run function enchants:carrot_on_a_stick/celestialray/leave
execute if entity @s[tag=celestialray] run function enchants:carrot_on_a_stick/celestialray/main

#fulmination
execute if entity @s[tag=fulmination] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_mainhand] \
    unless entity @s[predicate=enchants:carrot_on_a_stick/fulmination/fulmination_offhand] \
    run function enchants:carrot_on_a_stick/fulmination/leave
execute if entity @s[tag=fulmination] run function enchants:carrot_on_a_stick/fulmination/main

#vitality ward
execute if entity @s[tag=vitalityward] \
    unless entity @s[predicate=enchants:shield/vitalityward/vitalityward_mainhand] \
    unless entity @s[predicate=enchants:shield/vitalityward/vitalityward_offhand] \
    run function enchants:shield/vitalityward/leave

#vitality ward
execute if entity @s[tag=reflection] \
    unless entity @s[predicate=enchants:shield/reflection/reflection_mainhand] \
    unless entity @s[predicate=enchants:shield/reflection/reflection_offhand] \
    run function enchants:shield/reflection/leave

#warping
execute if entity @s[tag=warping] \
    unless entity @s[predicate=enchants:boots/warping/warping] \
    run function enchants:boots/warping/leave

#mistwalker
execute if entity @s[tag=mistwalker] \
    unless entity @s[predicate=enchants:boots/mistwalker/mistwalker] \
    run function enchants:boots/mistwalker/leave
execute if entity @s[tag=mistwalker] run function enchants:boots/mistwalker/main


#quickstep
execute if entity @s[tag=quickstep] \
    unless entity @s[predicate=enchants:chest/quickstep/quickstep] \
    run function enchants:chest/quickstep/leave

#aerostep
execute if entity @s[tag=aerostep] \
    unless entity @s[predicate=enchants:chest/aerostep/aerostep] \
    run function enchants:chest/aerostep/leave

#enlarging
execute if entity @s[tag=enlarging] \
    unless entity @s[predicate=enchants:chest/enlarging/enlarging] \
    run function enchants:chest/enlarging/leave

#diminishing
execute if entity @s[tag=diminishing] \
    unless entity @s[predicate=enchants:chest/diminishing/diminishing] \
    run function enchants:chest/diminishing/leave

## SCOREBOARDS/TAGS
scoreboard players reset @s[scores={Carrot=1..}] Carrot
scoreboard players reset @s[scores={Sneak=1..}] Sneak
tag @s[tag=swapped] remove swapped
tag @s[tag=carrot_ran] remove carrot_ran

