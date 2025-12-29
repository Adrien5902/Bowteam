## Weapons
    # Bow
        execute if data storage bowteam {CurrentWeapon:"Bow"} run item replace entity @s[nbt=!{SelectedItem:{id:"minecraft:bow"}}] hotbar.0 with bow[enchantments={infinity:1,power:255},unbreakable={},]

    # MachineGun
        execute if data storage bowteam {CurrentWeapon:"MachineGun"} run item replace entity @s[nbt=!{SelectedItem:{components:{"minecraft:charged_projectiles":[]}}}] hotbar.0 with crossbow[enchantments={infinity:1},unbreakable={}]
        execute if data storage bowteam {CurrentWeapon:"MachineGun"} run item replace entity @s hotbar.0 with crossbow[enchantments={infinity:1},unbreakable={}, charged_projectiles=[{id:"minecraft:arrow", count:1}]]

    # Crossbow
        execute if data storage bowteam {CurrentWeapon:"Crossbow"} run item replace entity @s[nbt=!{Inventory:[{components:{"minecraft:charged_projectiles":[{id:"minecraft:arrow"}]}}]}] hotbar.0 with crossbow[enchantments={infinity:1,quick_charge:3},unbreakable={}]

    # Sword
        execute if data storage bowteam {CurrentWeapon:"Sword"} run item replace entity @s hotbar.0 with netherite_sword[enchantments={sharpness:2, knockback:1}, unbreakable={}]

    # Trident
        execute if data storage bowteam {CurrentWeapon:"Trident"} run item replace entity @s hotbar.0 with trident[enchantments={channeling:1}]

    # Sniper
        execute as @s[scores={SniperShoot=1..}] at @s run function bowteam:scripts/snipershoot
        execute if data storage bowteam {CurrentWeapon:"Sniper"} as @s if score @s WeaponCooldown matches ..0 run item replace entity @s hotbar.0 with spyglass[custom_name=[{"text":"Sniper","italic":false}]]

    # Mace
        execute if data storage bowteam {CurrentWeapon:"Mace"} run item replace entity @s hotbar.0 with mace[unbreakable={}]
        execute if data storage bowteam {CurrentWeapon:"Mace"} run item replace entity @s hotbar.1 with wind_charge

    # Bazooka
        execute if data storage bowteam {CurrentWeapon:"Bazooka"} run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:crossbow"}]}] hotbar.0 with crossbow[tooltip_display={hidden_components:["charged_projectiles"]},custom_name={"color":"red","italic":false,"text":"Bazooka"},unbreakable={},enchantments={quick_charge:3}] 1
        execute if data storage bowteam {CurrentWeapon:"Bazooka"} run function bowteam:scripts/tag_firework

    # Shied and Arrow
        execute if data storage bowteam {Shield:1b} unless data storage bowteam {CurrentWeapon:"Bazooka"} run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:shield"}]}] weapon.offhand with shield[unbreakable={}]
        item replace entity @s inventory.0 with arrow 1


# Kill Counter
    execute as @s[scores={KillSound=1..}] run function bowteam:scripts/kill-counter

# Modes
    execute if data storage bowteam {Mode:"Deathmatch"} as @s if score @s Kills >= DeathMatchKillObjective Settings run function bowteam:game/end
    execute if data storage bowteam {SpaceBoost:1b} run effect give @s jump_boost 1 5 true
    execute if data storage bowteam {SpaceBoost:1b} run effect give @s slow_falling 1 0 true

# Kill sound effect
    execute as @s[scores={KillSound=1..,Ace=..4}] at @s run playsound block.note_block.bell player @s ~ ~ ~ 1 0.5
    execute as @s[scores={KillSound=1..,Ace=..4}] run title @s actionbar [{"text":"\u2620x"},{"score":{"name":"@s","objective":"Ace"}}]
    execute as @s[scores={KillSound=1..,HeadShot=1..}] run title @s actionbar [{"text":"\u2620x"},{"score":{"name":"@s","objective":"Ace"}},{"text":" Headshot","color": "red"}]
    execute as @s[scores={KillSound=1..,Ace=5..}] run title @s actionbar [{"text":"\u2620x",color:"gold"},{"score":{"name":"@s","objective":"Ace"},color:"gold"}]
    execute as @s[scores={KillSound=1..,HeadShot=1..,Ace=5..}] run title @s actionbar [{"text":"\u2620x",color:"gold"},{"score":{"name":"@s","objective":"Ace"}},{"text":" Headshot","color": "red"}]
    execute as @s[scores={Ace=5..,KillSound=1..}] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1
    execute as @s[scores={Death=1..}] run scoreboard players set @s Ace 0


# Cooldown
    scoreboard players remove @s[scores={WeaponCooldown=1..}] WeaponCooldown 1
    scoreboard players reset @s[scores={WeaponCooldown=..1}] HeadShot
