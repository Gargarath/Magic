# appelée par end_trap
# permet de détruire le trap 3

kill @e[type=armor_stand,tag=trap,scores={trap_number_a=3}]
bossbar set trapped_someone:player3 players