# appelée par end_trap
# permet de détruire le trap 9

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=9}]
bossbar set trapped_someone:player9 players