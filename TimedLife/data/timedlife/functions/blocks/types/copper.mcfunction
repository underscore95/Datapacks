execute as @s run setblock ~ ~-1 ~ air
playsound block.enchantment_table.use master @s

tellraw @a [{"text": "+45 Seconds", "color": "#FFFF66"}, {"text": " (Block of Copper)", "color": "#555555"}]
scoreboard players add @s timedLife_time 900