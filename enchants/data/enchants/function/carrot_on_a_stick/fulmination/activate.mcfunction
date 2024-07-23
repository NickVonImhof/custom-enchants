#remove 1 point xp (for dmg feedback if out of xp)
scoreboard players set @s r_cost 100
function enchants:levels/xpcost

effect give @s slowness infinite 1 true
scoreboard players set @s fulmination_charge 0