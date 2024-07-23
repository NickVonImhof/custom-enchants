
execute store result storage storage explosion float 0.075 run scoreboard players get @s fulmination_charge
function enchants:carrot_on_a_stick/fulmination/explode_macro with storage storage

#worst case you summon a marker for each arrow, with a certian tag and your UUID, and store fulmination charge. 
# then on arrow effects, teleport the nearest marker to itself, 
# and on explode, get explosion effects from the nearest marker with tag and kill the marker.
# dont forget to also kill all such markers on leave as well.