# Ticks as and at all the potion spawners

execute if entity @s[tag=potion_spawner_first_spawn] run function bowteam:scripts/potions/reset

tp @s ~ ~ ~ ~20 ~

execute if score @s PotionTimer matches 1.. run function bowteam:scripts/potions/tick_taken
execute unless score @s PotionTimer matches 1.. run function bowteam:scripts/potions/tick_filled
