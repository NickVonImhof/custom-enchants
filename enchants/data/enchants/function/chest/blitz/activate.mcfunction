execute store result score @s lvl_saved run data get entity @s Inventory[{Slot:102b}].components.minecraft:enchantments.levels.enchants:blitz

#speed
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 1
scoreboard players operation @s lvl *= @s delta
execute store result storage storage speed float 0.1 run scoreboard players get @s lvl

#step
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 1
scoreboard players operation @s lvl *= @s delta
execute store result storage storage step float 1 run scoreboard players get @s lvl

#gravity
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 5
scoreboard players operation @s lvl *= @s delta
execute store result storage storage gravity float 0.01 run scoreboard players get @s lvl

#jump
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 33
scoreboard players operation @s lvl *= @s delta
execute store result storage storage jump float 0.01 run scoreboard players get @s lvl

function enchants:chest/blitz/macro_activate with storage storage

playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
# particle minecraft:electric_spark ~ ~0.5 ~ 0.50 0.8 0.5 0.3 60 normal
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.8 90 normal

scoreboard players reset @s lvl_saved
scoreboard players reset @s lvl
scoreboard players reset @s delta

#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost