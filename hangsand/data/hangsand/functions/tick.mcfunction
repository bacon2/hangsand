execute as @e[type=minecraft:falling_block] at @s if block ~ ~-1 ~ #hangsand:fence_or_wall run data merge entity @s {NoGravity:1b, Motion:[0.0d,0.0d,0.0d], Tags:["hangsand"]}
execute as @e[tag=hangsand] run data modify entity @s Time set value 10s
execute as @e[tag=hangsand] at @s unless entity @e[tag=hangsandstand, distance=..0.3] if block ~ ~-1 ~ #hangsand:fence_or_wall run summon minecraft:armor_stand ~ ~-0.04 ~ {Tags:["hangsandstand"],Invisible:1b}
execute as @e[tag=hangsandstand] at @s run tp @e[tag=hangsand, limit=1, sort=nearest] ~ ~0.04 ~
execute as @e[tag=hangsandstand] at @s unless block ~ ~-1 ~ #hangsand:fence_or_wall run data merge entity @e[tag=hangsand, limit=1, sort=nearest] {NoGravity:0b}
execute as @e[tag=hangsandstand] at @s unless block ~ ~-1 ~ #hangsand:fence_or_wall run tag @e[tag=hangsand, limit=1] remove hangsand
execute as @e[tag=hangsandstand] at @s unless block ~ ~-1 ~ #hangsand:fence_or_wall run kill @s