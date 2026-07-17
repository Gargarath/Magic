# Supprime les objets au sol non geres par le datapack a 4 Hz.
kill @e[type=item,tag=!summoned]
schedule function main:scheduled/cleanup 5t replace
