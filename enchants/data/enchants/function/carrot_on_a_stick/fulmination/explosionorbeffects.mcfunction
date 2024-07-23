scoreboard players remove @s lifetimer 1

particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[nbt={inGround:true}] run function enchants:carrot_on_a_stick/fulmination/explode
execute if entity @s[scores={lifetimer=0}] run function enchants:carrot_on_a_stick/fulmination/explode

kill @s[nbt={inGround:true}]
kill @s[scores={lifetimer=0}]


tag @s remove myexplosionorb