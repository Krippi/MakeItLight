#Before Output
# Player does not stand in a light block
execute if score @s lightlevel matches 0..15 at @s unless block ~ ~ ~ minecraft:light run tellraw @s {"text":"Error: You must stand in a light block!","color":"red"}

# Player set light to 0 and break the light block
execute if score @s lightlevel matches 0 at @s if block ~ ~ ~ minecraft:light run summon item ~ ~ ~ {Item:{id:"minecraft:light",Count:1b},Glowing:1b}
execute if score @s lightlevel matches 0 at @s if block ~ ~ ~ minecraft:light run tellraw @s {"text":"You broke the light and the item got dropped.","color":"green"}

#Output
execute if score @s lightlevel matches 0 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:air
execute if score @s lightlevel matches 1 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=1]
execute if score @s lightlevel matches 2 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=2]
execute if score @s lightlevel matches 3 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=3]
execute if score @s lightlevel matches 4 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=4]
execute if score @s lightlevel matches 5 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=5]
execute if score @s lightlevel matches 6 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=6]
execute if score @s lightlevel matches 7 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=7]
execute if score @s lightlevel matches 8 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=8]
execute if score @s lightlevel matches 9 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=9]
execute if score @s lightlevel matches 10 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=10]
execute if score @s lightlevel matches 11 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=11]
execute if score @s lightlevel matches 12 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=12]
execute if score @s lightlevel matches 13 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=13]
execute if score @s lightlevel matches 14 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=14]
execute if score @s lightlevel matches 15 at @s if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:light[level=15]


#After Output
# Player successfully set the light level
execute if score @s lightlevel matches 0..15 at @s if block ~ ~ ~ minecraft:light run tellraw @s [ {"text":"You set the lightlevel to: ","color":"green"}, {"score":{"name":"@s","objective":"lightlevel"},"color":"gold"}]

# Reset the score so the player can receive permission again this tick
scoreboard players set @s lightlevel -1