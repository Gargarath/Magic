# appelée par onground/testplayer si une flèche explosive est dans le sol
# permet de lancer le système de compte a rebourd

tag @s add touched_ground
scoreboard players operation @s hit_by_explo = @s arrow_owner
# indique que c'est à partir de cette flèche que l'aoe doit se lancer

function spells:spellsystem/spell1/spell1_a/start_animation/player6