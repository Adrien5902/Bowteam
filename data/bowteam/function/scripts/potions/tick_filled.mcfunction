# Ticks as/at every potion spawner which hasn't been used yet

particle dust{color:[1.000,0.000,0.000],scale:2} ^ ^ ^0.8 0 0 0 0 1 normal
execute at @a[tag=in-game,distance=..0.8,nbt=!{Health:20f}] run function bowteam:scripts/potions/take
