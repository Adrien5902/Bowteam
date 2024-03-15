# -Color :
   #  -Red
execute if entity @s[team=Rouge] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:11546150}

   #  -Bleu
execute if entity @s[team=Bleu] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:3949738}

   #  -Jaune
execute if entity @s[team=Jaune] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:16701501}

   #  -Vert
execute if entity @s[team=Vert] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:6192150}

  #  -Orange
execute if entity @s[team=Orange] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:16351261}

   #  -Rose
execute if entity @s[team=Rose] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:15961002}

   #  -Lime
execute if entity @s[team=Lime] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:8439583}

   #  -Aqua
execute if entity @s[team=Aqua] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:3847130}

   #  -Violet
execute if entity @s[team=Violet] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:8991416}

   #  -Blanc
execute if entity @s[team=Blanc] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:16383998}

   #  -Gris
execute if entity @s[team=Gris] run data merge entity @e[type=#impact_projectiles,limit=1,sort=nearest,nbt={inGround:0b}] {Color:10329495}


#  -Reset all
scoreboard players reset @a[scores={ProjectileShot=1..}] ProjectileShot