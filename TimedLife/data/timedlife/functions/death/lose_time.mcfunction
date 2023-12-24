scoreboard players set @a timedLife_deathLoseDividor 2

scoreboard players operation @s timedLife_deathTimeLost = @s timedLife_time
scoreboard players operation @s timedLife_time /= @s timedLife_deathLoseDividor
scoreboard players set @s[scores={timedLife_time=..600}] timedLife_time 600
scoreboard players operation @s timedLife_deathTimeLost -= @s timedLife_time

tellraw @s {"text": "You died and lost some time!", "color": "#AAAAAA"}

# Format time
# Convert to seconds
scoreboard players set @s timedLife_dummy 20
scoreboard players operation @s timedLife_deathTimeLost /= @s timedLife_dummy

# Extract minutes
scoreboard players operation @s timedLife_deathTimeLostMins = @s timedLife_deathTimeLost
scoreboard players set @s timedLife_dummy 60
scoreboard players operation @s timedLife_deathTimeLostMins /= @s timedLife_dummy

# Extract seconds
scoreboard players operation @s timedLife_deathTimeLost %= @s timedLife_dummy

# Send lost time
tellraw @s [{"text":"▶ ","color":"#333333"}, {"text":"You lost ","color":"#FF3333"}, {"score":{"name":"@s","objective":"timedLife_deathTimeLostMins"},"color":"#FF3333"}, {"text": " minutes","color":"#FF3333"}, {"text": " and ", "color": "#FF3333"}, {"score":{"name":"@s","objective":"timedLife_deathTimeLost"},"color":"#FF3333"}, {"text": " seconds","color":"#FF3333"}, {"text": ".", "color": "#FF3333"}]
