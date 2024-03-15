clear @a[tag=in-game]
execute as @a[tag=in-game] run function bowteam:scripts/kill-counter

scoreboard players operation input Random = WeaponCount Settings
function random:random

execute if score output Random matches 0 run data merge storage bowteam {CurrentWeapon:"Bow"}
execute if score output Random matches 1 run data merge storage bowteam {CurrentWeapon:"MachineGun"}
execute if score output Random matches 2 run data merge storage bowteam {CurrentWeapon:"Crossbow"}
execute if score output Random matches 3 run data merge storage bowteam {CurrentWeapon:"Sword"}
execute if score output Random matches 4 run data merge storage bowteam {CurrentWeapon:"Trident"}
execute if score output Random matches 5 run data merge storage bowteam {CurrentWeapon:"Sniper"}
execute if score output Random matches 6 run data merge storage bowteam {CurrentWeapon:"Sniper"}

data merge storage bowteam {SpaceBoost:0b}
execute if score output Random matches 6 run data merge storage bowteam {SpaceBoost:1b}

execute if score output Random matches 0 run tellraw @a[tag=in-game] [{"text":"Changement d'arme... ","color":"light_purple"},{"text":"Bow","color":"gold"}]
execute if score output Random matches 1 run tellraw @a[tag=in-game] [{"text":"Changement d'arme... ","color":"light_purple"},{"text":"Machine Gun","color":"gold"}]
execute if score output Random matches 2 run tellraw @a[tag=in-game] [{"text":"Changement d'arme... ","color":"light_purple"},{"text":"Crossbow","color":"gold"}]
execute if score output Random matches 3 run tellraw @a[tag=in-game] [{"text":"Changement d'arme... ","color":"light_purple"},{"text":"Sword","color":"gold"}]
execute if score output Random matches 4 run tellraw @a[tag=in-game] [{"text":"Changement d'arme... ","color":"light_purple"},{"text":"Trident","color":"gold"}]
execute if score output Random matches 5 run tellraw @a[tag=in-game] [{"text":"Changement d'arme... ","color":"light_purple"},{"text":"Sniper","color":"gold"}]
execute if score output Random matches 6 run tellraw @a[tag=in-game] [{"text":"Changement d'arme... ","color":"light_purple"},{"text":"Space Snipers","color":"blue"}]

schedule function bowteam:scripts/randomweapon 15s