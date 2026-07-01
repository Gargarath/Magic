## affiche le lien du serveur Discord a @s

scoreboard players reset @s discord
scoreboard players enable @s discord

$tellraw @s [{"color":"gray","text":"$(tr_discord_message) "},{"bold":true,"underlined":true,"color":"blue","text":"$(tr_discord_link)","click_event":{"action":"open_url","url":"https://discord.gg/UK3QYDv"},"hover_event":{"action":"show_text","value":{"color":"aqua","text":"$(tr_discord_hover)"}}}]
