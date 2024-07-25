tag @s add fulmination
scoreboard players set @s pressRC 0
execute unless entity @s[scores={fulmination_cd=1..}] run scoreboard players set @s fulmination_cd 0