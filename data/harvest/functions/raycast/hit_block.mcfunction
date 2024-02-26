# Summon the interaction
execute align xyz run summon interaction ~0.5 ~0.0 ~0.5 {width: 1.005f, height: 1.005f, response: true, Tags: ["harvest.interaction", "harvest.interaction.current", "harvest.interaction.rightToLive"]}

# Copy the caster's UUID
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.0 run scoreboard players get @s harvest.UUID.0
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.1 run scoreboard players get @s harvest.UUID.1
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.2 run scoreboard players get @s harvest.UUID.2
execute store result score @e[tag=harvest.interaction.current] harvest.UUID.3 run scoreboard players get @s harvest.UUID.3

# Done preparing the interaction
tag @e[tag=harvest.interaction.current] remove harvest.interaction.current