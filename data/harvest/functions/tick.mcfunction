# Check for interactions
execute as @e[tag=harvest.interaction] at @s run function harvest:harvest/check_interactions

# Start casting when a player holds a high level hoe
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] at @s run function harvest:raycast/cast
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] at @s run function harvest:raycast/cast