execute if score @s harvest.ray.x matches ..15 run data modify storage harvest:ray x set value 0.4375
execute if score @s harvest.ray.x matches 16..84 run data modify storage harvest:ray x set value 0.5
execute if score @s harvest.ray.x matches 85.. run data modify storage harvest:ray x set value 0.5625
execute if score @s harvest.ray.y matches ..84 run data modify storage harvest:ray y set value 0.0
execute if score @s harvest.ray.y matches 85.. run data modify storage harvest:ray y set value 0.0625
execute if score @s harvest.ray.z matches ..15 run data modify storage harvest:ray z set value 0.4375
execute if score @s harvest.ray.z matches 16..84 run data modify storage harvest:ray z set value 0.5
execute if score @s harvest.ray.z matches 85.. run data modify storage harvest:ray z set value 0.5625

function harvest:macro/summon_interaction with storage harvest:ray