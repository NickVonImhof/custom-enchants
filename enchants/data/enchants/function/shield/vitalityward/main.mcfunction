execute if entity @s[tag=!vitalityward] run function enchants:shield/vitalityward/join

function enchants:shield/shield_master

execute if entity @s[tag=shield_active] if score @s Health < @s max_health run function enchants:shield/vitalityward/restorehp
execute if entity @s[tag=shield_active] if score @s Health >= @s max_health if entity @s[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:4b}]}] run effect clear @s regeneration