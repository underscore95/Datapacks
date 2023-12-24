execute as @s run setblock ~ ~-1 ~ air
playsound block.enchantment_table.use master @s

tellraw @a [{"text": "+30 Minutes", "color": "#FFFF66"}, {"text": " (Block of Netherite)", "color": "#555555"}]
scoreboard players add @s timedLife_time 36000