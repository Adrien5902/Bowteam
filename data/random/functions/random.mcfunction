summon marker ~ ~ ~ {Tags:["randomGen"]}
execute as @e[type=marker,tag=randomGen] store result score .seed Random run data get entity @s UUID.[0] 1
scoreboard players operation output Random = .seed Random
scoreboard players operation output Random %= input Random
tellraw @s [{"text":"Got "},{"score":{"name":"output","objective":"Random"}}]
kill @e[tag=randomGen]