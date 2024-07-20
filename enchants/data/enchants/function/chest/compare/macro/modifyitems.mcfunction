$data modify storage storage:$(uuid) mainhand set from entity @s SelectedItem
$data modify storage storage:$(uuid) offhand set from entity @s Inventory[{Slot:-106b}]
$data remove storage storage:$(uuid) offhand.Slot