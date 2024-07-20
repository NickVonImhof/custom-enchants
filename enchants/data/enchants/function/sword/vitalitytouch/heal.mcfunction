execute store result score @s lvl_saved run data get entity @p[tag=is_player] SelectedItem.components.minecraft:enchantments.levels.enchants:vitalitytouch

execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 1
scoreboard players operation @s lvl -= @s delta
execute store result storage storage health int 1 run scoreboard players get @s lvl

execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 3
scoreboard players operation @s lvl *= @s delta
execute store result storage storage particles int 1 run scoreboard players get @s lvl

function enchants:sword/vitalitytouch/macro_heal with storage storage

scoreboard players reset @s lvl_saved
scoreboard players reset @s lvl
scoreboard players reset @s delta

tag @p[tag=is_player] remove is_player
