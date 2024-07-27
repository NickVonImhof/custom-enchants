execute anchored eyes run summon marker ~ ~1 ~ {Tags: ["reflectionmarker", "current"]}
execute store result score @n[tag=current] uuid run scoreboard players get @s uuid

tag @n[tag=current] remove current