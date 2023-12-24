
execute as @s[scores={timedLife_time=..2}] run function timedlife:death/no_time
execute as @s[scores={timedLife_time=640..}] run function timedlife:death/lose_time

# Set to 30s if under 30s, so they don't get stuck in a death loop
scoreboard players set @s[scores={timedLife_time=..600}] timedLife_time 600
scoreboard players set @s timedLife_deaths 0

scoreboard players set @s timedLife_movedSinceDeath 0