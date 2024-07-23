
scoreboard players set @s[gamemode=survival] gamemode 0
scoreboard players set @s[gamemode=creative] gamemode 1
scoreboard players set @s[gamemode=adventure] gamemode 2



tag @s[tag=boots_active,x_rotation=60..90] add snuck
execute if entity @s[scores={Sneak=1..},tag=!snuck,tag=!boots_active] run function enchants:boots/mistwalker/activate
execute if entity @s[scores={Sneak=1..},tag=!snuck,tag=boots_active] run function enchants:boots/mistwalker/deactivate
execute if entity @s[tag=snuck] unless entity @s[scores={Sneak=1..}] run tag @s remove snuck
# scoreboard players set @s[scores={Sneak=1..}] Sneak 0

execute if entity @s[tag=boots_active] run function enchants:boots/mistwalker/whileactive