execute unless entity @s[tag=shield_ran] run function enchants:shield/shield_master

execute if entity @s[tag=shield_active] if score @s Health < @s max_health run function enchants:shield/vitalityward/restorehp
execute if entity @s[tag=shield_active] if score @s Health >= @s max_health if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect clear @s regeneration