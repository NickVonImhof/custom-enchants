
#xp cost based off charge amount
execute store result score @s lvl run scoreboard players get @s fulmination_charge

#multiplier per lvl
scoreboard players set @s delta 4
scoreboard players operation @s lvl *= @s delta
#base value
scoreboard players set @s delta 50
scoreboard players operation @s lvl += @s delta

execute store result score @s r_cost run scoreboard players get @s lvl
function enchants:levels/xpcost

scoreboard players reset @s lvl
scoreboard players reset @s delta