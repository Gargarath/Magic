## appelée par main:loop quand @s clique sur les options
# permet de lui ouvrir le GUI des options

$dialog show @s {"type":"minecraft:multi_action","title":{"text":"Mes options","color":"gold","bold":true},"body":{"type":"minecraft:plain_message","contents":{"text":"Clique sur les cases pour configurer tes options","bold":false},"width":300},"inputs":[],"columns":2,"actions": $(buttons)}
