#started = onetime tag that gets added 

execute if entity @s[scores={Carrot=1..,pressRC=0}] run function enchants:carrot_on_a_stick/activate_master
scoreboard players set @s[scores={Carrot=1..}] pressRC 5
scoreboard players remove @s[scores={pressRC=1..}] pressRC 1
tag @s add carrot_ran