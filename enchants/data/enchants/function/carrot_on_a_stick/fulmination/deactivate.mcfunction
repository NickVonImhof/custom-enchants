execute anchored eyes run summon arrow ^ ^ ^.5 {NoGravity:true,Tags:["explosionorb", "current"]}
execute store result score @n[tag=current] uuid run scoreboard players get @s uuid
execute store result storage storage explosion int 1 run scoreboard players get @s fulmination_charge
function enchants:carrot_on_a_stick/fulmination/deactivate_macro with storage storage
data modify entity @n[tag=current] Owner set from entity @s UUID

#data merge entity @n[type=arrow] {weapon: {components: {"minecraft:enchantments": {levels: {"enchants:tests/explosvie_bow": 4}},"minecraft:damage": 1}, count: 1, id: "minecraft:bow"}}

function enchants:rotation

execute store result entity @n[tag=current] Motion[0] double 0.0007 run scoreboard players get @s rotX
execute store result entity @n[tag=current] Motion[1] double 0.0007 run scoreboard players get @s rotY
execute store result entity @n[tag=current] Motion[2] double 0.0007 run scoreboard players get @s rotZ
scoreboard players set @n[tag=current] lifetimer 80
execute store result score @n[tag=current] fulmination_charge run scoreboard players get @s fulmination_charge

scoreboard players reset @s rotX
scoreboard players reset @s posX
scoreboard players reset @s rotY
scoreboard players reset @s posY
scoreboard players reset @s rotZ
scoreboard players reset @s posZ

tag @n[tag=current] remove current

playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 1 0.45

function enchants:carrot_on_a_stick/fulmination/xpcost

scoreboard players reset @s fulmination_charge
scoreboard players reset @s fulmination_max_charge
scoreboard players reset @s delta
scoreboard players reset @s lvl

effect clear @s slowness
attribute @s minecraft:generic.jump_strength modifier remove fulmination

scoreboard players set @s fulmination_cd 80

#/give @s arrow[potion_contents={custom_effects:[{id:slow_falling,amplifier:1}]}]