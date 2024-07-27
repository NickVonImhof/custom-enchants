$effect give @s regeneration infinite $(regen_amplifier) false

$execute if entity @s[scores={current_xp = 0}] run damage @s $(regen_dmg) magic by @s