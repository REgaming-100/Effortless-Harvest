# Summon a ray at the caster
summon area_effect_cloud ~ ~ ~ {Duration: 1, Tags: ["harvest.ray"]}

# Copy the caster's UUID
execute store result score @e[tag=harvest.ray] harvest.UUID.0 run data get entity @s UUID[0]
execute store result score @e[tag=harvest.ray] harvest.UUID.1 run data get entity @s UUID[1]
execute store result score @e[tag=harvest.ray] harvest.UUID.2 run data get entity @s UUID[2]
execute store result score @e[tag=harvest.ray] harvest.UUID.3 run data get entity @s UUID[3]

# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @e[tag=harvest.ray] ^ ^ ^ ~ ~

# Initialize steps
scoreboard players set @e[tag=harvest.ray] harvest.ray.steps 74

# Move the ray
execute as @e[tag=harvest.ray] at @s run function harvest:raycast/move

# Destroy the ray
kill @e[tag=harvest.ray]