scoreboard players operation LastMap Settings = Map Settings
execute if score Map Settings matches -1 run function bowteam:scripts/random_map

scoreboard objectives setdisplay sidebar Game
execute if data storage bowteam {Mode:"Deathmatch"} run scoreboard objectives setdisplay sidebar Kills

tag @a[tag=!spectator] add in-game
tag @a[tag=in-game] add asnotspawn

team leave @a[tag=in-game]

execute if data storage bowteam {Weapon:"Random"} run schedule function bowteam:scripts/random_weapon 15s

gamemode adventure @a[tag=in-game]

execute if data storage bowteam {Weapon:"Bow",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Bow","color":"gold"}]
execute if data storage bowteam {Weapon:"MachineGun",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"MachineGun","color":"gold"}]
execute if data storage bowteam {Weapon:"Crossbow",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Crossbow","color":"gold"}]
execute if data storage bowteam {Weapon:"Sword",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Sword","color":"gold"}]
execute if data storage bowteam {Weapon:"Trident",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Trident","color":"gold"}]
execute if data storage bowteam {Weapon:"Sniper",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Sniper","color":"gold"}]
execute if data storage bowteam {Weapon:"SpaceSnipers",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"SpaceSnipers","color":"blue"}]
execute if data storage bowteam {Weapon:"Mace",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Mace","color":"aqua"}]
execute if data storage bowteam {Weapon:"Bazooka",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Bazooka","color":"red"}]
execute if data storage bowteam {Weapon:"Random",Mode:"Normal"} run scoreboard objectives modify Game displayname [{"text":"Bowteam","color":"gold"},{"text":" - ","color":"white"},{"text":"Random","color":"light_purple"}]

execute if data storage bowteam {Weapon:"Bow",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Bow","color":"gold"}]
execute if data storage bowteam {Weapon:"MachineGun",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"MachineGun","color":"gold"}]
execute if data storage bowteam {Weapon:"Crossbow",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Crossbow","color":"gold"}]
execute if data storage bowteam {Weapon:"Sword",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Sword","color":"gold"}]
execute if data storage bowteam {Weapon:"Trident",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Trident","color":"gold"}]
execute if data storage bowteam {Weapon:"Sniper",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Sniper","color":"gold"}]
execute if data storage bowteam {Weapon:"SpaceSnipers",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"SpaceSnipers","color":"blue"}]
execute if data storage bowteam {Weapon:"Mace",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Mace","color":"aqua"}]
execute if data storage bowteam {Weapon:"Bazooka",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Bazooka","color":"red"}]
execute if data storage bowteam {Weapon:"Random",Mode:"Deathmatch"} run scoreboard objectives modify Kills displayname [{"text":"Deathmatch","color":"red"},{"text":" - ","color":"white"},{"text":"Random","color":"light_purple"}]

data merge storage bowteam {SpaceBoost:0b}
execute if data storage bowteam {Weapon:"SpaceSnipers"} run data merge storage bowteam {SpaceBoost:1b}

scoreboard players set @a Kills 0
scoreboard players set @s Ace 1
scoreboard players set @a WeaponCooldown 0

team join Rouge @r[tag=in-game,team=]
team join Bleu @r[tag=in-game,team=]
team join Jaune @r[tag=in-game,team=]
team join Vert @r[tag=in-game,team=]
team join Orange @r[tag=in-game,team=]
team join Rose @r[tag=in-game,team=]
team join Lime @r[tag=in-game,team=]
team join Aqua @r[tag=in-game,team=]
team join Violet @r[tag=in-game,team=]
team join Blanc @r[tag=in-game,team=]
team join Gris @r[tag=in-game,team=]

scoreboard players reset * KilledByRouge
scoreboard players reset * KilledByBleu
scoreboard players reset * KilledByJaune
scoreboard players reset * KilledByVert
scoreboard players reset * KilledByOrange
scoreboard players reset * KilledByRose
scoreboard players reset * KilledByLime
scoreboard players reset * KilledByAqua
scoreboard players reset * KilledByViolet
scoreboard players reset * KilledByBlanc
scoreboard players reset * KilledByGris

effect give @a[tag=in-game] instant_health 1 250 true

clear @a[tag=in-game]
