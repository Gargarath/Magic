## appelée par shop_is_ready ou be_not_ready et be_ready
# actualise le panneau ready des specs pour indiquer qui est prêt


execute store result score $ready playercount run execute if entity @a[scores={is_ready=1}]
# compte combien de joueurs sont prêt
execute if score $ready playercount matches 0..1 run setblock 4 -49 58 oak_wall_sign[facing=west]{front_text:{messages:[{"text":"En attente...","color":"white","bold":true},"",[{"score":{"name":"$ready","objective":"playercount"},"color":"green","bold":true},{"text":"/","color":"white","bold":true},{"score":{"name":"player_atstart","objective":"playercount"},"color":"white","bold":true},{"text":" prêt","color":"white"}],""]},is_waxed:1b} replace
execute if score $ready playercount matches 2.. run setblock 4 -49 58 oak_wall_sign[facing=west]{front_text:{messages:[{"text":"En attente...","color":"white","bold":true},"",[{"score":{"name":"$ready","objective":"playercount"},"color":"green","bold":true},{"text":"/","color":"white","bold":true},{"score":{"name":"player_atstart","objective":"playercount"},"color":"white","bold":true},{"text":" prêts","color":"white"}],""]},is_waxed:1b} replace
# affiche le nombre de joueurs prêt sur le panneau