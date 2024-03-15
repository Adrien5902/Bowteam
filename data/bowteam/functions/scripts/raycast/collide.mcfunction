## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you


# Detect Headshots/bodyshots/legshots
execute if entity @a[tag=raycasting,scores={SniperShoot=1..}] positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players set @s hp_dmg 20
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players set @a[tag=raycasting,scores={SniperShoot=1..}] HeadShot 1

execute if entity @a[tag=raycasting,scores={SniperShoot=1..}] positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run scoreboard players set @s hp_dmg 12

execute if entity @a[tag=raycasting,scores={SniperShoot=1..}] positioned ~ ~-1.95 ~ unless entity @s[dx=0] run scoreboard players set @s hp_dmg 8

execute at @a[tag=raycasting] run playsound minecraft:entity.arrow.hit_player player @a[tag=raycasting] ~ ~ ~

tag @a[tag=raycasting] add raycastingkiller

#### Max out range to end the raycast
scoreboard players set .distance Settings 1000