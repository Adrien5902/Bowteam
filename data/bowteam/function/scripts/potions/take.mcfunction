# Triggers whenever a player takes a potion, potion spawner is self @s, and player is at @p

execute at @s run kill @e[distance=..1.5,tag=potion_spawner_display]
effect give @p instant_health 1 1 true
playsound block.brewing_stand.brew player @a ~ ~ ~
execute at @s run playsound block.glass.break player @a ~ ~ ~
execute at @s run particle totem_of_undying ~ ~ ~ 0 0 0 0.5 100

scoreboard players operation @s PotionTimer = PotionResetTime Settings
