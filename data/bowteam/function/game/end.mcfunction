clear @a[tag=in-game]
title @a[tag=in-game] times 20 160 20
title @a[tag=in-game] subtitle {"text": ""}

execute if data storage bowteam {Mode:"Deathmatch"} as @a if score @s Kills >= DeathMatchKillObjective Settings run title @a[tag=in-game] subtitle [{"selector":"@s"},{"text": " a gagné","color": "white"}]

execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Rouge Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Rouge","color": "red"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Bleu Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Bleu","color": "blue"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Jaune Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Jaune","color": "yellow"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Vert Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Vert","color": "dark_green"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Orange Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Orange","color": "gold"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Rose Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Rose","color": "light_purple"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Lime Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Lime","color": "green"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Aqua Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Aqua","color": "aqua"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Violet Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Violet","color": "dark_purple"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Blanc Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Blanc","color": "white"},{"text": " a gagné"}] 
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Gris Settings = Players Settings run title @a[tag=in-game] subtitle [{"text": "L'équipe ","color": "white"},{"text": "Gris","color": "dark_gray"},{"text": " a gagné"}] 

title @a[tag=in-game] title {"text": "GG","color": "green"}

tag @a[tag=in-game] add end
tag @a[tag=in-game] remove in-game
schedule function bowteam:scripts/reset 10s append

schedule clear bowteam:scripts/random_weapon
