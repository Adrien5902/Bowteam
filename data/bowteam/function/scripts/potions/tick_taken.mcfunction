# Ticks as/at every potion spawner which hasn't been replenished yet

particle dust{color:[0.500,0.000,0.000],scale:2} ^ ^ ^0.8 0 0 0 0 1 normal
execute if score @s PotionTimer matches 1.. run scoreboard players remove @s PotionTimer 1
execute if score @s PotionTimer matches 0 run function bowteam:scripts/potions/reset
