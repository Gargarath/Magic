# appelée par end_trap
# permet de détruire le trap 2

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=2}]
bossbar set trapped_someone:player2 players