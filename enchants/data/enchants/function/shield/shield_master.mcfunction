
#turn on
execute if entity @s[tag=shield_using,tag=!shield_active] run function enchants:shield/activate_master
tag @s[tag=shield_using,tag=!shield_active] add shield_active

#turn off
execute if entity @s[tag=!shield_using,tag=shield_active] run function enchants:shield/deactivate_master
tag @s[tag=!shield_using,tag=shield_active] remove shield_active

tag @s[tag=shield_using] remove shield_using
tag @s add shield_ran