# permet de donner un item en plusieurs quantité

scoreboard players set #temp give_cd_amount 3
# défini la quantité

item modify block 17 95 13 container.3 minecraft:count_modifier
# modifie la quantité dans le container
item replace entity @s hotbar.0 from block 17 95 13 container.3
# donne la nouvelle quantité
