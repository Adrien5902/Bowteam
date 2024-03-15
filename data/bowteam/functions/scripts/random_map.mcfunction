scoreboard players set #max Maps 0
execute as @e[type=marker,tag=spawns,tag=!lobby] run scoreboard players operation #max Maps > @s Maps
scoreboard players set input Random 8
function random:random
scoreboard players operation Map Settings = output Random
scoreboard players add Map Settings 1