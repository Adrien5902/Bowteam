execute if score #temp cw_hp_old matches ..0 run scoreboard players add @a[tag=raycastingkiller] Kills 1
execute if score #temp cw_hp_old matches ..0 run scoreboard players add @a[tag=raycastingkiller] KillSound 1
execute if score #temp cw_hp_old matches ..0 run scoreboard players add @a[tag=raycastingkiller] Ace 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Rouge] run scoreboard players add @s KilldRouge 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Bleu] run scoreboard players add @s KilldBleu 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Jaune] run scoreboard players add @s KilldJaune 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Vert] run scoreboard players add @s KilldVert 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Orange] run scoreboard players add @s KilldOrange 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Rose] run scoreboard players add @s KilldRose 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Lime] run scoreboard players add @s KilldLime 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Aqua] run scoreboard players add @s KilldAqua 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Violet] run scoreboard players add @s KilldViolet 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Blanc] run scoreboard players add @s KilldBlanc 1
execute if score #temp cw_hp_old matches ..0 if entity @a[tag=raycastingkiller,team=Gris] run scoreboard players add @s KilldGris 1

execute if score #temp cw_hp_old matches ..0 run kill @s

execute if score #temp cw_hp_old matches 1..511 run function cw_hp_control:set_hp/l3_i0
execute if score #temp cw_hp_old matches 512..1023 run function cw_hp_control:set_hp/l3_i512

tag @a[tag=raycastingkiller] remove raycastingkiller