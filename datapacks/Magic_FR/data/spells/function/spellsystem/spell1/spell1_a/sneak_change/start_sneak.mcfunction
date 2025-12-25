## appelée par spells:loop quand @s sneak en flèche explo
# permet de faire bouger sa flèche explo de sens

scoreboard players set @s explo_sneak_change 1

function spells:spellsystem/spell1/spell1_a/rotate_arrow