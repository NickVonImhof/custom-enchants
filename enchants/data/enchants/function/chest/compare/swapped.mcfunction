#revoke advancement to run it again 
advancement revoke @s only enchants:inventory_change

execute unless entity @s[tag=swapped] run tag @s add swapped

