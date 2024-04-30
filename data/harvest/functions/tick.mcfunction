# Enable triggers
scoreboard players enable @a harvest.config

# Default new players
tag @a[tag=!harvest.defaulted] add harvest.standHarvest
tag @a[tag=!harvest.defaulted] add harvest.defaulted

# Check for triggers
execute as @a[scores={harvest.config=1..}] run function harvest:trigger/config

# Check for interactions
execute as @e[tag=harvest.interaction] at @s run function harvest:harvest/check_interactions

# Start casting when a player holds a high level hoe
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},tag=harvest.standHarvest] unless score @s harvest.sneak matches 1.. at @s run function harvest:raycast/cast
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},tag=harvest.crouchHarvest,scores={harvest.sneak=1..}] at @s run function harvest:raycast/cast
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}},tag=harvest.standHarvest] unless score @s harvest.sneak matches 1.. at @s run function harvest:raycast/cast
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}},tag=harvest.crouchHarvest,scores={harvest.sneak=1..}] at @s run function harvest:raycast/cast

# Reset scoreboards
scoreboard players reset @a harvest.sneak