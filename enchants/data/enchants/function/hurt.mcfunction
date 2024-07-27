advancement revoke @s only enchants:hurt

execute if entity @s[tag=stoneskin,tag=shield_active,scores={current_xp=1..}] run function enchants:shield/stoneskin/hurt