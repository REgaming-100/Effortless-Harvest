#> Scoreboards

# UUID Stores
scoreboard objectives add harvest.UUID.0 dummy
scoreboard objectives add harvest.UUID.1 dummy
scoreboard objectives add harvest.UUID.2 dummy
scoreboard objectives add harvest.UUID.3 dummy

# Step count for raycasting
scoreboard objectives add harvest.ray.steps dummy

# Calculation of the ray's position
scoreboard objectives add harvest.ray.x dummy
scoreboard objectives add harvest.ray.y dummy
scoreboard objectives add harvest.ray.z dummy

# Constant 100 for calculation
scoreboard objectives add harvest.constant dummy
scoreboard players set #100 harvest.constant 100

# To keep track of the remaining lifetime of interactions
scoreboard objectives add harvest.interaction.lifetime dummy
execute unless score #initial harvest.interaction.lifetime = #initial harvest.interaction.lifetime run scoreboard players set #initial harvest.interaction.lifetime 3