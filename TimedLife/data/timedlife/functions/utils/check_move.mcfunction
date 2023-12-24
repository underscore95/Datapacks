
scoreboard players add @a timedLife_movedSinceDeath 0
execute as @a run scoreboard players operation @s timedLife_movedSinceDeath += @s timedLife_walked
execute as @a run scoreboard players operation @s timedLife_movedSinceDeath += @s timedLife_sprinted
scoreboard players set @a timedLife_walked 0
scoreboard players set @a timedLife_sprinted 0