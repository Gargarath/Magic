## ## appelée par option_panel/pages/arena/arena_off et autres quand @s quitte l'arène
# clear les données d'arènes de @s

scoreboard players set @s usespell 0

scoreboard players set @s cooldown1_clock -1
scoreboard players set @s cooldown2_clock -1
scoreboard players set @s cooldown3_clock -1
# met en pause les cooldown

execute if score $gamemode option_panel matches 1 run tag @s remove no_team
# enleve le fait que @s n'a pas d'équipe (pour le système de spell) - si on est en CTF

function main:reset/resetspells/generic
# reset tout ce qui est lié au spell pour @s

attribute @s minecraft:entity_interaction_range base set 40
# redonne la portée d'interaction d'entité pour le mennu à @s

spawnpoint @s 0 100 0 180 0

function main:reset/reset_arena
# indique que @s n'est plus dans l'arène

execute unless entity @s[nbt={Fire:-20s}] run effect give @s minecraft:fire_resistance 1 0 true
#si le joueur brule -> le rend insencible au feu avant de le heal

effect give @s minecraft:instant_health 1 10 true

function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tp @s 0.5 100 0.5 180 0

execute unless entity @s[nbt={Fire:-20s}] run schedule function lobby:arena/clear_fire 1t
# si le joueur est en feu -> l'éteint
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

scoreboard players reset @s stat_killcount_player
function lobby:arena/leaderboard/refresh_leaderboard
# enlève @s du classement

function main:gui/display/refresh_gui
# refresh le gui