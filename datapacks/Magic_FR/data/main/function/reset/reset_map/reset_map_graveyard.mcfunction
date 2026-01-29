# appelée par blue_win / red_win / draw / stop_game et go_to_shop permet de reset la map cimetière

execute if score $time_change option_panel matches 1 run time set 6000
# met la journée si l'option de changement du temps est activé

setblock 246 169 -268 minecraft:lever[powered=false,facing=east]
scoreboard players set blue lever_graveyard 0
clone 243 137 -256 245 138 -252 243 168 -256
clone 241 137 -278 243 138 -274 241 168 -278
clone 253 134 -264 249 135 -262 249 168 -264
clone 253 134 -290 249 135 -288 249 168 -290
# reset le levier bleu
clone 243 131 -252 245 131 -256 243 257 -256
clone 243 131 -274 241 131 -278 241 257 -278
clone 253 129 -264 249 129 -262 249 257 -264
clone 253 129 -290 249 129 -288 249 257 -290
# reset le systeme de block violet (pour le tp du mage) sous le portail bleu

setblock 190 169 -294 minecraft:lever[powered=false,facing=west]
scoreboard players set red lever_graveyard 0
clone 193 137 -306 191 138 -310 191 168 -310
clone 195 137 -284 193 138 -288 193 168 -288
clone 183 134 -300 187 135 -298 183 168 -300
clone 183 134 -274 187 135 -272 183 168 -274
# reset le levier rouge
clone 193 131 -306 191 131 -310 191 257 -310
clone 195 131 -284 193 131 -288 193 257 -288
clone 183 129 -298 187 129 -300 183 257 -300
clone 183 129 -272 187 129 -274 183 257 -274
# reset le systeme de block violet (pour le tp du mage) sous le portail rouge

function main:reset/reset_lich
# reset l'objectif secondaire tuer la liche

setblock 259 131 -276 air
# allume le beacon bleu
setblock 177 131 -286 air
# allume le beacon rouge

# Reset les trappes, portes..
# coté bleu
fill 252 168 -243 250 170 -243 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor
fill 256 169 -279 256 169 -273 minecraft:spruce_trapdoor[facing=east,half=top] replace minecraft:spruce_trapdoor
fill 256 171 -273 256 171 -279 minecraft:spruce_trapdoor[facing=east,half=bottom] replace minecraft:spruce_trapdoor
fill 219 170 -266 217 172 -266 minecraft:spruce_trapdoor[facing=north,open=true] replace minecraft:spruce_trapdoor
# coté rouge
fill 184 168 -319 186 170 -319 minecraft:spruce_trapdoor[facing=north,open=true] replace minecraft:spruce_trapdoor
fill 180 169 -289 180 169 -283 minecraft:spruce_trapdoor[facing=west,half=top] replace minecraft:spruce_trapdoor
fill 180 171 -289 180 171 -283 minecraft:spruce_trapdoor[facing=west,half=bottom] replace minecraft:spruce_trapdoor
fill 217 170 -296 219 172 -296 minecraft:spruce_trapdoor[facing=south,open=true] replace minecraft:spruce_trapdoor

tag @a[tag=in_bad_path] remove in_bad_path
scoreboard players set @a in_bad_path -1
bossbar set bad_path:player1 players
bossbar set bad_path:player2 players
bossbar set bad_path:player3 players
bossbar set bad_path:player4 players
bossbar set bad_path:player5 players
bossbar set bad_path:player6 players
bossbar set bad_path:player7 players
bossbar set bad_path:player8 players
bossbar set bad_path:player9 players
bossbar set bad_path:player10 players
bossbar set bad_path:player11 players
bossbar set bad_path:player12 players