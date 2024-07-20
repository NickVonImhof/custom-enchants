particle cloud ~ ~0.5 ~ 0 0 0 0.15 20 normal
playsound entity.firework_rocket.launch master @a ~ ~ ~ 0.8 1.2

#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost