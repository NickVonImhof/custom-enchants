
execute unless entity @s[tag=initialized] run function enchants:initialize

title @s[scores={current_xp=1..}] actionbar ["",{"text":" ","italic":true,"color":"#38858A"},{"score":{"name":"@s","objective":"current_xp"},"color":"green"},{"text":" ","italic":true,"color":"#38858A"}]

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
    execute if entity @s[tag=vitalityward] run function enchants:shield/vitalityward/main

#reflection
execute if entity @s[tag=reflection] \
    unless entity @s[predicate=enchants:shield/reflection/reflection_mainhand] \
    unless entity @s[predicate=enchants:shield/reflection/reflection_offhand] \
    run function enchants:shield/reflection/leave
    execute if entity @s[tag=reflection] run function enchants:shield/reflection/main

#ironskin
execute if entity @s[tag=ironskin] \
    unless entity @s[predicate=enchants:chest/ironskin/ironskin] \
    run function enchants:chest/ironskin/leave

#warping
execute if entity @s[tag=warping] \
    unless entity @s[predicate=enchants:boots/warping/warping] \
    run function enchants:boots/warping/leave

#galestep
execute if entity @s[tag=galestep] \
    unless entity @s[predicate=enchants:boots/galestep/galestep] \
    run function enchants:boots/galestep/leave
execute if entity @s[tag=galestep] run function enchants:boots/galestep/main

#mistwalker
execute if entity @s[tag=mistwalker] \
    unless entity @s[predicate=enchants:boots/mistwalker/mistwalker] \
    run function enchants:boots/mistwalker/leave
execute if entity @s[tag=mistwalker] run function enchants:boots/mistwalker/main


#blitz
execute if entity @s[tag=blitz] \
    unless entity @s[predicate=enchants:chest/blitz/blitz] \
    run function enchants:chest/blitz/leave

#zephyr
execute if entity @s[tag=zephyr] \
    unless entity @s[predicate=enchants:chest/zephyr/zephyr] \
    run function enchants:chest/zephyr/leave

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
tag @s[tag=shield_ran] remove shield_ran