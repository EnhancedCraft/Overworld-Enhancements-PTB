#bridge-file-version: #44
 
#remove torch light every cycle
execute @a ~~~ fill ~7 ~10 ~7 ~-7 ~-10 ~-7 air 0 replace light_block 15
execute @a ~~~ fill ~7 ~10 ~7 ~-7 ~-10 ~-7 air 0 replace light_block 10
 
#set block when holding torch
execute @a[tag=torch] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ light_block 10 replace air 0
#set block when holding lantern
execute @a[tag=lantern] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ light_block 15 replace air 0
#set block when wearing mining_helmet
execute @a[tag=helmet] ~~~ fill ~1 ~ ~1 ~-1 ~1 ~-1 light_block 15 replace air 0
#set block when holding lantern offhand
execute @a[tag=offhand] ~~~ setblock ~ ~1 ~ light_block 15
#hide commands
gamerule commandblockoutput false
gamerule sendcommandfeedback false
 
 
 
 
 