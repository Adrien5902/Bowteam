#Detect players in a team
execute as @a[team=Rouge] run scoreboard players add Rouge Settings 1
execute as @a[team=Bleu] run scoreboard players add Bleu Settings 1
execute as @a[team=Jaune] run scoreboard players add Jaune Settings 1
execute as @a[team=Vert] run scoreboard players add Vert Settings 1
execute as @a[team=Orange] run scoreboard players add Orange Settings 1
execute as @a[team=Rose] run scoreboard players add Rose Settings 1
execute as @a[team=Lime] run scoreboard players add Lime Settings 1
execute as @a[team=Aqua] run scoreboard players add Aqua Settings 1
execute as @a[team=Violet] run scoreboard players add Violet Settings 1
execute as @a[team=Blanc] run scoreboard players add Blanc Settings 1
execute as @a[team=Gris] run scoreboard players add Gris Settings 1

#Detect all players in-game
execute as @a[tag=in-game] run scoreboard players add Players Settings 1

#End if team is full
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Rouge Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Bleu Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Jaune Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Vert Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Orange Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Rose Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Lime Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Aqua Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Violet Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Blanc Settings = Players Settings run function bowteam:game/end
execute if data storage bowteam {Mode:"Normal"} unless score Players Settings matches 0 if score Gris Settings = Players Settings run function bowteam:game/end

execute if data storage bowteam {Mode:"Deathmatch"} as @a[tag=in-game] if score @s Kills >= DeathmacthKillObjective Settings run function bowteam:game/end

#Game scoreboard
execute if score Rouge Settings matches 1.. run scoreboard players set -Rouge: Game -1
scoreboard players set @a[team=Rouge] Game -2
execute unless score Rouge Settings matches 1.. run scoreboard players reset -Rouge: Game

execute if score Bleu Settings matches 1.. run scoreboard players set -Bleu: Game -3
scoreboard players set @a[team=Bleu] Game -4
execute unless score Bleu Settings matches 1.. run scoreboard players reset -Bleu: Game

execute if score Jaune Settings matches 1.. run scoreboard players set -Jaune: Game -5
scoreboard players set @a[team=Jaune] Game -6
execute unless score Jaune Settings matches 1.. run scoreboard players reset -Jaune: Game

execute if score Vert Settings matches 1.. run scoreboard players set -Vert: Game -7
scoreboard players set @a[team=Vert] Game -8
execute unless score Vert Settings matches 1.. run scoreboard players reset -Vert: Game

execute if score Orange Settings matches 1.. run scoreboard players set -Orange: Game -9
scoreboard players set @a[team=Orange] Game -10
execute unless score Orange Settings matches 1.. run scoreboard players reset -Orange: Game

execute if score Rose Settings matches 1.. run scoreboard players set -Rose: Game -11
scoreboard players set @a[team=Rose] Game -12
execute unless score Rose Settings matches 1.. run scoreboard players reset -Rose: Game

execute if score Lime Settings matches 1.. run scoreboard players set -Lime: Game -13
scoreboard players set @a[team=Lime] Game -14
execute unless score Lime Settings matches 1.. run scoreboard players reset -Lime: Game

execute if score Aqua Settings matches 1.. run scoreboard players set -Aqua: Game -15
scoreboard players set @a[team=Aqua] Game -16
execute unless score Aqua Settings matches 1.. run scoreboard players reset -Aqua: Game

execute if score Violet Settings matches 1.. run scoreboard players set -Violet: Game -17
scoreboard players set @a[team=Violet] Game -18
execute unless score Violet Settings matches 1.. run scoreboard players reset -Violet: Game

execute if score Blanc Settings matches 1.. run scoreboard players set -Blanc: Game -19
scoreboard players set @a[team=Blanc] Game -20
execute unless score Blanc Settings matches 1.. run scoreboard players reset -Blanc: Game

execute if score Gris Settings matches 1.. run scoreboard players set -Gris: Game -21
scoreboard players set @a[team=Gris] Game -22
execute unless score Gris Settings matches 1.. run scoreboard players reset -Gris: Game

#Tell team
#Red
item replace entity @a[team=Rouge] hotbar.8 with red_concrete
#Blue
item replace entity @a[team=Bleu] hotbar.8 with blue_concrete
#Yellow
item replace entity @a[team=Jaune] hotbar.8 with yellow_concrete
#Green
item replace entity @a[team=Vert] hotbar.8 with green_concrete
#Orange
item replace entity @a[team=Orange] hotbar.8 with orange_concrete
#Pink
item replace entity @a[team=Rose] hotbar.8 with pink_concrete
#Lime
item replace entity @a[team=Lime] hotbar.8 with lime_concrete
#Aqua
item replace entity @a[team=Aqua] hotbar.8 with light_blue_concrete
#Violet
item replace entity @a[team=Violet] hotbar.8 with purple_concrete
#Blanc
item replace entity @a[team=Blanc] hotbar.8 with white_concrete
#Gris
item replace entity @a[team=Gris] hotbar.8 with gray_concrete