# appelée par end_trap
# permet de détruire le trap 10

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=10}]
bossbar set trapped_someone:player10 players