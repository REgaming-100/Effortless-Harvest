$tag @s[tag=$(tag)] add harvest.removeTag
$tag @s add $(tag)
$tag @s[tag=harvest.removeTag] remove $(tag)
tag @s[tag=harvest.removeTag] remove harvest.removeTag