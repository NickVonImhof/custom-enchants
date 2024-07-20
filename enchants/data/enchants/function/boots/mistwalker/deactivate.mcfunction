
gamemode survival @s[scores={gamemode=0}]
gamemode creative @s[scores={gamemode=1}]
gamemode adventure @s[scores={gamemode=2}]

execute at @s unless block ~ ~ ~ air run function enchants:tpup

playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1.3
particle dust{color:[1.0, 1.0, 1.0], scale:2.0} ~ ~1 ~ 0.5 0.75 0.5 0 60 normal

execute if entity @s[tag=leavespec] run damage @s 4

tag @s remove boots_active
tag @s add snuck
tag @s remove leavespec