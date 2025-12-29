summon item_display ~ ~1 ~ {billboard:"vertical",item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}},Tags:["potion_spawner_display"]}
scoreboard players reset @s PotionTimer
tag @s remove potion_spawner_first_spawn
