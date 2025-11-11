scoreboard objectives remove BowUsed
scoreboard objectives remove CrossBowUsed
scoreboard objectives remove TridentUsed
scoreboard objectives remove ProjectileShot
scoreboard objectives remove Settings
scoreboard objectives remove Maps
scoreboard objectives remove Game
scoreboard objectives remove Kills
scoreboard objectives remove KillSound
scoreboard objectives remove Ace
scoreboard objectives remove Death
scoreboard objectives remove KilledByRouge
scoreboard objectives remove KilledByBleu
scoreboard objectives remove KilledByJaune
scoreboard objectives remove KilledByVert
scoreboard objectives remove KilledByOrange
scoreboard objectives remove KilledByRose
scoreboard objectives remove KilledByLime
scoreboard objectives remove KilledByAqua
scoreboard objectives remove KilledByViolet
scoreboard objectives remove KilledByBlanc
scoreboard objectives remove KilledByGris

team remove Aqua
team remove Blanc
team remove Bleu
team remove Gris
team remove Jaune
team remove Lime
team remove Orange
team remove Rose
team remove Rouge
team remove Vert
team remove Violet

tellraw @s {"text": "Vous pouvez maintenant supprimer le datapack du fichier","color": "gold"}

kill @e[tag=spawns]
tag @a[tag=in-game] remove in-game
tag @a[tag=spectator] remove spectator