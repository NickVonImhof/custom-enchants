tag @s remove carrot_active

tag @s remove fulmination
scoreboard players reset @s pressRC

# tag @s add is_player
# execute as @e[tag=flame,type=small_fireball] if score @s uuid = @n[tag=is_player] uuid run tag @s add myflame
# tag @s remove is_player
# kill @e[tag=myflame]