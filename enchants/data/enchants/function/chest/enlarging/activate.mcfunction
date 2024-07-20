
execute store result score @s lvl_saved run data get entity @s Inventory[{Slot:102b}].components.minecraft:enchantments.levels.enchants:enlarging

#scale
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 3
scoreboard players operation @s lvl *= @s delta
execute store result storage storage scale float 0.1 run scoreboard players get @s lvl
#step height
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 5
scoreboard players operation @s lvl *= @s delta
execute store result storage storage step float 0.1 run scoreboard players get @s lvl
#speed
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 1
scoreboard players operation @s lvl *= @s delta
execute store result storage storage speed float 0.01 run scoreboard players get @s lvl
#jump strength
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 65
scoreboard players operation @s lvl *= @s delta
execute store result storage storage jump float 0.001 run scoreboard players get @s lvl
#safe fall
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 1
scoreboard players operation @s lvl *= @s delta
execute store result storage storage fall float 1 run scoreboard players get @s lvl
#knockback
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 2
scoreboard players operation @s lvl *= @s delta
execute store result storage storage knockback float 0.1 run scoreboard players get @s lvl
#block interaction
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 75
scoreboard players operation @s lvl *= @s delta
execute store result storage storage blockinter float 0.01 run scoreboard players get @s lvl
#entity interaction
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 75
scoreboard players operation @s lvl *= @s delta
execute store result storage storage entityinter float 0.01 run scoreboard players get @s lvl

#particleheight
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 4
scoreboard players operation @s lvl *= @s delta
execute store result storage storage particle_height float 0.1 run scoreboard players get @s lvl

#particleheight
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 4
scoreboard players operation @s lvl *= @s delta
execute store result storage storage particle_height float 0.1 run scoreboard players get @s lvl

#particledelta
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 17
scoreboard players operation @s lvl *= @s delta
execute store result storage storage particle_delta float 0.01 run scoreboard players get @s lvl

#particlecount
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 5
scoreboard players operation @s lvl *= @s delta
execute store result storage storage particle_count float 1 run scoreboard players get @s lvl

function enchants:chest/enlarging/macro_activate with storage storage

playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 0.5

scoreboard players reset @s lvl_saved
scoreboard players reset @s lvl
scoreboard players reset @s delta

#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost
