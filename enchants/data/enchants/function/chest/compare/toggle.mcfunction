execute if entity @s[tag=chest_active] run tag @s add change
execute if entity @s[tag=chest_active] run function enchants:chest/deactivate_master
execute if entity @s[tag=!chest_active,tag=!change] run function enchants:chest/activate_master
tag @s remove change
