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


#> Entities

kill @e[tag=harvest.ray]
kill @e[tag=harvest.interaction]


#> Uninstalling Message

tellraw @s [{"text":"----------------\nThe Datapack\n","color":"gold"},{"text":"Effortless Harvest","color":"yellow"},{"text":"\nhas been uninstalled.\n\n","color":"gold"},{"text":"Scoreboards","color":"yellow"},{"text":", ","color":"gold"},{"text":"Entities","color":"yellow"},{"text":", ","color":"gold"},{"text":"Tags","color":"yellow"},{"text":" and everything else\ncreated by the datapack was removed.\n----------------","color":"gold"}]


#> Disable

datapack disable "file/Effortless Harvest.zip"
datapack disable "file/Effortless Harvest 1.1.0.zip"
datapack disable "file/Effortless_Harvest.zip"
datapack disable "file/Effortless_Harvest_1.1.0.zip"

datapack disable "file/Effortless Harvest"
datapack disable "file/Effortless Harvest 1.1.0"
datapack disable "file/Effortless_Harvest.zip"
datapack disable "file/Effortless_Harvest_1.1.0.zip"