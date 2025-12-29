# Main Player
    execute as @a[tag=in-game] at @s run function bowteam:scripts/main_ig_player

# Remove arrow particle
    execute as @e[type=arrow,nbt={inGround:1b}] run data remove entity @s Color

# Kill spawn egg
    execute at @e[tag=killspawn] run scoreboard players reset @e[tag=spawns,type=marker,distance=..1.5] Maps
    execute at @e[tag=killspawns] run scoreboard players reset @e[tag=spawns,type=marker] Maps
    execute at @e[tag=killspawns] as @e[tag=spawns,type=marker] if score @s Maps = Map Settings
    execute at @e[tag=killspawn] run kill @e[tag=spawns,type=marker,distance=..1.5]

# In-game spawns
    execute as @e[tag=spawns,tag=!lobby,sort=random] at @s if score @s Maps = Map Settings unless entity @a[distance=..3] run tp @a[sort=random,limit=1,tag=asnotspawn] ~ ~ ~
    execute as @e[tag=spawns,tag=!lobby,sort=random] at @s if score @s Maps = Map Settings unless entity @a[distance=..10] run spawnpoint @a[limit=1,sort=random,tag=in-game] ~ ~ ~
    execute as @a[tag=asnotspawn] at @s if entity @e[limit=1,distance=..2,tag=spawns,tag=!lobby] run tag @s remove asnotspawn

# Tag map spawns
    execute as @e[tag=spawns,tag=!lobby] unless score @s Maps matches 0.. run scoreboard players operation @s Maps = Map Settings

kill @e[type=arrow,nbt={life:200s,inGround:1b}]

kill @e[type=trident,nbt={inGround:1b}]

# Kill counter
    execute unless data storage bowteam {Mode:"Deathmatch"} if entity @a[tag=in-game] run function bowteam:scripts/hit
    execute if entity @a[tag=in-game] as @a[scores={ProjectileShot=1..}] at @s anchored eyes run function bowteam:scripts/tag_arrow
    execute if entity @a[tag=in-game] run function bowteam:scripts/team


scoreboard players set @a[scores={BowUsed=1..}] ProjectileShot 1
scoreboard players set @a[scores={TridentUsed=1..}] ProjectileShot 1
scoreboard players set @a[scores={CrossBowUsed=1..}] ProjectileShot 1


scoreboard players reset @a[scores={BowUsed=1..}] BowUsed
scoreboard players reset @a[scores={TridentUsed=1..}] TridentUsed
scoreboard players reset @a[scores={CrossBowUsed=1..}] CrossBowUsed

execute unless data storage bowteam {Weapon:"Random"} unless data storage bowteam {Weapon:"SpaceSnipers"} run data modify storage bowteam CurrentWeapon set from storage bowteam Weapon
execute if data storage bowteam {Weapon:"SpaceSnipers"} run data merge storage bowteam {CurrentWeapon:"Sniper"}

# Kill sound effect Reset Scoreboard
    scoreboard players reset @a KillSound

scoreboard players reset @a Death


# Potions
    execute as @e[tag=potion_spawner] at @s run function bowteam:scripts/potions/main
    execute as @e[tag=potion_spawner_remover] at @s run function bowteam:scripts/potions/remove
