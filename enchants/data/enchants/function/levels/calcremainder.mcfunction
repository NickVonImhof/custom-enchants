## DEAL WITH XP
# scale cost to actual number
execute store result storage storage cost int 0.01 run scoreboard players get @s r_xp
execute store result score @s xp_cost run data get storage storage cost


# charge the cost to xp
function enchants:levels/removexp with storage storage

# clean up r_xp for cost charged (whole by 10) 
scoreboard players set @s r_cost 100
scoreboard players operation @s r_cost *= @s xp_cost
scoreboard players operation @s r_xp -= @s r_cost

## DEAL WITH HEALTH

# determine amount of xp remaining after that
execute store result score @s xp_remaining run data get entity @s XpTotal 1
scoreboard players operation @s xp_remaining -= @s xp_cost

# if negative, add negative xp to x_xp
execute if entity @s[scores={xp_remaining=..-1}] run scoreboard players operation @s d_xp -= @s xp_remaining
# if greater than 10, charge negative xp to health
execute if entity @s[scores={d_xp=1..}] run function enchants:levels/floordeficit

scoreboard players reset @s xp_cost
scoreboard players reset @s xp_remaining