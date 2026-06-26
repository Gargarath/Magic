## appelée par detonate/playerX au nom du joueur dans la zone
# invoque des markers autour du joueur pour ensuite les raycast vers la zone d'explosion


# $id = numéro du raycast (1…12)

$summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_1"]}
$summon marker ~0.3 ~ ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_2"]}
$summon marker ~-0.3 ~ ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_3"]}
$summon marker ~0.3 ~ ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_4"]}
$summon marker ~-0.3 ~ ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_5"]}

$summon marker ~ ~0.4 ~ {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_6"]}
$summon marker ~0.3 ~0.4 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_7"]}
$summon marker ~-0.3 ~0.4 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_8"]}
$summon marker ~0.3 ~0.4 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_9"]}
$summon marker ~-0.3 ~0.4 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_10"]}

$summon marker ~ ~0.8 ~ {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_11"]}
$summon marker ~0.3 ~0.8 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_12"]}
$summon marker ~-0.3 ~0.8 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_13"]}
$summon marker ~0.3 ~0.8 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_14"]}
$summon marker ~-0.3 ~0.8 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_15"]}

$summon marker ~ ~1.2 ~ {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_16"]}
$summon marker ~0.3 ~1.2 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_17"]}
$summon marker ~-0.3 ~1.2 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_18"]}
$summon marker ~0.3 ~1.2 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_19"]}
$summon marker ~-0.3 ~1.2 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_20"]}

$summon marker ~ ~1.6 ~ {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_21"]}
$summon marker ~0.3 ~1.6 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_22"]}
$summon marker ~-0.3 ~1.6 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_23"]}
$summon marker ~0.3 ~1.6 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_24"]}
$summon marker ~-0.3 ~1.6 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_25"]}

$summon marker ~ ~1.85 ~ {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_26"]}
$summon marker ~0.3 ~1.85 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_27"]}
$summon marker ~-0.3 ~1.85 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_28"]}
$summon marker ~0.3 ~1.85 ~-0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_29"]}
$summon marker ~-0.3 ~1.85 ~0.3 {Tags:["exploraycast","exploraycast$(id)","exploraycast$(id)_30"]}