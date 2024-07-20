execute anchored eyes run summon small_fireball ^ ^-.62 ^.5 {Tags: ["flame", "current"]}
execute store result score @n[tag=current] uuid run scoreboard players get @s uuid

function enchants:rotation

execute store result score @s[predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_offhand] lvl_saved run data get entity @s Inventory[{Slot:-106b}].components.minecraft:enchantments.levels.enchants:flamethrower
execute store result score @s[predicate=enchants:carrot_on_a_stick/flamethrower/flamethrower_mainhand] lvl_saved run data get entity @s SelectedItem.components.minecraft:enchantments.levels.enchants:flamethrower

# shooting speed
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 100
scoreboard players operation @s lvl *= @s delta
execute store result storage storage shootspeed double 0.000001 run scoreboard players get @s lvl

#life timer
execute store result score @s lvl run scoreboard players get @s lvl_saved
scoreboard players set @s delta 10
scoreboard players operation @s lvl *= @s delta
scoreboard players set @s delta 5
scoreboard players operation @s lvl += @s delta
execute store result storage storage lifetimer int 1 run scoreboard players get @s lvl

function enchants:carrot_on_a_stick/flamethrower/macro_shoot with storage storage

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

tag @n[tag=current] remove current

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1

#clean up
scoreboard players reset @s lvl_saved
scoreboard players reset @s lvl
scoreboard players reset @s delta


function enchants:carrot_on_a_stick/flamethrower/xpcost






