# Move forward
tp @s ^ ^ ^0.0625

# Check for collisions with blocks
execute if block ~ ~ ~ #harvest:crops[age=7] run function harvest:raycast/hit_block
execute if block ~ ~ ~ #harvest:crops_age3[age=3] run function harvest:raycast/hit_block
execute if block ~ ~ ~ air run tag @s add harvest.ray.continue
execute if block ~ ~ ~ #harvest:crops run tag @s add harvest.ray.continue
execute if block ~ ~ ~ #harvest:crops[age=7] run tag @s remove harvest.ray.continue
execute if block ~ ~ ~ #harvest:crops_age3[age=3] run tag @s remove harvest.ray.continue
scoreboard players set @s[tag=!harvest.ray.continue] harvest.ray.steps 0
tag @s remove harvest.ray.continue

# Decrease the number of remaining steps
scoreboard players remove @s harvest.ray.steps 1

# Recurse until the ray hits a block or runs out of steps
execute as @s[scores={harvest.ray.steps=1..}] at @s run function harvest:raycast/move