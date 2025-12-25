# appelée par ctf:loop modifie les barrières en fer côté bleu lorsque le levier est baissé
clone 243 134 -256 245 135 -252 243 168 -256
clone 243 135 -278 241 134 -274 241 168 -278
clone 249 137 -264 253 138 -262 249 168 -264
clone 253 137 -290 249 138 -288 249 168 -290
# modifie les barrières bleues

clone 243 129 -256 245 129 -252 243 98 -256
clone 241 129 -278 243 129 -274 241 98 -278
clone 253 131 -264 249 131 -262 249 98 -264
clone 253 131 -290 249 131 -288 249 98 -290
# reset le systeme de block violet (pour le tp du mage) sous le portail bleu

execute positioned 243 168 -276 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
execute positioned 245 168 -254 run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
execute positioned 251 168 -262 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
execute positioned 251 168 -288 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
scoreboard players set blue lever_graveyard 1
# fait passer le levier rouge dans l'état 1