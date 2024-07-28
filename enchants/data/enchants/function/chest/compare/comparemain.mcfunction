# check if mainhand and offhand item changed

$execute store success score @s success1 run data modify storage storage:$(uuid) offhand_new set from storage storage:$(uuid) mainhand

# ensure offhand item rn.
execute store success score @s success2 run data get entity @s Inventory[{Slot:-106b}]

execute if score @s success1 matches 0 if score @s success2 matches 1 run function enchants:chest/compare/replacemain

scoreboard players set @s success1 -1
scoreboard players set @s success2 -1

