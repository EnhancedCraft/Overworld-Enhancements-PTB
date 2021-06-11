#bridge-file-version: #0
#expired torch
scoreboard objectives add expire dummy
execute @a ~~~ detect ~~1~ light_block 10 scoreboard players add @s[tag=torch] expire 1
execute @a ~~~ detect ~~2~ light_block 10 scoreboard players add @s[tag=torch] expire 1
execute @a ~~~ detect ~~3~ light_block 10 scoreboard players add @s[tag=torch] expire 1
execute @a ~~~ detect ~~4~ light_block 10 scoreboard players add @s[tag=torch] expire 1
execute @a ~~~ detect ~~-4~ light_block 10 scoreboard players add @s[tag=torch] expire 1
execute @a ~~~ detect ~~-3~ light_block 10 scoreboard players add @s[tag=torch] expire 1
execute @a ~~~ detect ~~-2~ light_block 10 scoreboard players add @s[tag=torch] expire 1
execute @a ~~~ detect ~-1~~ light_block 10 scoreboard players add @s[tag=torch] expire 1
clear @a[scores={expire=3600}] torch 0 1
scoreboard players set @a[scores={expire=3601..}] expire 0
 
 
#lantern expire
scoreboard objectives add Tickdelay dummy
scoreboard objectives add Minutes dummy
execute @a ~~~ detect ~ ~1 ~ light_block 15 scoreboard players add @s[tag=lantern] Tickdelay 1
execute @a ~~~ detect ~ ~1 ~ light_block 15 scoreboard players add @s[tag=lantern,scores={Tickdelay=24000}] Minutes 1
execute @a[scores={Tickdelay=24000}] ~ ~ ~ clear @a[scores={Tickdelay=24000}] overworld:lantern_on_stick 0 1
execute @a[scores={Tickdelay=24000}] ~ ~ ~ give @a[scores={Tickdelay=24000}] overworld:lantern_on_stick_burnt_out 1
scoreboard players set @a[scores={Tickdelay=24000}] Tickdelay 0
 
 
 
#lantern expire offhand
scoreboard objectives add Tickdelay2 dummy
scoreboard objectives add Minutes2 dummy
execute @a ~~~ detect ~ ~1 ~ light_block 15 scoreboard players add @s[tag=offhand] Tickdelay2 1
execute @a ~~~ detect ~ ~1 ~ light_block 15 scoreboard players add @s[tag=offhand,scores={Tickdelay2=24000}] Minutes2 1
execute @a[scores={Tickdelay2=24000}] ~ ~ ~ clear @a[scores={Tickdelay2=24000}] overworld:lantern_on_stick 0 1
execute @a[scores={Tickdelay2=24000}] ~ ~ ~ give @a[scores={Tickdelay2=24000}] overworld:lantern_on_stick_burnt_out 1
scoreboard players set @a[scores={Tickdelay2=24000}] Tickdelay2 0
 