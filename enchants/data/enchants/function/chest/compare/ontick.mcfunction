# check if i have main and offhand items.
execute store success score @s success1 run data get entity @s SelectedItem
execute store success score @s success2 run data get entity @s Inventory[{Slot:-106b}]

#remove mainhand and offhand items if they don't exist
function enchants:chest/compare/macro/removeitems with storage storage

# store uuid in storage for current player to use their storages for this loop
execute store result storage storage uuid int 1 run scoreboard players get @s uuid

# if inventory changed, compare their items
execute if entity @s[tag=swapped] run function enchants:chest/compare/compare

# set storage to be correct values
function enchants:chest/compare/macro/modifyitems with storage storage

#cleanup
scoreboard players reset @s success1
scoreboard players reset @s success2