$data modify storage storage:$(uuid) mainhand_new set from entity @s SelectedItem
$data modify storage storage:$(uuid) offhand_new set from entity @s Inventory[{Slot:-106b}]
$data remove storage storage:$(uuid) offhand_new.Slot