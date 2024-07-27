
execute if entity @s[tag=fulmination,scores={fulmination_charge=1..}] run function enchants:carrot_on_a_stick/fulmination/deactivate
execute if entity @s[tag=fulmination] run tag @s remove fulmination_cd_notified

tag @s remove carrot_active