execute store result score @s[predicate=enchants:shield/reflection/reflection_offhand] lvl run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:reflection
execute store result score @s[predicate=enchants:shield/reflection/reflection_mainhand] lvl run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:reflection


# particles
tag @s add is_player
execute as @n[type=marker,tag=reflectionmarker] if score @s uuid = @p[tag=is_player] uuid run tag @s add myreflectionmarker
tag @s remove is_player


#distance
# distance = lvl + 3
#base value
scoreboard players set @s delta 3
scoreboard players operation @s lvl += @s delta
execute store result storage storage distance_reflect int 1 run scoreboard players get @s lvl
scoreboard players set @s delta 1
scoreboard players operation @s lvl -= @s delta
execute store result storage storage distance_particles int 1 run scoreboard players get @s lvl
scoreboard players operation @s lvl -= @s delta
execute store result storage storage distance_kill int 1 run scoreboard players get @s lvl

function enchants:shield/reflection/macro_whileactive with storage storage

tag @n[type=marker,tag=myreflectionmarker] remove myreflectionmarker

scoreboard players reset @s lvl
scoreboard players reset @s delta


function enchants:shield/reflection/xpcost








