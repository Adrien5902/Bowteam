tp @a[tag=end] @e[tag=lobby,limit=1]
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=trident]
scoreboard players reset * Game
scoreboard players reset * Kills
scoreboard players reset * Ace
scoreboard players reset * WeaponCooldown
team leave *
scoreboard objectives setdisplay sidebar
clear @a[tag=end]
execute at @e[tag=lobby,limit=1] run spawnpoint @a[tag=end] ~ ~ ~
tag @a[tag=end] remove end
scoreboard players operation Map Settings = LastMap Settings
