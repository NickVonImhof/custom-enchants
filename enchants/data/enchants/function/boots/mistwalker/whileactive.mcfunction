function enchants:boots/mistwalker/xpcost

execute if entity @s[scores={current_xp=..0}] run tag @s add leavespec
execute if entity @s[scores={current_xp=..0}] run function enchants:boots/mistwalker/deactivate