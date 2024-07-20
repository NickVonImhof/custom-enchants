execute store result storage storage damage float 1 run scoreboard players get @s d_xp
function enchants:levels/removehealth with storage storage
scoreboard players set @s[scores={success3=1}] d_xp 0
scoreboard players reset @s success3