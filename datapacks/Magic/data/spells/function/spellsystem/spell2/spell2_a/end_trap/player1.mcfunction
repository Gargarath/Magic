# appelée par end_trap
# permet de détruire le trap 1

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=1}]
bossbar set trapped_someone:player1 players