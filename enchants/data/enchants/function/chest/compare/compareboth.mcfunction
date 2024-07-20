scoreboard players reset @s success1
scoreboard players reset @s success2

# # check if both items are actually different items
$data modify storage storage:$(uuid) saved_mainhand set from storage storage:$(uuid) mainhand
$execute store success score @s success3 run data modify storage storage:$(uuid) saved_mainhand set from storage storage:$(uuid) offhand

# check if items swapped
$execute store success score @s success1 run data modify storage storage:$(uuid) mainhand_new set from storage storage:$(uuid) offhand
$execute store success score @s success2 run data modify storage storage:$(uuid) offhand_new set from storage storage:$(uuid) mainhand

# if swapped, and diff items, replace items
execute if score @s success1 matches 0 if score @s success2 matches 0 if score @s success3 matches 1 run function enchants:chest/compare/replaceboth


scoreboard players reset @s success1
scoreboard players reset @s success2
scoreboard players reset @s success3