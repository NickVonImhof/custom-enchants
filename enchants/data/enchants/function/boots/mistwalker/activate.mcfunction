
gamemode spectator @s

playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1.6
particle dust{color:[1.0, 1.0, 1.0], scale:2.0} ~ ~1 ~ 0.5 0.75 0.5 0 60 normal

tag @s add boots_active
tag @s add snuck

#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost