
execute if entity @s[tag=flamethrower] run function enchants:carrot_on_a_stick/flamethrower/activate
execute if entity @s[tag=fulmination,scores={fulmination_cd=0}] run function enchants:carrot_on_a_stick/fulmination/activate

tag @s add carrot_active