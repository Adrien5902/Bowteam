kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:spyglass"}}]

scoreboard players set @s WeaponCooldown 20

playsound block.wooden_trapdoor.close player @a ~ ~ ~

function bowteam:scripts/raycast/start_raycast
scoreboard players reset @s SniperShoot