#Config
tellraw @a[gamemode=creative] ["",{"text":"Merci d'avoir installé ce datapack","color":"green"},{"text":"\n"},{"text":"["},{"text":"Recevoir les Spawns","color":"aqua","clickEvent":{"action":"run_command","value":"/function bowteam:create/spawns"}},{"text":"]"},{"text":"\n"},{"text": "["},{"text": "Devenir Spec","color": "blue","clickEvent":{"action":"run_command","value":"/tag @s add spectator"}},{"text":"]"},{"text": "  ["},{"text": "Ne plus être Spec","color": "gray","clickEvent":{"action": "run_command","value":"/tag @s remove spectator"}},{"text": "]"},{"text":"\n"},{"text": "["},{"text": "Start","color": "light_purple","clickEvent": {"action": "run_command","value": "/function bowteam:game/start"}},{"text": "]"},{"text": "  ["},{"text": "End","color": "red","clickEvent": {"action": "run_command","value": "/function bowteam:game/end"}},{"text": "]"},{"text":"\n"},{"text": "["},{"text": "Select Map","clickEvent": {"action": "suggest_command","value": "/scoreboard players set Map Settings "},"color": "aqua"},{"text": "]"},{"text":"\n"},{"text":"\n"},{"text":"[","color": "gold"},{"text":"Désinstaller","color":"red","clickEvent":{"action":"suggest_command","value":"/function bowteam:scripts/unistall"}},{"text":"]","color": "gold"}]

gamerule showDeathMessages false
gamerule keepInventory true
gamerule doImmediateRespawn true
schedule function bowteam:scripts/resetteams 5t replace
schedule function bowteam:scripts/clear_lag 5s replace

#Add Scores
scoreboard objectives add BowUsed minecraft.used:minecraft.bow
scoreboard objectives add CrossBowUsed minecraft.used:minecraft.crossbow
scoreboard objectives add TridentUsed minecraft.used:minecraft.trident
scoreboard objectives add ProjectileShot dummy
scoreboard objectives add Settings dummy
scoreboard objectives add Maps dummy
scoreboard objectives add Game dummy
scoreboard objectives add Kills playerKillCount
scoreboard objectives add KillSound playerKillCount
scoreboard objectives add Ace playerKillCount
scoreboard objectives add Death deathCount
scoreboard objectives add HeadShot dummy
scoreboard objectives add WeaponCooldown dummy
scoreboard objectives add SniperShoot minecraft.dropped:minecraft.spyglass
scoreboard objectives modify Game displayname {"text": "Bowteam","bold": true,"color": "gold"}
scoreboard objectives add KilledByRouge killedByTeam.red
scoreboard objectives add KilledByBleu killedByTeam.blue
scoreboard objectives add KilledByJaune killedByTeam.yellow
scoreboard objectives add KilledByVert killedByTeam.dark_green
scoreboard objectives add KilledByOrange killedByTeam.gold
scoreboard objectives add KilledByRose killedByTeam.light_purple
scoreboard objectives add KilledByLime killedByTeam.green
scoreboard objectives add KilledByAqua killedByTeam.aqua
scoreboard objectives add KilledByViolet killedByTeam.dark_purple
scoreboard objectives add KilledByBlanc killedByTeam.white
scoreboard objectives add KilledByGris killedByTeam.dark_gray

#Add Teams
team add Rouge {"text": "Rouge","color": "red"}
team add Bleu {"text": "Bleu","color": "bleu"}
team add Jaune {"text": "Jaune","color": "yellow"}
team add Vert {"text": "Vert","color": "dark_green"}
team add Orange {"text": "Orange","color": "gold"}
team add Rose {"text": "Rose","color": "light_purple"}
team add Lime {"text": "Lime","color": "green"}
team add Aqua {"text": "Aqua","color": "aqua"}
team add Violet {"text": "Violet","color": "dark_purple"}
team add Blanc {"text": "Blanc","color": "white"}
team add Gris {"text": "Gris","color": "dark_gray"}

#Modify teams colors
team modify Rouge color red
team modify Bleu color blue
team modify Jaune color yellow
team modify Vert color dark_green
team modify Orange color gold
team modify Rose color light_purple
team modify Lime color green
team modify Aqua color aqua
team modify Violet color dark_purple
team modify Blanc color white
team modify Gris color dark_gray

#Select Default Settings
execute unless score Map Settings matches 0.. run scoreboard players set Map Settings 0
scoreboard players set WeaponCount Settings 7
execute unless score DeathMatchKillObjective Settings matches 0.. run scoreboard players set DeathMatchKillObjective Settings 30
execute unless data storage bowteam Mode run data merge storage bowteam {Mode:"Normal"}
execute unless data storage bowteam Weapon run data merge storage bowteam {Weapon:"Bow"}
execute unless data storage bowteam Shield run data merge storage bowteam {Shield:1b}