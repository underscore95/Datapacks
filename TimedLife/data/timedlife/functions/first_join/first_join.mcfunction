
# 15 minutes
scoreboard players set @s timedLife_time 18000
scoreboard players set @s timedLife_deaths 0
scoreboard players set @s timedLife_firstJoin 1

tellraw @s {"text": ""}
tellraw @s [{"text": "Welcome to", "color": "#AAAAAA"}, {"text":" TimedLife ","color":"#EE2222"}, {"text":"by ","color":"#AAAAAA"}, {"text":"unfear_","color":"#EEEEEE"}, {"text":"!","color":"#AAAAAA"}]
tellraw @s {"text": ""}
tellraw @s [{"text": "Your remaining ", "color": "#AAAAAA"}, {"text": "time", "color": "#FFFF66"}, {"text": " is constantly ticking down. Once your remaining time hits ", "color": "AAAAAA"}, {"text":"0","color":"#FFFFFF"}, {"text":", you will ","color":"#AAAAAA"}, {"text":"die","color":"#FF2222"}, {"text":".","color":"#AAAAAA"}]
tellraw @s [{"text":"You start with ","color":"#AAAAAA"}, {"text":"15 minutes","color":"#FFFF66"}, {"text":" and you can gain more by consuming rare blocks. (place them down, stand on them, and sneak!)","color":"#AAAAAA"}]
tellraw @s {"text":"Your time starts once you move!","color":"#AAAAAA"}
tellraw @s {"text": ""}

execute as @s run function timedlife:first_join/block_list