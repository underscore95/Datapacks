
# Format time
# Convert to seconds
scoreboard players set @s timedLife_dummy 20
scoreboard players operation @s timedLife_timeSecs = @s timedLife_time
scoreboard players operation @s timedLife_timeSecs /= @s timedLife_dummy

# Extract minutes
scoreboard players operation @s timedLife_timeMins = @s timedLife_timeSecs
scoreboard players set @s timedLife_dummy 60
scoreboard players operation @s timedLife_timeMins /= @s timedLife_dummy

# Extract seconds
scoreboard players operation @s timedLife_timeSecs %= @s timedLife_dummy

# Send remaining time
title @s[tag=timedlife] actionbar [{"score":{"name":"@s","objective":"timedLife_timeMins"},"color":"#FFFF66"}, {"text": "m ", "color": "#FFFF66"}, {"score":{"name":"@s","objective":"timedLife_timeSecs"},"color":"#FFFF66"}, {"text": "s", "color": "#FFFF66"}]
title @s[tag=!timedlife] actionbar [{"score":{"name":"@s","objective":"timedLife_timeMins"},"color":"#FFFF66"}, {"text": "m ", "color": "#FFFF66"}, {"score":{"name":"@s","objective":"timedLife_timeSecs"},"color":"#FFFF66"}, {"text": "s", "color": "#FFFF66"}, {"text":" (Paused)", "color": "#444444"}]
