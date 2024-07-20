execute store result score @s lvl_saved run data get entity @s Inventory[{Slot:102b}].components.minecraft:enchantments.levels.enchants:diminishing

#scale
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta -3 
scoreboard players operation @s lvl *= @s delta
execute store result storage storage scale float 0.1 run scoreboard players get @s lvl

#speed
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta -2 
scoreboard players operation @s lvl *= @s delta
execute store result storage storage speed float 0.001 run scoreboard players get @s lvl

#knockback
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta -2 
scoreboard players operation @s lvl *= @s delta
execute store result storage storage knockback float 0.1 run scoreboard players get @s lvl

#block interaction range
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta -3 
scoreboard players operation @s lvl *= @s delta
execute store result storage storage blockinter float 0.1 run scoreboard players get @s lvl

#entity interaction range
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta -3 
scoreboard players operation @s lvl *= @s delta
execute store result storage storage entityinter float 0.1 run scoreboard players get @s lvl

function enchants:chest/diminishing/macro_activate with storage storage
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 1.5
particle enchanted_hit ~ ~1 ~ 0.4 0.4 0.4 0.1 30 normal

scoreboard players reset @s lvl_saved
scoreboard players reset @s lvl
scoreboard players reset @s delta

#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost



