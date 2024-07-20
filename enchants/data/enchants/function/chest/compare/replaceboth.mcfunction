setblock ~ 0 ~ barrel
item replace block ~ 0 ~ container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from block ~ 0 ~ container.0
function enchants:chest/compare/toggle

scoreboard players set @s success1 -1
scoreboard players set @s success2 -1