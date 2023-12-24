execute as @s run setblock ~ ~-1 ~ air
playsound block.enchantment_table.use master @s

tellraw @a [{"text": "+1 Minute", "color": "#FFFF66"}, {"text": " (Block of Redstone)", "color": "#555555"}]
scoreboard players add @s timedLife_time 1200