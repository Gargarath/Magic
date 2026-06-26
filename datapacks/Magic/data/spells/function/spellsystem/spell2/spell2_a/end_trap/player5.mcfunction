# appelée par end_trap
# permet de détruire le trap 5

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=5}]
bossbar set trapped_someone:player5 players