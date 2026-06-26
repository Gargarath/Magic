# appelée par ctf:loop modifie les barrières en fer côté bleu lorsque le levier est baissé
clone 243 137 -256 245 138 -252 243 168 -256
clone 241 137 -278 243 138 -274 241 168 -278
clone 253 134 -264 249 135 -262 249 168 -264
clone 253 134 -290 249 135 -288 249 168 -290
# modifie les barrières bleues

clone 243 131 -252 245 131 -256 243 257 -256
clone 243 131 -274 241 131 -278 241 257 -278
clone 253 129 -264 249 129 -262 249 257 -264
clone 253 129 -290 249 129 -288 249 257 -290
# reset le systeme de block violet (pour le tp du mage) sous le portail bleu

execute positioned 243 168 -276 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
execute positioned 245 168 -254 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
execute positioned 251 168 -262 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
execute positioned 251 168 -288 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
scoreboard players set blue lever_graveyard 0
# fait passer le levier rouge dans l'état 0