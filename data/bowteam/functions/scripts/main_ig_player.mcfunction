#Weapons
    #Bow
execute if data storage bowteam {CurrentWeapon:"Bow"} run item replace entity @s[nbt=!{SelectedItem:{id:"minecraft:bow"}}] hotbar.0 with bow{Enchantments:[{id:"minecraft:power",lvl:1000},{id:"minecraft:infinity",lvl:1}],HideFlags:37,Unbreakable:1b}

    #MachineGun
execute if data storage bowteam {CurrentWeapon:"MachineGun"} run item replace entity @s[nbt=!{SelectedItem:{tag:{Charged:1b}}}] hotbar.0 with crossbow{Enchantments:[{id:"minecraft:infinity", lvl:1}], HideFlags:37, Unbreakable:1b}
execute if data storage bowteam {CurrentWeapon:"MachineGun"} run item replace entity @s hotbar.0 with crossbow{Enchantments:[{id:"minecraft:infinity", lvl:1}], HideFlags:37, Unbreakable:1b, ChargedProjectiles:[{id:"minecraft:arrow", Count:1b}, {}, {}], Charged:1b}

    #Crossbow
execute if data storage bowteam {CurrentWeapon:"Crossbow"} run item replace entity @s[nbt=!{Inventory:[{tag:{ChargedProjectiles:[{id:"minecraft:arrow"}, {}, {}]}}]}] hotbar.0 with crossbow{Enchantments:[{id:"minecraft:infinity", lvl:1}, {id:"quick_charge", lvl:3}], HideFlags:37, Unbreakable:1b}

    #Sword
execute if data storage bowteam {CurrentWeapon:"Sword"} run item replace entity @s hotbar.0 with netherite_sword{Enchantments:[{id:"minecraft:sharpness", lvl:2}, {id:"minecraft:knockback", lvl:1}], HideFlags:37, Unbreakable:1b}

    #Trident
execute if data storage bowteam {CurrentWeapon:"Trident"} run item replace entity @s hotbar.0 with trident{Enchantments:[{id:"minecraft:channeling", lvl:1}]}

    #Sniper
execute as @s[scores={SniperShoot=1..}] at @s run function bowteam:scripts/snipershoot
execute if data storage bowteam {CurrentWeapon:"Sniper"} as @s if score @s WeaponCooldown matches ..0 run item replace entity @s hotbar.0 with spyglass{display:{Name:'{"text":"Sniper","italic":false}'}}

    #Shied and Arrow
execute if data storage bowteam {Shield:1b} run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:shield"}]}] weapon.offhand with shield{Unbreakable:1b}
item replace entity @s inventory.0 with arrow 1

execute as @s[scores={KillSound=1..}] run function bowteam:scripts/kill-counter

#Modes
execute if data storage bowteam {Mode:"Deathmatch"} as @s if score @s Kills >= DeathMatchKillObjective Settings run function bowteam:game/end
execute if data storage bowteam {SpaceBoost:1b} run effect give @s jump_boost 1 5 true
execute if data storage bowteam {SpaceBoost:1b} run effect give @s slow_falling 1 0 true

#Kill sound effect
execute as @s[scores={KillSound=1..,Ace=..4}] at @s run playsound block.note_block.bell player @s ~ ~ ~ 1 0.5
execute as @s[scores={KillSound=1..}] run title @s actionbar [{"text":"\u2620x"},{"score":{"name":"@s","objective":"Ace"}}]
execute as @s[scores={KillSound=1..,HeadShot=1..}] run title @s actionbar [{"text":"\u2620x"},{"score":{"name":"@s","objective":"Ace"}},{"text":" Headshot","color": "red"}]
execute as @s[scores={Ace=5..,KillSound=1..}] at @s run playsound block.note_block.bell player @s ~ ~ ~ 1 1
execute as @s[scores={Death=1..}] run scoreboard players set @s Ace 0


#Cooldown
scoreboard players remove @s[scores={WeaponCooldown=1..}] WeaponCooldown 1
scoreboard players reset @s[scores={WeaponCooldown=..1}] HeadShot