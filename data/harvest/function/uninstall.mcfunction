#> Scoreboards

# UUID Stores
scoreboard objectives remove harvest.UUID.0
scoreboard objectives remove harvest.UUID.1
scoreboard objectives remove harvest.UUID.2
scoreboard objectives remove harvest.UUID.3

scoreboard objectives remove harvest.ray.steps

scoreboard objectives remove harvest.ray.x
scoreboard objectives remove harvest.ray.y
scoreboard objectives remove harvest.ray.z

scoreboard objectives remove harvest.constant

scoreboard objectives remove harvest.interaction.lifetime

scoreboard objectives remove harvest.sneak
scoreboard objectives remove harvest.config


#> Tags

tag @a remove harvest.defaulted

tag @e remove harvest.removeTag
tag @e remove harvest.crouchHarvest
tag @e remove harvest.standHarvest

#> Entities

kill @e[tag=harvest.ray]
kill @e[tag=harvest.interaction]


#> Uninstalling Message

tellraw @s [{"text":"----------------\nThe Datapack\n","color":"gold"},{"text":"Effortless Harvest","color":"yellow"},{"text":"\nhas been uninstalled.\n\n","color":"gold"},{"text":"Scoreboards","color":"yellow"},{"text":", ","color":"gold"},{"text":"Entities","color":"yellow"},{"text":", ","color":"gold"},{"text":"Tags","color":"yellow"},{"text":" and everything else\ncreated by the datapack was removed.\n----------------","color":"gold"}]


#> Disable

datapack disable "file/Effortless Harvest.zip"
datapack disable "file/Effortless Harvest 1.20.2 1.2.3.zip"
datapack disable "file/Effortless_Harvest.zip"
datapack disable "file/Effortless_Harvest_1.20.2_1.2.3.zip"

datapack disable "file/Effortless Harvest"
datapack disable "file/Effortless Harvest 1.20.2 1.2.3"
datapack disable "file/Effortless_Harvest"
datapack disable "file/Effortless_Harvest_1.20.2_1.2.3"
