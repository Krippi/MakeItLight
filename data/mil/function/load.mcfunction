# MakeItLight loaded
say MakeItLight loaded

# Set the scoreboard objective for lightlevel
scoreboard objectives add lightlevel trigger

# Allow all players to use the trigger objective
execute as @a run scoreboard players enable @s lightlevel