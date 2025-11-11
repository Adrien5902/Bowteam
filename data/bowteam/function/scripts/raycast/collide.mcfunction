## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you


# Detect Headshots/bodyshots/legshots
    execute if entity @a[tag=raycasting,scores={SniperShoot=1..}] positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run damage @s 20 minecraft:arrow by @a[tag=raycasting,scores={SniperShoot=1..},limit=1]
    execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players set @a[tag=raycasting,scores={SniperShoot=1..}] HeadShot 1

execute if entity @a[tag=raycasting,scores={SniperShoot=1..}] positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run damage @s 12 minecraft:arrow by @a[tag=raycasting,scores={SniperShoot=1..},limit=1]

execute if entity @a[tag=raycasting,scores={SniperShoot=1..}] positioned ~ ~-1.95 ~ unless entity @s[dx=0] run damage @s 8 minecraft:arrow by @a[tag=raycasting,scores={SniperShoot=1..},limit=1]

execute at @a[tag=raycasting] run playsound minecraft:entity.arrow.hit_player player @a[tag=raycasting] ~ ~ ~

#### Max out range to end the raycast
    scoreboard players set .distance Settings 1000
