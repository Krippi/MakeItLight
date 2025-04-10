# If player has a set value between 0 and 15 run function
execute as @a[scores={lightlevel=0..15}] run function mil:set_lightlevel

# Player has set a value that is not between 0 and 15
execute as @a[scores={lightlevel=16..}] run tellraw @s {"text":"Error: Lightlevel must be between 0 and 15!","color":"red"}
execute as @a[scores={lightlevel=16..}] run scoreboard players set @s lightlevel -1
execute as @a[scores={lightlevel=..-2}] run tellraw @s {"text":"Error: Lightlevel must be between 0 and 15!","color":"red"}
execute as @a[scores={lightlevel=..-2}] run scoreboard players set @s lightlevel -1

execute as @a unless score @s lightlevel matches 0..15 run scoreboard players enable @s lightlevel