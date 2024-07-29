effect give @s resistance infinite 4 false
effect give @s glowing infinite 0 true
attribute @s generic.movement_speed modifier add ironskin -0.04 add_value
# attribute @s generic.gravity modifier add ironskin 0.1 add_value
attribute @s generic.knockback_resistance modifier add ironskin 10 add_value

playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.5 2

#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost
