# Store the interacter's UUID in a temporary score
execute store result score #interacterUUID harvest.UUID.0 run data get entity @s interaction.player[0]
execute store result score #interacterUUID harvest.UUID.1 run data get entity @s interaction.player[1]
execute store result score #interacterUUID harvest.UUID.2 run data get entity @s interaction.player[2]
execute store result score #interacterUUID harvest.UUID.3 run data get entity @s interaction.player[3]

# Compare the UUIDs to confirm that the interacter matches the caster
# If they are the same, summon the loot
execute if score @s harvest.UUID.0 = #interacterUUID harvest.UUID.0 if score @s harvest.UUID.1 = #interacterUUID harvest.UUID.1 if score @s harvest.UUID.2 = #interacterUUID harvest.UUID.2 if score @s harvest.UUID.3 = #interacterUUID harvest.UUID.3 at @s run function harvest:harvest/loot

# Reduce remaining lifetime
scoreboard players remove @s harvest.interaction.lifetime 1

# Kill the old interaction
execute if score @s harvest.interaction.lifetime matches ..0 run kill @s

# Hide the interaction
data modify entity @s width set value 0
data modify entity @s height set value 0