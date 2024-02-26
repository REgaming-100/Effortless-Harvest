# Store the ray's coordinates and calculate the block-relative positions
execute store result score @s harvest.ray.x run data get entity @s Pos[0] 100
execute store result score @s harvest.ray.y run data get entity @s Pos[1] 100
execute store result score @s harvest.ray.z run data get entity @s Pos[2] 100

scoreboard players operation @s harvest.ray.x %= #100 harvest.constant
scoreboard players operation @s harvest.ray.y %= #100 harvest.constant
scoreboard players operation @s harvest.ray.z %= #100 harvest.constant

# Figure out where to spawn the interaction entity
execute align xyz run function harvest:raycast/summon_interaction

# Copy the caster's UUID
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.0 run scoreboard players get @s harvest.UUID.0
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.1 run scoreboard players get @s harvest.UUID.1
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.2 run scoreboard players get @s harvest.UUID.2
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.3 run scoreboard players get @s harvest.UUID.3

# Done preparing the interaction
tag @e[tag=harvest.interaction.current] remove harvest.interaction.current