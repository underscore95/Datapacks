# Check for first join
scoreboard players add @a timedLife_firstJoin 0
execute as @a[scores={timedLife_firstJoin=0}] run function timedlife:first_join/first_join

tag @a remove timedlife
tag @a[gamemode=adventure,scores={timedLife_movedSinceDeath=1..}] add timedlife
tag @a[gamemode=survival,scores={timedLife_movedSinceDeath=1..}] add timedlife

# Decrement time
scoreboard players remove @a[tag=timedlife] timedLife_time 1

# Handle death
execute as @a[scores={timedLife_time=..0}] run kill @s
execute as @a[scores={timedLife_deaths=1..}] run function timedlife:death/handle_death

# Title
execute as @a run function timedlife:time/title

# Blocks
execute as @a[scores={timedLife_sneaking=1..}] run function timedlife:blocks/block