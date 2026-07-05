# appelée par rien
# setup les strings en français (utilisés quand on doit afficher du texte)

data modify storage strings fr_fr set value {\
\
"tr_gui_keybinds":"Raccourcis :",\
\
"tr_gui_options_title":"Options :               ",\
"tr_gui_options_open_menu":" : Ouvrir le menu  '",\
\
"tr_changed_language":"Votre langue a été définie sur : Français",\
"tr_joined_spectator":"Vous avez rejoint le mode spectateur !",\
"tr_left_spectator":"Vous avez quitté le mode spectateur !",\
"tr_reconnect_match_ended":"La partie est terminée ! Vous avez été automatiquement ramené au lobby.",\
"tr_reconnect_left_arena":"Vous vous êtes déconnecté dans l'arène ! Vous avez été automatiquement ramené au lobby.",\
"tr_reconnect_joined_spectator":"Une partie a déjà commencé ! Vous êtes automatiquement passé en mode spectateur.",\
"tr_reconnect_joined_shop":"La partie a déjà commencé ! Vous avez rejoint automatiquement.",\
"tr_reconnect_stats_added":"Vos statistiques ont été ajoutées au tableau des scores.",\
"tr_ctf_flag_red_captured":" a capturé le drapeau rouge !",\
"tr_ctf_flag_blue_captured":" a capturé le drapeau bleu !",\
"tr_ctf_flag_red_returned_by_player":" a rapporté le drapeau rouge !",\
"tr_ctf_flag_blue_returned_by_player":" a rapporté le drapeau bleu !",\
"tr_ctf_flag_red_returned":"Le drapeau rouge a été rapporté !",\
"tr_ctf_flag_blue_returned":"Le drapeau bleu a été rapporté !",\
"tr_ctf_flag_red_dropped":"Le drapeau rouge est tombé !",\
"tr_ctf_flag_blue_dropped":"Le drapeau bleu est tombé !",\
"tr_ctf_flag_capture_bossbar":"Capture :",\
"tr_ctf_flag_recovery_bossbar":"Récupération :",\
\
"tr_gui_ingame_spec_commands_1":"Les commandes de modérateur sont",\
"tr_gui_ingame_spec_commands_2":"accessibles via les commandes",\
"tr_gui_ingame_spec_commands_3":"/trigger admin_xxxx",\
\
"tr_gui_map_visit_spec_commands":"Commandes spec :",\
\
"tr_discord_message":"Rejoignez le serveur Discord :",\
"tr_discord_link":"[Ouvrir Discord]",\
"tr_discord_hover":"Cliquez pour rejoindre le serveur Discord !",\
\
\
"tr_upgrade_tree_1":"Ouvrez votre inventaire",\
"tr_upgrade_tree_2":"et cliquez sur le codex pour consulter les classes et votre progression !",\
"tr_codex_title":"Codex d'améliorations",\
"tr_codex_inventory_lore_1":"Cliquez pour consulter les classes",\
"tr_codex_inventory_lore_2":"et votre progression actuelle",\
"tr_codex_choose_class":"Choisissez une classe pour consulter ses améliorations.",\
"tr_codex_close":"Fermer",\
"tr_codex_back_classes":"Retour aux classes",\
"tr_codex_back_category":"Retour",\
"tr_codex_previous":"Niveau précédent",\
"tr_codex_next":"Niveau suivant",\
"tr_codex_current_level":"Niveau actuel :",\
"tr_codex_other_class":"Catalogue uniquement",\
"tr_codex_chest":"Plastron",\
"tr_codex_legs":"Jambières",\
"tr_codex_boots":"Bottes",\
"tr_codex_chest_base_name":"Plastron de santé",\
"tr_codex_legs_base_name":"Jambières de vitesse",\
"tr_codex_boots_base_name":"Bottes d'acrobate",\
"tr_warrior_weapon1_base_name":"Hache de bataille",\
"tr_warrior_spell1_base_name":"Berzerk",\
"tr_warrior_spell2_base_name":"Drapeau de ralliement",\
"tr_warrior_spell3_base_name":"Grappin",\
"tr_archer_weapon1_base_name":"Arc de combat",\
"tr_archer_spell1_base_name":"Flèche explosive",\
"tr_archer_spell2_base_name":"Piège à ours",\
"tr_archer_spell3_base_name":"Flèche de glace",\
"tr_mage_weapon1_base_name":"Bâton de combat",\
"tr_mage_spell1_base_name":"Trait de feu",\
"tr_mage_spell2_base_name":"Tempête de foudre",\
"tr_mage_spell3_base_name":"Téléportation",\
"tr_rogue_weapon1_base_name":"Dague sournoise",\
"tr_rogue_spell1_base_name":"Embuscade",\
"tr_rogue_spell2_base_name":"Voie des ombres",\
"tr_rogue_spell3_base_name":"Bombe d'ombre",\
\
\
"tr_stuff_generic_quit_arena_name":"Quitter l'arène",\
"tr_stuff_generic_cooldown_lore_1":"Votre sort doit se recharger",\
"tr_gui_arena_quit_spec":"Pour quitter l'arène, traversez les murs, le sol ou le plafond.",\
"tr_gui_arena_title":"Eliminations :",\
"tr_arena_disabled":"L'arène a été désactivée par un modérateur.",\
\
"tr_item_back":"Retour",\
"tr_item_ctf_blue_flag_name":"Drapeau bleu",\
"tr_item_ctf_red_flag_name":"Drapeau rouge",\
"tr_item_ctf_flag_lore_1":"Rapportez-le à votre base",\
"tr_item_ctf_flag_lore_2":"pour marquer un point !",\
\
"tr_inventory_menu_language":"Langue",\
"tr_inventory_menu_language_en":"Anglais",\
"tr_inventory_menu_language_fr":"Français",\
"tr_inventory_menu_language_lore_1":"\uE400 Cliquez pour",\
"tr_inventory_menu_language_lore_2":"changer la langue",\
\
"tr_inventory_menu_settings":"Options",\
"tr_inventory_menu_settings_lore_1":"\uE400 Cliquez pour",\
"tr_inventory_menu_settings_lore_2":"accéder aux options",\
\
"tr_inventory_menu_settings_quit":"Retour",\
"tr_inventory_menu_settings_quit_lore_1":"\uE400 Cliquez pour",\
"tr_inventory_menu_settings_quit_lore_2":"quitter les options",\
\
"tr_inventory_menu_settings_keybind_order":"Ordre des raccourcis",\
"tr_inventory_menu_settings_keybind_order_subtitle_1":"(Gauche → Droite)",\
"tr_inventory_menu_settings_keybind_order_lore_1":"Les touches suivent les sorts.",\
"tr_inventory_menu_settings_keybind_order_lore_2":"sélectionne le sort le plus à gauche,",\
"tr_inventory_menu_settings_keybind_order_lore_3":"le suivant, etc.",\
"tr_inventory_menu_settings_keybind_order_subtitle_2":"(Droite → Gauche)",\
"tr_inventory_menu_settings_keybind_order_lore_4":"Les touches suivent les sorts.",\
"tr_inventory_menu_settings_keybind_order_lore_5":"sélectionne le sort le plus à droite,",\
"tr_inventory_menu_settings_keybind_order_lore_6":"le suivant, etc.",\
\
"tr_inventory_menu_settings_jump_timer":"Chrono de parcours",\
"tr_inventory_menu_settings_jump_timer_subtitle_1":"Activé",\
"tr_inventory_menu_settings_jump_timer_lore_1":"Votre temps est affiché",\
"tr_inventory_menu_settings_jump_timer_lore_2":"pendant toute la course.",\
"tr_inventory_menu_settings_jump_timer_subtitle_2":"Désactivé",\
"tr_inventory_menu_settings_jump_timer_lore_3":"Votre temps reste masqué",\
"tr_inventory_menu_settings_jump_timer_lore_4":"jusqu'à la fin de la course.",\
\
"tr_inventory_menu_settings_passive_income_alert":"Revenu passif FFA",\
"tr_inventory_menu_settings_passive_income_alert_subtitle_1":"Notifications activées",\
"tr_inventory_menu_settings_passive_income_alert_lore_1":"Affiche un toast à chaque",\
"tr_inventory_menu_settings_passive_income_alert_lore_2":"gain de revenu passif.",\
"tr_inventory_menu_settings_passive_income_alert_subtitle_2":"Notifications désactivées",\
"tr_inventory_menu_settings_passive_income_alert_lore_3":"Le revenu est toujours versé,",\
"tr_inventory_menu_settings_passive_income_alert_lore_4":"mais aucun toast n'est affiché.",\
\
"tr_inventory_menu_settings_cd_ready_sound":"Son des sorts disponibles",\
"tr_inventory_menu_settings_cd_ready_sound_subtitle_1":"Son activé",\
"tr_inventory_menu_settings_cd_ready_sound_lore_1":"Un son est joué lorsqu'un",\
"tr_inventory_menu_settings_cd_ready_sound_lore_2":"sort redevient disponible.",\
"tr_inventory_menu_settings_cd_ready_sound_subtitle_2":"Son désactivé",\
"tr_inventory_menu_settings_cd_ready_sound_lore_3":"Les sorts redeviennent disponibles",\
"tr_inventory_menu_settings_cd_ready_sound_lore_4":"sans notification sonore.",\
\
"tr_inventory_menu_op_menu":"Commandes de modération",\
"tr_inventory_menu_op_menu_lore_1":"\uE400 Cliquez pour",\
"tr_inventory_menu_op_menu_lore_2":"accéder aux commandes",\
"tr_inventory_menu_op_menu_placeholder":"Commandes verrouillées",\
"tr_inventory_menu_op_menu_placeholder_lore_1":"\uE400 Cliquez pour savoir",\
"tr_inventory_menu_op_menu_placeholder_lore_2":"comment devenir modérateur",\
"tr_inventory_menu_op_menu_quit":"Retour",\
"tr_inventory_menu_op_menu_quit_lore_1":"\uE400 Cliquez pour quitter",\
"tr_inventory_menu_op_menu_quit_lore_2":"les commandes de modération",\
"tr_inventory_menu_op_menu_stop_game":"Arrêter la partie",\
"tr_inventory_menu_op_menu_stop_game_lore":"Arrête la partie en cours.",\
"tr_inventory_menu_op_menu_randomize_teams":"Équipes aléatoires",\
"tr_inventory_menu_op_menu_randomize_teams_lore_1":"Répartit aléatoirement les joueurs",\
"tr_inventory_menu_op_menu_randomize_teams_lore_2":"entre les deux équipes.",\
"tr_inventory_menu_op_menu_randomize_classes":"Classes aléatoires",\
"tr_inventory_menu_op_menu_randomize_classes_lore_1":"Répartit équitablement les joueurs",\
"tr_inventory_menu_op_menu_randomize_classes_lore_2":"entre les différentes classes.",\
"tr_inventory_menu_op_menu_all_ready":"Forcer tous prêts",\
"tr_inventory_menu_op_menu_all_ready_lore_1":"Force tous les joueurs à être prêts",\
"tr_inventory_menu_op_menu_all_ready_lore_2":"dans les salles d'achat.",\
"tr_inventory_menu_op_menu_round_over":"Terminer la manche",\
"tr_inventory_menu_op_menu_round_over_lore":"Termine la manche actuelle.",\
"tr_inventory_menu_op_menu_quit_op":"Quitter la modération",\
"tr_inventory_menu_op_menu_quit_op_lore_1":"Retire votre rôle de modérateur",\
"tr_inventory_menu_op_menu_quit_op_lore_2":"et ferme ce menu.",\
\
"tr_lobby_jump_pad_maps":"Visiter les arènes",\
"tr_lobby_jump_pad_stats":"Île de statistiques",\
"tr_lobby_jump_pad_jump":"Île de jump",\
"tr_lobby_jump_pad_back":"Retourner au lobby",\
\
"tr_lobby_map_visit_island_title":"Visiter les arènes",\
"tr_lobby_map_visit_island_subtitle":"Cliquez sur une arène pour la visiter",\
"tr_lobby_map_visit_island_disabled":"Les visites d'arènes ont été désactivées par un modérateur.",\
\
"tr_item_select_warrior":"Guerrier",\
"tr_item_select_archer":"Archer",\
"tr_item_select_mage":"Mage",\
"tr_item_select_rogue":"Assassin",\
"tr_item_select_random":"Aléatoire",\
\
"tr_lobby_optn_menu_top_bar_lobby":"Lobby",\
"tr_lobby_optn_menu_top_bar_gamemode":"Mode de jeu",\
"tr_lobby_optn_menu_top_bar_maps":"Arènes",\
"tr_lobby_optn_menu_top_bar_shop":"Éconnomie",\
"tr_lobby_optn_menu_top_bar_fun":"Fun",\
\
"tr_optn_menu_button_yes":"OUI",\
"tr_optn_menu_button_no":"NON",\
\
"tr_lobby_optn_menu_main_start_game":"Lancer la partie",\
"tr_lobby_optn_menu_main_recommended_button_1":"Paramètres",\
"tr_lobby_optn_menu_main_recommended_button_2":"recommandés",\
\
"tr_lobby_optn_menu_main_recommended_options_title_1":"Activer les paramètres",\
"tr_lobby_optn_menu_main_recommended_options_title_2":"recommandés ?",\
"tr_lobby_optn_menu_main_recommanded_options_subtitle":"Cela écrasera vos paramètres actuels.",\
"tr_lobby_optn_menu_main_recommanded_options_yes":"Oui",\
"tr_lobby_optn_menu_main_recommanded_options_no":"Non",\
\
"tr_optn_menu_lobby_title_1":"Options générales",\
"tr_optn_menu_lobby_title_2":"Modération",\
\
"tr_optn_menu_gamemode_ffa_title_1":"Options générales",\
\
"tr_optn_menu_gamemode_ctf_title_1":"Options générales",\
"tr_optn_menu_gamemode_ctf_secondary_objectives":"Objectifs secondaires",\
"tr_optn_menu_gamemode_ctf_teamkill":"Message de teamkill",\
"tr_optn_menu_gamemode_ctf_show_next_map_1":"Afficher la prochaine arène",\
"tr_optn_menu_gamemode_ctf_show_next_map_2":"dans les salles d'achat :",\
"tr_optn_menu_gamemode_ctf_shop_timer_1":"Limite de temps dans les",\
"tr_optn_menu_gamemode_ctf_shop_timer_2":"salles d'achat :",\
"tr_optn_menu_gamemode_ctf_shop_timer_none":"Aucune",\
"tr_optn_menu_gamemode_ctf_shop_timer_seconds":" s",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_title":"Temps en salle d'achat",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_text_1":"Choisissez combien de secondes les joueurs peuvent rester dans les salles d'achat.",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_text_2":"0 =",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_none":"aucune limite",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_range":"Valeur acceptée : 0 à 100 secondes",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_field_label":"Durée en secondes",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_confirm":"Valider",\
"tr_optn_menu_gamemode_ctf_shop_timer_custom_cancel":"Annuler",\
"tr_optn_menu_gamemode_ffa_goal_name_title":"Objectif :",\
"tr_optn_menu_gamemode_ffa_goal_name":"Éliminations",\
"tr_optn_menu_gamemode_ffa_goal_score_title":"Premier à :",\
"tr_optn_menu_gamemode_ffa_kills_goal_custom_title":"Objectif d'éliminations",\
"tr_optn_menu_gamemode_ffa_kills_goal_custom_text_1":"Choisissez le nombre d'éliminations nécessaires pour gagner",\
"tr_optn_menu_gamemode_ffa_kills_goal_custom_range":"Valeur acceptée : 1 à 50 éliminations",\
"tr_optn_menu_gamemode_ffa_kills_goal_custom_field_label":"Nombre d'éliminations",\
"tr_optn_menu_gamemode_ffa_kills_goal_custom_confirm":"Valider",\
"tr_optn_menu_gamemode_ffa_kills_goal_custom_cancel":"Annuler",\
"tr_optn_menu_ffa_passive_money":"Revenu passif :",\
"tr_optn_menu_ffa_passive_speed":"Vitesse du revenu passif :",\
"tr_optn_menu_ffa_ph_per_kill":"Points par élimination :",\
"tr_optn_menu_ffa_never":"Jamais",\
"tr_optn_menu_ffa_none":"Aucun",\
"tr_optn_menu_ffa_seconds":" s",\
"tr_optn_menu_custom_confirm":"Valider",\
"tr_optn_menu_custom_cancel":"Annuler",\
"tr_optn_menu_ffa_passive_money_custom_title":"Revenu passif",\
"tr_optn_menu_ffa_passive_money_custom_text":"Choisissez le nombre de points reçus à chaque versement",\
"tr_optn_menu_ffa_passive_money_custom_range":"Valeur acceptée : 1 à 50 points",\
"tr_optn_menu_ffa_passive_money_custom_label":"Nombre de points",\
"tr_optn_menu_ffa_passive_speed_custom_title":"Vitesse du revenu passif",\
"tr_optn_menu_ffa_passive_speed_custom_text":"Choisissez le délai entre chaque versement",\
"tr_optn_menu_ffa_passive_speed_custom_range":"0 désactive le revenu passif ; maximum 30 secondes",\
"tr_optn_menu_ffa_passive_speed_custom_label":"Délai en secondes",\
"tr_optn_menu_ffa_first_income_delay":"Délai du premier revenu :",\
"tr_optn_menu_ffa_first_income_delay_custom_title":"Délai du premier revenu",\
"tr_optn_menu_ffa_first_income_delay_custom_text":"Choisissez le délai avant le premier versement du revenu passif",\
"tr_optn_menu_ffa_first_income_delay_custom_range":"Valeur acceptée : 1 à 60 secondes",\
"tr_optn_menu_ffa_first_income_delay_custom_label":"Délai en secondes",\
"tr_optn_menu_ffa_ph_per_kill_custom_title":"Points par élimination",\
"tr_optn_menu_ffa_ph_per_kill_custom_text":"Choisissez le nombre de points reçus par élimination",\
"tr_optn_menu_ffa_ph_per_kill_custom_range":"0 désactive la récompense ; maximum 50 points",\
"tr_optn_menu_ffa_ph_per_kill_custom_label":"Nombre de points",\
\
"tr_optn_menu_lobby_enable_arena":"Arène du lobby",\
"tr_optn_menu_lobby_enable_maps":"Visiter les maps",\
"tr_optn_menu_lobby_enable_jump":"Parcours de jump",\
"tr_optn_menu_lobby_operator_access":"Accès modération",\
"tr_optn_menu_lobby_operator_access_1":"Premier arrivé",\
"tr_optn_menu_lobby_operator_access_2":"Admins uniquement",\
"tr_optn_menu_warning_op_admin_title":"Menu d'option",\
"tr_optn_menu_warning_op_admin_subtitle":"Attention !",\
"tr_optn_menu_warning_op_admin_text_1":"Vous êtes sur le point d'activer l'accès au mode opérateur ",\
"tr_optn_menu_warning_op_admin_text_2":"uniquement",\
"tr_optn_menu_warning_op_admin_text_3":" pour les joueurs administrateurs.",\
"tr_optn_menu_warning_op_admin_need_admin":"Si vous n'êtes pas vous même administrateur, cette commande échouera.",\
"tr_optn_menu_warning_op_admin_text_4":"Êtes vous sûr de vouloir activer ce mode ?",\
"tr_optn_menu_warning_op_admin_confirm":"Je sais ce que je fais",\
"tr_optn_menu_warning_op_admin_cancel":"Annuler",\
"tr_optn_menu_lobby_matchmaking_1":"Attribution auto des classes et",\
"tr_optn_menu_lobby_matchmaking_2":"équipes aux joueurs non assignés",\
"tr_optn_menu_lobby_force_launch":"Forcer le lancement de la partie",\
\
"tr_optn_menu_gamemode_ffa_title":"Chacun pour soi",\
"tr_optn_menu_gamemode_ctf_title":"Capture de drapeau",\
\
"tr_optn_menu_maps_map_selection":"Sélection des arènes",\
"tr_optn_menu_maps_ffa_random":"Aléatoire",\
"tr_optn_menu_maps_ffa_map_1":"Pirate",\
"tr_optn_menu_maps_ffa_map_2":"Cimetière",\
"tr_optn_menu_maps_ffa_map_3":"Usine",\
"tr_optn_menu_maps_ffa_map_4":"Volcan",\
"tr_optn_menu_maps_ffa_map_5":"Ruine",\
"tr_optn_menu_maps_ffa_map_6":"Bonbon",\
"tr_optn_menu_maps_map_selection_random":"Aléatoire",\
"tr_optn_menu_maps_map_selection_predefined":"Prédéfinie",\
"tr_optn_menu_maps_rng_lvl_1":"Empêcher de jouer 2",\
"tr_optn_menu_maps_rng_lvl_2":"fois la même arène",\
"tr_optn_menu_arena_time_change_1":"Mode nuit sur",\
"tr_optn_menu_arena_time_change_2":"certaines arènes",\
"optn_menu_maps_round":"Manche",\
"optn_menu_maps_overtime":"Prolongations",\
\
"tr_optn_menu_shop_title_1":"Options générales",\
"tr_optn_menu_shop_title_2":"Points d'honneur",\
"tr_optn_menu_shop_build_reset":"Bouttons Undo/Redo :",\
"tr_optn_menu_shop_build_reset_never":"Jamais",\
"tr_optn_menu_shop_build_reset_round_only":"De la manche",\
"tr_optn_menu_shop_build_reset_game":"De la partie",\
"tr_optn_menu_shop_ph_start":"Points d'honneur de départ :",\
"tr_optn_menu_shop_ph_start_custom_title":"Point d'honneur de départ",\
"tr_optn_menu_shop_ph_start_custom_text_1":"Choisissez avec combien de points d'honneur peuvent commencer les joueurs",\
"tr_optn_menu_shop_ph_start_custom_range":"Valeur acceptée : 0 à 600 points d'honneur",\
"tr_optn_menu_shop_ph_start_custom_field_label":"Points d'honneur",\
"tr_optn_menu_shop_ph_start_custom_confirm":"Valider",\
"tr_optn_menu_shop_ph_start_custom_cancel":"Annuler",\
"tr_optn_menu_shop_ph_per_round":"Points d'honneur par manche :",\
"tr_optn_menu_shop_ph_per_round_custom_title":"Points d'honneur par manche",\
"tr_optn_menu_shop_ph_per_round_custom_text_1":"Choisissez combien de points d'honneur les joueurs gagnent par manche",\
"tr_optn_menu_shop_ph_per_round_custom_range":"Valeur acceptée : 0 à 600 points d'honneur",\
"tr_optn_menu_shop_ph_per_round_custom_field_label":"Points d'honneur",\
"tr_optn_menu_shop_ph_per_round_custom_confirm":"Valider",\
"tr_optn_menu_shop_ph_per_round_custom_cancel":"Annuler",\
"tr_optn_menu_shop_ph_per_obj":"Points d'honneur par objectifs :",\
"tr_optn_menu_shop_ph_per_obj_custom_title":"Points d'honneur par objectif",\
"tr_optn_menu_shop_ph_per_obj_custom_text_1":"Choisissez combien de points d'honneur les joueurs gagnent par objectif",\
"tr_optn_menu_shop_ph_per_obj_custom_range":"Valeur acceptée : 0 à 600 points d'honneur",\
"tr_optn_menu_shop_ph_per_obj_custom_field_label":"Points d'honneur",\
"tr_optn_menu_shop_ph_per_obj_custom_confirm":"Valider",\
"tr_optn_menu_shop_ph_per_obj_custom_cancel":"Annuler",\
\
"tr_optn_menu_fun_no_cooldowns":"Aucun temps de recharge :",\
"tr_optn_menu_fun_infinite_money":"Points d'honneur illimités :",\
\
"tr_lobby_warrior_title":"Guerier",\
"tr_lobby_archer_title":"Archer",\
"tr_lobby_mage_title":"Mage",\
"tr_lobby_rogue_title":"Assassin",\
\
"tr_lobby_warrior_description":"Spécialiste du combat rapproché, votre capacité à encaisser les coups et votre grosse hache vous donnent un avantage certain au corps à corps !",\
"tr_lobby_archer_description":"Maître dans le maniement de l'arc, votre capacité à contrôler les mouvements adverses est inégalable !",\
"tr_lobby_mage_description":"Adepte de la magie, vous anéantissez vos ennemis grâce à vos puissants sorts !",\
"tr_lobby_rogue_description":"Expert en dissimulation, vous utilisez la ruse pour asservir vos ennemis !",\
\
"tr_lobby_passive":"Passif",\
"tr_lobby_weapon":"Arme",\
"tr_lobby_spell1":"Sort 1",\
"tr_lobby_spell2":"Sort 2",\
"tr_lobby_spell3":"Sort 3",\
\
"tr_lobby_choose_class":"Choisir cette classe",\
"tr_lobby_item_level":"Niveau",\
\
"tr_became_warrior":"Vous êtes devenu Guerrier !",\
"tr_became_archer":"Vous êtes devenu Archer !",\
"tr_became_mage":"Vous êtes devenu Mage !",\
"tr_became_rogue":"Vous êtes devenu Assassin !",\
"tr_became_random":"Votre classe sera choisie aléatoirement !",\
"tr_already_warrior":"Vous êtes déjà Guerrier !",\
"tr_already_archer":"Vous êtes déjà Archer !",\
"tr_already_mage":"Vous êtes déjà Mage !",\
"tr_already_rogue":"Vous êtes déjà Assassin !",\
"tr_already_random":"Vous êtes déjà en Aléatoire !",\
\
"tr_class_assigned_warrior":"La classe guerrier vous a été assignée automatiquement",\
"tr_class_assigned_archer":"La classe archer vous a été assignée automatiquement",\
"tr_class_assigned_mage":"La classe mage vous a été assignée automatiquement",\
"tr_class_assigned_rogue":"La classe assassin vous a été assignée automatiquement",\
\
"tr_team_assigned_blue":"L'équipe bleue vous a été assignée automatiquement",\
"tr_team_assigned_red":"L'équipe rouge vous a été assignée automatiquement",\
\
"tr_randomize_team_title_blue":"Vous êtes bleu !",\
"tr_randomize_team_title_red":"Vous êtes rouge !",\
"tr_randomize_team_subtitle":"Les équipes ont été constituées aléatoirement !",\
"tr_randomize_team_tellraw_blue":"Vous avez rejoint les bleus !",\
"tr_randomize_team_tellraw_red":"Vous avez rejoint les rouges !",\
\
"tr_randomize_class_text_1":"Vous êtes",\
"tr_randomize_class_text_warrior":"Guerrier",\
"tr_randomize_class_text_archer":"Archer",\
"tr_randomize_class_text_mage":"Mage",\
"tr_randomize_class_text_rogue":"Assassin",\
"tr_randomize_class_text_2":" !",\
"tr_randomize_class_subtitle":"Les classes ont été constituées aléatoirement !",\
\
"tr_item_select_island":"Menu de jeu",\
"tr_item_select_main_island":"Île principale",\
"tr_item_select_stats_island":"Île de statistiques",\
"tr_item_select_map_island":"Visiter les arènes",\
"tr_item_select_jump_island":"Île de jump",\
\
"tr_became_team_blue":"Vous avez rejoint l'équipe bleue !",\
"tr_became_team_red":"Vous avez rejoint l'équipe rouge !",\
"tr_became_team_random":"Votre équipe sera choisie aléatoirement !",\
"tr_item_blue":"Bleue",\
"tr_item_red":"Rouge",\
\
"tr_color_change_text":"Vous avez choisis la couleur :",\
"tr_color_change_item":"Choix de couleur",\
"tr_color_picker_0":"Blanc",\
"tr_color_picker_1":"Gris clair",\
"tr_color_picker_2":"Gris",\
"tr_color_picker_3":"Noir",\
"tr_color_picker_4":"Bleu clair",\
"tr_color_picker_5":"Cyan",\
"tr_color_picker_6":"Bleu",\
"tr_color_picker_7":"Bleu foncé",\
"tr_color_picker_8":"Vert clair",\
"tr_color_picker_9":"Vert foncé",\
"tr_color_picker_10":"Rose",\
"tr_color_picker_11":"Violet",\
"tr_color_picker_12":"Rouge",\
"tr_color_picker_13":"Rouge foncé",\
"tr_color_picker_14":"Jaune",\
"tr_color_picker_15":"Doré",\
\
"tr_last_page":"Page précédente",\
"tr_next_page":"Page suivante",\
\
"tr_item_team":"Equipe",\
"tr_item_class":"Classe",\
"tr_item_spec_mode":"Mode spectateur",\
"tr_item_activated":"Activé",\
"tr_item_desactivated":"Désactivé",\
"tr_cant_use_in_spec":"Impossible d'utiliser cette option en mode spectateur !",\
\
"tr_item_map_visit_spec_mode_name":"Mode spectateur",\
"tr_item_map_visit_spec_mode_lore_1":"Passer en mode spectateur",\
"tr_item_map_visit_blue_flag_name":"Drapeau bleu",\
"tr_item_map_visit_blue_flag_lore_1":"Téléportez vous au",\
"tr_item_map_visit_blue_flag_lore_2":"drapeau bleu !",\
"tr_item_map_visit_red_flag_name":"Drapeau rouge",\
"tr_item_map_visit_red_flag_lore_1":"Téléportez vous au",\
"tr_item_map_visit_red_flag_lore_2":"drapeau rouge !",\
"tr_item_map_visit_blue_spawn_name":"Spawn bleu",\
"tr_item_map_visit_blue_spawn_lore_1":"Téléportez vous au",\
"tr_item_map_visit_blue_spawn_lore_2":"spawn bleu !",\
"tr_item_map_visit_red_spawn_name":"Spawn rouge",\
"tr_item_map_visit_red_spawn_lore_1":"Téléportez vous au",\
"tr_item_map_visit_red_spawn_lore_2":"spawn rouge !",\
"tr_item_map_visit_quit_name":"Quitter l'arène",\
\
"tr_item_jump_checkpoint":"Dernier checkpoint",\
"tr_item_jump_reset":"Annuler",\
\
"tr_gui_map_1_name":"\uE706Pirate\uE710\uE708",\
"tr_gui_map_2_name":"Cimetière\uE709",\
"tr_gui_map_3_name":"\uE709Usine\uE710\uE710",\
"tr_gui_map_4_name":"\uE705Volcan\uE710\uE706",\
"tr_gui_map_5_name":"\uE709Ruine\uE710\uE710",\
"tr_gui_map_6_name":"\uE704Bonbon\uE710\uE704",\
"tr_gui_map_random_name":"Aléatoire\uE708",\
\
"tr_map_1_name":"Pirate",\
"tr_map_2_name":"Cimetière",\
"tr_map_3_name":"Usine",\
"tr_map_4_name":"Volcan",\
"tr_map_5_name":"Ruine",\
"tr_map_6_name":"Bonbon",\
\
"tr_graveyard_epitaph_here_lies":"Ci-gît,",\
"tr_graveyard_epitaph_1_name":"Ren\u00e9",\
"tr_graveyard_epitaph_1_line_3":"Le pouilleux.",\
"tr_graveyard_epitaph_2_name":"Benoit",\
"tr_graveyard_epitaph_2_line_3":"L'irr\u00e9sistible.",\
"tr_graveyard_epitaph_3_name":"Augustin",\
"tr_graveyard_epitaph_3_line_3":"L'homme au",\
"tr_graveyard_epitaph_3_line_4":"cerveau immense.",\
"tr_graveyard_epitaph_4_name":"G\u00e9rard",\
"tr_graveyard_epitaph_4_line_3":"Le prol\u00e9taire.",\
"tr_graveyard_epitaph_5_name":"Hugues",\
"tr_graveyard_epitaph_5_line_3":"Le mis\u00e9rable.",\
"tr_graveyard_epitaph_6_name":"Nico",\
"tr_graveyard_epitaph_6_line_3":"L'idiot.",\
"tr_graveyard_epitaph_7_name":"Archibald",\
"tr_graveyard_epitaph_7_line_3":"Le magnifique.",\
"tr_graveyard_epitaph_8_name":"Basile",\
"tr_graveyard_epitaph_8_line_3":"Le cruel.",\
"tr_graveyard_epitaph_9_name":"Maxime",\
"tr_graveyard_epitaph_9_line_3":"Le richissime.",\
"tr_graveyard_epitaph_10_name":"Kevin",\
"tr_graveyard_epitaph_10_line_3":"Le demeur\u00e9.",\
"tr_graveyard_epitaph_11_name":"Jacob",\
"tr_graveyard_epitaph_11_line_3":"L'influent.",\
"tr_graveyard_epitaph_12_name":"Martial",\
"tr_graveyard_epitaph_12_line_3":"Le dodu.",\
\
"tr_jump_start_title":"Défi de Parcours",\
"tr_jump_start_subtitle":"Départ",\
"tr_jump_checkpoint":"Checkpoint",\
"tr_jump_end_subtitle":"Fin",\
"tr_jump_spec_mode_title":"Mode spectateur",\
"tr_jump_spec_mode_join":"Rejoindre",\
\
"tr_jump_leaderboard_title":"Parcours",\
"tr_jump_leaderboard_subtitle":"Meilleurs temps",\
"tr_jump_leaderboard_no_data":"Aucune donnée",\
\
"tr_jump_leaderboard_title_1":"Statistiques de ",\
"tr_jump_leaderboard_title_2":"parcours",\
"tr_jump_leaderboard_best_time":"Meilleur temps :",\
"tr_jump_leaderboard_fall":"chutes",\
"tr_jump_leaderboard_checkpoint":"Checkpoint",\
"tr_jump_leaderboard_total_try":"Tentatives totales sur le parcours :",\
"tr_jump_leaderboard_total_fall":"Chutes totales sur le parcours :",\
\
"tr_jump_wrong_start":"Vous devez passer par le depart pour faire le parcours",\
"tr_jump_wrong_jump":"Impossible de commencer un autre parcours pour le moment",\
"tr_jump_disabled":"Les parcours ont été desactivés par un moderateur.",\
"tr_jump_checkpoint_reached_in":"atteint en",\
"tr_jump_finished_1":"Vous avez fini le parcours n°",\
"tr_jump_finished_2":" en ",\
"tr_jump_personal_record":"(record personnel : ",\
"tr_jump_new_personal_record":"* Nouveau record personnel *",\
"tr_jump_not_finished":"Vous n'avez pas encore fini ce parcours",\
"tr_jump_rank_taken":"a pris la",\
"tr_jump_rank_in":"en",\
"tr_jump_rank_1":"1ère place",\
"tr_jump_rank_2":"2eme place",\
"tr_jump_rank_3":"3eme place",\
"tr_jump_rank_4":"4eme place",\
"tr_jump_rank_5":"5eme place",\
"tr_jump_rank_6":"6eme place",\
\
"tr_stats_mvp":"MVP",\
"tr_stats_deadliest_player":"Combattant ultime",\
"tr_stats_money_player":"Chasseur de prime",\
"tr_stats_objectives_player":"Stratège hors pair",\
"tr_stats_warrior":"Guerrier",\
"tr_stats_archer":"Archer",\
"tr_stats_mage":"Mage",\
"tr_stats_rogue":"Assassin",\
\
"tr_stats_rank_1":"1ère place",\
"tr_stats_rank_2":"2ème place",\
"tr_stats_rank_3":"3ème place",\
"tr_stats_rank_4":"4ème place",\
"tr_stats_rank_5":"5ème place",\
"tr_stats_rank_6":"6ème place",\
"tr_stats_rank_7":"7ème place",\
"tr_stats_rank_8":"8ème place",\
"tr_stats_rank_9":"9ème place",\
"tr_stats_rank_10":"10ème place",\
"tr_stats_rank_11":"11ème place",\
"tr_stats_rank_12":"12ème place",\
\
"tr_stat_title_final_score":"Score total",\
"tr_stat_title_kd_ratio":"K/D Ratio",\
"tr_stat_title_kills":"Eliminations",\
"tr_stat_title_deathcount":"Morts",\
"tr_stat_title_total_dmg":"Dégâts infligés",\
"tr_stat_title_dmg_recieved":"Dégâts subits",\
"tr_stat_title_obj_score":"Score stratégique",\
"tr_stat_title_total_money_earned":"Argent gagné",\
"tr_stat_title_flag_earned":"Drapeaux rapportés",\
\
"tr_stats_total_score":"score total",\
"tr_stats_kd_ratio":"K/d :",\
"tr_stats_total_kills":"kills",\
"tr_stats_deathcount":"morts",\
"tr_stats_total_dmg":"dégâts infligés",\
"tr_stats_dmg_taken":"dégâts subits",\
"tr_stats_obj_score":"score stratégique",\
"tr_stats_flag_earned":"drapeaux rapportés",\
"tr_stats_total_money_earned":"argent gagné",\
\
"tr_stats_best_warrior":"Meilleurs Guerriers",\
"tr_stats_best_archer":"Meilleurs Archers",\
"tr_stats_best_mage":"Meilleurs Mages",\
"tr_stats_best_rogue":"Meilleurs Assassins",\
"tr_stats_best_by_total_score":"par score total",\
"tr_stats_best_in_ffa":"en FFA",\
"tr_stats_best_in_ctf":"en CTF",\
\
"tr_stats_book_name":"Statistiques de :",\
"tr_stats_book_title":"   [Statistiques]",\
"tr_stats_book_subtitle_last_game":"    Dernière partie",\
\
"tr_stats_book_result_ffa_1":"1er",\
"tr_stats_book_result_ffa_2":"2eme",\
"tr_stats_book_result_ffa_3":"3eme",\
"tr_stats_book_result_ffa_4":"4eme",\
"tr_stats_book_result_ffa_5":"5eme",\
"tr_stats_book_result_ffa_6":"6eme",\
"tr_stats_book_result_ffa_7":"7eme",\
"tr_stats_book_result_ffa_8":"8eme",\
"tr_stats_book_result_ffa_9":"9eme",\
"tr_stats_book_result_ffa_10":"10eme",\
"tr_stats_book_result_ffa_11":"11eme",\
"tr_stats_book_result_ffa_12":"12eme",\
"tr_stats_book_result_ffa_subtitle":"Avec :",\
\
"tr_stats_book_result_ctf_draw":"      EGALITE",\
"tr_stats_book_result_ctf_win":"      VICTOIRE !",\
"tr_stats_book_result_ctf_loose":"      DEFAITE :(",\
\
"tr_stats_book_team":"Équipe :",\
"tr_stats_book_team_blue":"Bleue",\
"tr_stats_book_team_red":"Rouge",\
"tr_stats_book_class":"Classe :",\
"tr_stats_book_general":"General",\
"tr_stats_book_ratio":"Ratio :",\
"tr_stats_book_kills":"Kills",\
"tr_stats_book_kills_with":"dont",\
"tr_stats_book_kills_player":"joueurs",\
"tr_stats_book_kills_boss":"boss",\
"tr_stats_book_dmg":"Dégats",\
"tr_stats_book_dmg_hand":"au corps à corps",\
"tr_stats_book_dmg_spell":"avec sorts",\
"tr_stats_book_dmg_bow":"avec l'arc",\
"tr_stats_book_spell":"Sorts",\
"tr_stats_book_spell_launched":"sorts lancés",\
"tr_stats_book_spell_dmg":"dégâts des sorts",\
"tr_stats_book_flag":"Drapeaux",\
"tr_stats_book_flag_caped":"drapeaux ennemis capturés",\
"tr_stats_book_flag_earned":"drapeaux ennemis rapportés",\
"tr_stats_book_flag_saved":"drapeaux alliés rapportés",\
\
"tr_admin_not_op_anymore_1":"Vous n'êtes plus",\
"tr_admin_not_op_anymore_2":".",\
"tr_admin_became_op_1":"Vous êtes devenu",\
"tr_admin_became_op_2":"Vous avez désormais accès au options de modérateur et au menu d'option.",\
"tr_admin_how_to_be_op_platform":"Vous n'avez pas accès à ce panneau. Pour devenir modérateur, tenez vous sur la plateforme jaune devant le menu d'option.",\
"tr_admin_how_to_be_op_command_1":"Vous n'avez pas accès à ce panneau. Si vous êtes modérateur",\
"tr_admin_how_to_be_op_command_2":"cliquez ici",\
"tr_admin_how_to_be_op_command_3":"pour obtenir l'accès aux commandes.",\
"tr_admin_how_to_be_op_command_hover_event":"Cliquez ici pour obtenir les droits d'accès aux commandes.",\
"tr_admin_cant_become_op_1":"Vous n'avez pas accès à ce panneau,",\
"tr_admin_cant_become_op_2":"est déjà modérateur.",\
\
"tr_welcome_how_to_admin_command_1":"Si vous êtes modérateur",\
"tr_welcome_how_to_admin_command_2":"cliquez ici",\
"tr_welcome_how_to_admin_command_3":"pour obtenir l'accès aux commandes.",\
"tr_welcome_how_to_admin_command_hover_event":"Cliquez ici pour obtenir les droits d'accès aux commandes.",\
\
"tr_welcome_how_to_be_op_platform":"Il n'y a pas encore de modérateur. Pour devenir modérateur, tenez vous sur la plateforme jaune devant le menu d'option.",\
\
"tr_admin_stopgame_title":"Partie annulée !",\
\
"tr_admin_command_must_be_in_shop":"Cette commande doit être executée dans les salles d'achat.",\
"tr_admin_command_must_be_in_ctf":"Cette commande doit être executée en mode capture de drapeau.",\
"tr_admin_command_must_be_in_lobby":"Cette commande doit être executée dans le lobby.",\
"tr_admin_command_must_be_in_game":"Cette commande doit être executée pendant une manche.",\
\
"tr_map_secondary_objective_launch_map1":"Le trésor du capitaine à été ouvert ! Capturez le et son butin sera à vous !",\
"tr_map_secondary_objective_launch_map2":"Une liche est apparue dans l'église !\nTuez la pour obtenir une récompense !",\
"tr_map_secondary_objective_launch_map3":"Le générateur de l'usine s'est éteint ! Rallumez le pour obtenir une récompense !",\
"tr_map_secondary_objective_launch_map4":"Le coeur du volcan s'est réveillé ! Capturez le et son butin sera à vous !",\
"tr_map_secondary_objective_launch_map5":"Le gardien est apparu dans le temple !\nTuez le pour obtenir une récompense !",\
"tr_map_secondary_objective_launch_map6":"La cerise a prit vie !\nTuez la pour obtenir une récompense !",\
"tr_gingerbread_warning":"Attention au pain d'épice !",\
"tr_secondary_objective_countdown":"???",\
"tr_secondary_objective_pirate":"Trésor du capitaine",\
"tr_secondary_objective_lich":"Liche",\
"tr_secondary_objective_factory":"Générateur de l'usine",\
"tr_secondary_objective_volcano":"Cœur du volcan",\
"tr_secondary_objective_guardian":"Le Gardien",\
"tr_secondary_objective_cherry":"Cerise vivante !",\
"tr_killfeed_boss_lich":"Liche",\
"tr_killfeed_boss_guardian":"Le Gardien",\
"tr_killfeed_boss_cherry":"Cerise vivante",\
"tr_alert_no_spell_in_spawn":"Pas de sorts dans les spawns !",\
"tr_respawn_bossbar":"Réapparition :",\
"tr_actionbar_next_explosive_arrow":"Votre prochaine flèche explosera !",\
"tr_actionbar_next_freeze_arrow":"Votre prochaine flèche gèlera sa cible !",\
"tr_actionbar_next_combined_arrow_1":"Votre prochaine flèche explosera",\
"tr_actionbar_next_combined_arrow_2":" et gèlera sa cible !",\
"tr_actionbar_cannot_teleport_here":"Impossible de se téléporter ici !",\
"tr_actionbar_teleport_too_far":"Trop loin pour se téléporter !",\
"tr_actionbar_shadow_path_placed":"L'entrée de voie des ombres a été posée !",\
"tr_actionbar_shadow_path_destroyed":"Votre voie des ombres a été détruite !",\
"tr_actionbar_bear_trap_placed":"Votre piège à ours a été posé !",\
"tr_actionbar_trap_destroyed":"Votre piège a été détruit !",\
"tr_actionbar_own_trap_destroyed":"Vous avez détruit votre piège.",\
"tr_actionbar_cannot_cast_here":"Impossible de lancer ce sort ici !",\
"tr_actionbar_cannot_cast_during_countdown":"Impossible de lancer des sorts pendant l'attente !",\
"tr_actionbar_cannot_cast_while_hooking":"Impossible de lancer un sort en agrippant !",\
"tr_actionbar_cannot_cast_while_hooked":"Impossible de lancer un sort en étant agrippé !",\
"tr_actionbar_cannot_cast_while_trapped":"Impossible de lancer un sort en étant piégé !",\
"tr_actionbar_cannot_hook_in_respawn":"Impossible d'utiliser le grappin dans les zones de réapparition !",\
"tr_actionbar_cooldown_ready":" : disponible",\
"tr_point_capture":"Capture de l'objectif",\
"tr_secondary_objective_blue_controls":"L'équipe bleue contrôle l'objectif secondaire !",\
"tr_secondary_objective_red_controls":"L'équipe rouge contrôle l'objectif secondaire !",\
"tr_secondary_objective_blue_completed":"L'équipe bleue a réussi l'objectif secondaire !",\
"tr_secondary_objective_red_completed":"L'équipe rouge a réussi l'objectif secondaire !",\
"tr_round_end_completed_round":"pour avoir terminé la manche ",\
"tr_round_end_completed_secondary_objective":"pour avoir réussi l'objectif secondaire de la manche ",\
"tr_round_end_round_over":"Manche terminée !",\
\
"tr_ffa_objective_title":"Eliminations :",\
"tr_ffa_objective_goal":"Objectif :",\
\
"tr_end_game_ffa_wins_with":"gagne avec",\
"tr_end_game_ffa_eliminations":"éliminations",\
"tr_end_game_ctf_victory":"Victoire !",\
"tr_end_game_ctf_defeat":"Défaite :(",\
"tr_end_game_ctf_draw":"Égalité",\
"tr_end_game_ctf_blue_team_won":"L'équipe bleue a gagné !",\
"tr_end_game_ctf_red_team_won":"L'équipe rouge a gagné !",\
"tr_teamkill_own_team_eliminated":"Votre équipe a été éliminée !",\
"tr_teamkill_enemy_team_eliminated":"Équipe adverse éliminée !",\
"tr_teamkill_blue_team_eliminated":"Équipe bleue éliminée !",\
"tr_teamkill_red_team_eliminated":"Équipe rouge éliminée !",\
\
"tr_warrior_passive1_name":"Armure blindée",\
"tr_warrior_passive1_lore_1":"Votre plastron vous octroie 1,5 fois plus de points de vie.",\
"tr_warrior_passive1_lore_2":"Vos jambières vous octroient deux fois moins de vitesse.",\
\
"tr_warrior_weapon1_0_name":"Hache de débutant",\
"tr_warrior_weapon1_0_lore_1":"+0,5 point d'attaque",\
"tr_warrior_weapon1_1_name":"Hache de bataille I",\
"tr_warrior_weapon1_1_lore_1":"+1 point d'attaque",\
"tr_warrior_weapon1_2_name":"Hache de bataille II",\
"tr_warrior_weapon1_2_lore_1":"+2 points d'attaque",\
"tr_warrior_weapon1_3_name":"Hache de bataille III",\
"tr_warrior_weapon1_3_lore_1":"+3 points d'attaque",\
"tr_warrior_weapon1_4_name":"Hache de bataille IV",\
"tr_warrior_weapon1_4_lore_1":"+4 points d'attaque",\
"tr_warrior_weapon1_5_name":"Hache de bataille V",\
"tr_warrior_weapon1_5_lore_1":"+5 points d'attaque",\
"tr_warrior_weapon1_6_name":"Hache de bataille VI",\
"tr_warrior_weapon1_6_lore_1":"+6 points d'attaque",\
"tr_warrior_weapon1_7_name":"Hache de bataille VII",\
"tr_warrior_weapon1_7_lore_1":"+7 points d'attaque",\
"tr_warrior_weapon1_8_name":"Hache de bataille VIII",\
"tr_warrior_weapon1_8_lore_1":"+8 points d'attaque",\
"tr_warrior_weapon1_9_name":"Hache de bataille IX",\
"tr_warrior_weapon1_9_lore_1":"+9 points d'attaque",\
"tr_warrior_weapon1_10_name":"Hache de bataille X",\
"tr_warrior_weapon1_10_lore_1":"+10 points d'attaque",\
"tr_warrior_weapon1_max_name":"Hache de bataille X",\
"tr_warrior_chest_1_name":"Plastron de santé I",\
"tr_warrior_chest_1_lore_1":"+0.5 point d'armure.",\
"tr_warrior_chest_1_lore_2":"+15% points de vie.",\
"tr_warrior_chest_2_name":"Plastron de santé II",\
"tr_warrior_chest_2_lore_1":"+1 point d'armure.",\
"tr_warrior_chest_2_lore_2":"+30% points de vie.",\
"tr_warrior_chest_3_name":"Plastron de santé III",\
"tr_warrior_chest_3_lore_1":"+1.5 point d'armure.",\
"tr_warrior_chest_3_lore_2":"+45% points de vie.",\
"tr_warrior_chest_4_name":"Plastron de santé IV",\
"tr_warrior_chest_4_lore_1":"+2 points d'armure.",\
"tr_warrior_chest_4_lore_2":"+60% points de vie.",\
"tr_warrior_chest_5_name":"Plastron de santé V",\
"tr_warrior_chest_5_lore_1":"+2.5 points d'armure.",\
"tr_warrior_chest_5_lore_2":"+75% points de vie.",\
"tr_warrior_chest_6_name":"Plastron de santé VI",\
"tr_warrior_chest_6_lore_1":"+3 points d'armure.",\
"tr_warrior_chest_6_lore_2":"+90% points de vie.",\
"tr_warrior_chest_7_name":"Plastron de santé VII",\
"tr_warrior_chest_7_lore_1":"+3.5 points d'armure.",\
"tr_warrior_chest_7_lore_2":"+105% points de vie.",\
"tr_warrior_chest_8_name":"Plastron de santé VIII",\
"tr_warrior_chest_8_lore_1":"+4 points d'armure.",\
"tr_warrior_chest_8_lore_2":"+120% points de vie.",\
"tr_warrior_chest_9_name":"Plastron de santé IX",\
"tr_warrior_chest_9_lore_1":"+4.5 points d'armure.",\
"tr_warrior_chest_9_lore_2":"+135% points de vie.",\
"tr_warrior_chest_10_name":"Plastron de santé X",\
"tr_warrior_chest_10_lore_1":"+5 points d'armure.",\
"tr_warrior_chest_10_lore_2":"+150% points de vie.",\
"tr_warrior_chest_max_name":"Plastron de santé X",\
"tr_warrior_legs_1_name":"Jambières de vitesse I",\
"tr_warrior_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_warrior_legs_1_lore_2":"+1,5% vitesse de déplacement.",\
"tr_warrior_legs_2_name":"Jambières de vitesse II",\
"tr_warrior_legs_2_lore_1":"+1 point d'armure.",\
"tr_warrior_legs_2_lore_2":"+3% vitesse de déplacement.",\
"tr_warrior_legs_3_name":"Jambières de vitesse III",\
"tr_warrior_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_warrior_legs_3_lore_2":"+4,5% vitesse de déplacement.",\
"tr_warrior_legs_4_name":"Jambières de vitesse IV",\
"tr_warrior_legs_4_lore_1":"+2 points d'armure.",\
"tr_warrior_legs_4_lore_2":"+6% vitesse de déplacement.",\
"tr_warrior_legs_5_name":"Jambières de vitesse V",\
"tr_warrior_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_warrior_legs_5_lore_2":"+7,5% vitesse de déplacement.",\
"tr_warrior_legs_6_name":"Jambières de vitesse VI",\
"tr_warrior_legs_6_lore_1":"+3 points d'armure.",\
"tr_warrior_legs_6_lore_2":"+9% vitesse de déplacement.",\
"tr_warrior_legs_7_name":"Jambières de vitesse VII",\
"tr_warrior_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_warrior_legs_7_lore_2":"+10,5% vitesse de déplacement.",\
"tr_warrior_legs_8_name":"Jambières de vitesse VIII",\
"tr_warrior_legs_8_lore_1":"+4 points d'armure.",\
"tr_warrior_legs_8_lore_2":"+12% vitesse de déplacement.",\
"tr_warrior_legs_9_name":"Jambières de vitesse IX",\
"tr_warrior_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_warrior_legs_9_lore_2":"+13,5% vitesse de déplacement.",\
"tr_warrior_legs_10_name":"Jambières de vitesse X",\
"tr_warrior_legs_10_lore_1":"+5 points d'armure.",\
"tr_warrior_legs_10_lore_2":"+15% vitesse de déplacement.",\
"tr_warrior_legs_max_name":"Jambières de vitesse X",\
"tr_warrior_boots_1_name":"Bottes d'acrobate I",\
"tr_warrior_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_warrior_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_warrior_boots_2_name":"Bottes d'acrobate II",\
"tr_warrior_boots_2_lore_1":"+1 point d'armure.",\
"tr_warrior_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_warrior_boots_3_name":"Bottes d'acrobate III",\
"tr_warrior_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_warrior_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_warrior_boots_4_name":"Bottes d'acrobate IV",\
"tr_warrior_boots_4_lore_1":"+2 points d'armure.",\
"tr_warrior_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_warrior_boots_5_name":"Bottes d'acrobate V",\
"tr_warrior_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_warrior_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_warrior_boots_6_name":"Bottes d'acrobate VI",\
"tr_warrior_boots_6_lore_1":"+3 points d'armure.",\
"tr_warrior_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_warrior_boots_7_name":"Bottes d'acrobate VII",\
"tr_warrior_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_warrior_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_warrior_boots_8_name":"Bottes d'acrobate VIII",\
"tr_warrior_boots_8_lore_1":"+4 points d'armure.",\
"tr_warrior_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_warrior_boots_9_name":"Bottes d'acrobate IX",\
"tr_warrior_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_warrior_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_warrior_boots_10_name":"Bottes d'acrobate X",\
"tr_warrior_boots_10_lore_1":"+5 points d'armure.",\
"tr_warrior_boots_10_lore_2":"+10 distance de chute avant dégâts",\
"tr_warrior_boots_max_name":"Bottes d'acrobate X",\
"tr_bossbar_hooked_by":"Agrippé par  ",\
"tr_bossbar_hooked_someone":"Vous avez agrippé ",\
"tr_bossbar_trapped_by":" vous a piégé !",\
"tr_bossbar_trapped_someone":" est dans votre piège !",\
"tr_bossbar_blinded":"Aveuglé :",\
"tr_warrior_spell1_1_name":"Berzerk I",\
"tr_warrior_spell1_1_lore_1":"-----------------------------------",\
"tr_warrior_spell1_1_lore_2":"Augmente les dégats infligés de 6 points",\
"tr_warrior_spell1_1_lore_3":"pendant 4s.",\
"tr_warrior_spell1_1_lore_4":"Augmente la vitesse de déplacement de",\
"tr_warrior_spell1_1_lore_5":"20% pendant 4s.",\
"tr_warrior_spell1_1_lore_6":"Réduit les points de vie maximum de 30%",\
"tr_warrior_spell1_1_lore_7":"pendant 4s.",\
"tr_warrior_spell1_1_lore_8":"Supprime la resistance de l'armure",\
"tr_warrior_spell1_1_lore_9":"pendant 4s.",\
"tr_warrior_spell1_1_lore_10":"Temps de recharge: 20s.",\
"tr_warrior_spell1_1_lore_11":"-----------------------------------",\
"tr_warrior_cooldownspell1_1_name":"Berzerk I",\
"tr_warrior_spell1_2_name":"Berzerk II",\
"tr_warrior_spell1_2_lore_1":"-----------------------------------",\
"tr_warrior_spell1_2_lore_2":"Augmente les dégats infligés de 9 points",\
"tr_warrior_spell1_2_lore_3":"pendant 4s.",\
"tr_warrior_spell1_2_lore_4":"Augmente la vitesse de déplacement de",\
"tr_warrior_spell1_2_lore_5":"20% pendant 4s.",\
"tr_warrior_spell1_2_lore_6":"Réduit les points de vie maximum de 30%",\
"tr_warrior_spell1_2_lore_7":"pendant 4s.",\
"tr_warrior_spell1_2_lore_8":"Supprime la resistance de l'armure",\
"tr_warrior_spell1_2_lore_9":"pendant 4s.",\
"tr_warrior_spell1_2_lore_10":"Temps de recharge: 20s.",\
"tr_warrior_spell1_2_lore_11":"-----------------------------------",\
"tr_warrior_cooldownspell1_2_name":"Berzerk II",\
"tr_warrior_spell1_3_name":"Berzerk III",\
"tr_warrior_spell1_3_lore_1":"-----------------------------------",\
"tr_warrior_spell1_3_lore_2":"Augmente les dégats infligés de 9 points",\
"tr_warrior_spell1_3_lore_3":"pendant 4s.",\
"tr_warrior_spell1_3_lore_4":"Augmente la vitesse de déplacement de",\
"tr_warrior_spell1_3_lore_5":"40% pendant 4s.",\
"tr_warrior_spell1_3_lore_6":"Réduit les points de vie maximum de 30%",\
"tr_warrior_spell1_3_lore_7":"pendant 4s.",\
"tr_warrior_spell1_3_lore_8":"Supprime la resistance de l'armure",\
"tr_warrior_spell1_3_lore_9":"pendant 4s.",\
"tr_warrior_spell1_3_lore_10":"Temps de recharge: 20s.",\
"tr_warrior_spell1_3_lore_11":"-----------------------------------",\
"tr_warrior_spell1_max_name":"Berzerk III",\
"tr_warrior_cooldownspell1_3_name":"Berzerk III",\
"tr_warrior_spell2_1_name":"Drapeau de ralliement I",\
"tr_warrior_spell2_1_lore_1":"-----------------------------------",\
"tr_warrior_spell2_1_lore_2":"Vous posez un drapeau de ralliement à",\
"tr_warrior_spell2_1_lore_3":"votre emplacement.",\
"tr_warrior_spell2_1_lore_4":"Le drapeau augmente de 20% votre",\
"tr_warrior_spell2_1_lore_5":"résistance aux dégâts ainsi que celle",\
"tr_warrior_spell2_1_lore_6":"de vos alliés dans un rayon de 5 blocs.",\
"tr_warrior_spell2_1_lore_7":"Le drapeau disparait après 7 secondes.",\
"tr_warrior_spell2_1_lore_8":"Temps de recharge: 15s.",\
"tr_warrior_spell2_1_lore_9":"-----------------------------------",\
"tr_warrior_cooldownspell2_1_name":"Drapeau de ralliement I",\
"tr_warrior_spell2_2_name":"Drapeau de ralliement II",\
"tr_warrior_spell2_2_lore_1":"-----------------------------------",\
"tr_warrior_spell2_2_lore_2":"Vous posez un drapeau de ralliement à",\
"tr_warrior_spell2_2_lore_3":"votre emplacement.",\
"tr_warrior_spell2_2_lore_4":"Le drapeau augmente de 40% votre",\
"tr_warrior_spell2_2_lore_5":"résistance aux dégâts ainsi que celle",\
"tr_warrior_spell2_2_lore_6":"de vos alliés dans un rayon de 5 blocs.",\
"tr_warrior_spell2_2_lore_7":"Le drapeau disparait après 7 secondes.",\
"tr_warrior_spell2_2_lore_8":"Temps de recharge: 15s.",\
"tr_warrior_spell2_2_lore_9":"-----------------------------------",\
"tr_warrior_cooldownspell2_2_name":"Drapeau de ralliement II",\
"tr_warrior_spell2_3_name":"Drapeau de ralliement III",\
"tr_warrior_spell2_3_lore_1":"-----------------------------------",\
"tr_warrior_spell2_3_lore_2":"Vous posez un drapeau de ralliement à",\
"tr_warrior_spell2_3_lore_3":"votre emplacement.",\
"tr_warrior_spell2_3_lore_4":"Le drapeau augmente de 40% votre",\
"tr_warrior_spell2_3_lore_5":"résistance aux dégâts ainsi que celle",\
"tr_warrior_spell2_3_lore_6":"de vos alliés dans un rayon de 5 blocs.",\
"tr_warrior_spell2_3_lore_7":"Le drapeau disparait après 11 secondes.",\
"tr_warrior_spell2_3_lore_8":"Temps de recharge: 10s.",\
"tr_warrior_spell2_3_lore_9":"-----------------------------------",\
"tr_warrior_cooldownspell2_3_name":"Drapeau de ralliement III",\
"tr_warrior_spell2_max_name":"Drapeau de ralliement III",\
"tr_warrior_spell3_1_name":"Grappin",\
"tr_warrior_spell3_1_lore_1":"-----------------------------------------",\
"tr_warrior_spell3_1_lore_2":"Lance un grappin dans la direction",\
"tr_warrior_spell3_1_lore_3":"visée, qui ramènera le premier joueur adverse",\
"tr_warrior_spell3_1_lore_4":"dans une distance de 25 blocs.",\
"tr_warrior_spell3_1_lore_5":"Le joueur ramené est également étourdit",\
"tr_warrior_spell3_1_lore_6":"pendant 2 secondes et subit 1 point de dégât.",\
"tr_warrior_spell3_1_lore_7":"L'étourdissement empêche l'utilisation des sorts.",\
"tr_warrior_spell3_1_lore_8":"Vitesse du grappin 30 blocs / seconde",\
"tr_warrior_spell3_1_lore_9":"Temps de recharge: 7s.",\
"tr_warrior_spell3_1_lore_10":"Temps de recharge en cas de collision",\
"tr_warrior_spell3_1_lore_11":"proche: 2s.",\
"tr_warrior_spell3_1_lore_12":"-----------------------------------------",\
"tr_warrior_spell3_max_name":"Grappin",\
"tr_warrior_cooldownspell3_1_name":"Grappin",\
\
\
\
\
\
"tr_archer_passive1_name":"Vision elfique",\
"tr_archer_passive1_lore_1":"Vous pouvez voir les joueurs adverses invisibles.",\
\
"tr_archer_passive2_name":"Abondance de flèches",\
"tr_archer_passive2_lore_1":"Vous récupérez une flèche 2 secondes après chaque tir. Améliorer votre arc vous permettra de stocker davantage de flèches sur vous.",\
\
"tr_archer_passive3_name":"Agilité elfique",\
"tr_archer_passive3_lore_1":"Accroupissez-vous pour augmenter votre hauteur de saut jusqu'à 2 blocs. Les grands sauts font tomber le drapeau.",\
\
"tr_archer_classic_arrow_1_name":"Flèche",\
"tr_archer_classic_arrow_1_lore_1":"-----------------------------",\
"tr_archer_classic_arrow_1_lore_2":"Une flèche simple, améliorez votre",\
"tr_archer_classic_arrow_1_lore_3":"arc pour obtenir plus de flèches",\
"tr_archer_classic_arrow_1_lore_4":"-----------------------------",\
"tr_archer_explosive_arrow_1_name":"Flèche explosive I",\
"tr_archer_explosive_arrow_1_lore_1":"-----------------------------------",\
"tr_archer_explosive_arrow_1_lore_2":"Votre prochaine flèche explosera au",\
"tr_archer_explosive_arrow_1_lore_3":"moindre contact et infligera 12 points",\
"tr_archer_explosive_arrow_1_lore_4":"de dégats dans un rayon de 3 blocs",\
"tr_archer_explosive_arrow_1_lore_5":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_explosive_arrow_1_lore_6":"celui de la flèche de glace.",\
"tr_archer_explosive_arrow_1_lore_7":"Temps de recharge: 25s.",\
"tr_archer_explosive_arrow_1_lore_8":"-----------------------------------",\
"tr_archer_explosive_arrow_2_name":"Flèche explosive II",\
"tr_archer_explosive_arrow_2_lore_1":"-----------------------------------",\
"tr_archer_explosive_arrow_2_lore_2":"Votre prochaine flèche explosera au",\
"tr_archer_explosive_arrow_2_lore_3":"moindre contact et infligera 24 points",\
"tr_archer_explosive_arrow_2_lore_4":"de dégats dans un rayon de 4 blocs.",\
"tr_archer_explosive_arrow_2_lore_5":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_explosive_arrow_2_lore_6":"celui de la flèche de glace.",\
"tr_archer_explosive_arrow_2_lore_7":"Temps de recharge: 25s.",\
"tr_archer_explosive_arrow_2_lore_8":"-----------------------------------",\
"tr_archer_explosive_arrow_3_name":"Flèche explosive III",\
"tr_archer_explosive_arrow_3_lore_1":"-----------------------------------",\
"tr_archer_explosive_arrow_3_lore_2":"Votre prochaine flèche explosera au",\
"tr_archer_explosive_arrow_3_lore_3":"moindre contact et infligera 24 points",\
"tr_archer_explosive_arrow_3_lore_4":"de dégats dans un rayon de 6 blocs.",\
"tr_archer_explosive_arrow_3_lore_5":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_explosive_arrow_3_lore_6":"celui de la flèche de glace.",\
"tr_archer_explosive_arrow_3_lore_7":"Temps de recharge: 25s.",\
"tr_archer_explosive_arrow_3_lore_8":"-----------------------------------",\
"tr_archer_ice_arrow_1_name":"Flèche de glace I",\
"tr_archer_ice_arrow_1_lore_1":"--------------------------------------",\
"tr_archer_ice_arrow_1_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_ice_arrow_1_lore_3":"de la cible de 30% pendant 4 secondes.",\
"tr_archer_ice_arrow_1_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_ice_arrow_1_lore_5":"tombera au sol immédiatement.",\
"tr_archer_ice_arrow_1_lore_6":"Temps de recharge: 20s.",\
"tr_archer_ice_arrow_1_lore_7":"--------------------------------------",\
"tr_archer_ice_arrow_2_name":"Flèche de glace II",\
"tr_archer_ice_arrow_2_lore_1":"--------------------------------------",\
"tr_archer_ice_arrow_2_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_ice_arrow_2_lore_3":"de la cible de 45% pendant 5 secondes.",\
"tr_archer_ice_arrow_2_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_ice_arrow_2_lore_5":"tombera au sol immédiatement.",\
"tr_archer_ice_arrow_2_lore_6":"Temps de recharge: 15s.",\
"tr_archer_ice_arrow_2_lore_7":"--------------------------------------",\
"tr_archer_ice_arrow_3_name":"Flèche de glace III",\
"tr_archer_ice_arrow_3_lore_1":"--------------------------------------",\
"tr_archer_ice_arrow_3_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_ice_arrow_3_lore_3":"de la cible de 60% pendant 7 secondes.",\
"tr_archer_ice_arrow_3_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_ice_arrow_3_lore_5":"tombera au sol immédiatement.",\
"tr_archer_ice_arrow_3_lore_6":"Temps de recharge: 10s.",\
"tr_archer_ice_arrow_3_lore_7":"--------------------------------------",\
"tr_archer_explosive_ice_arrow_1_name":"Flèche de glace explosive",\
"tr_archer_explosive_ice_arrow_1_lore_1":"------------------------",\
"tr_archer_explosive_ice_arrow_1_lore_2":"Combine les effets de:",\
"tr_archer_explosive_ice_arrow_1_lore_3":"La flèche explosive",\
"tr_archer_explosive_ice_arrow_1_lore_4":"et la flèche de glace",\
"tr_archer_explosive_ice_arrow_1_lore_5":"------------------------",\
"tr_archer_weapon1_0_name":"Arc de débutant",\
"tr_archer_weapon1_0_lore_1":"Puissance 0 : 5 à 11 points",\
"tr_archer_weapon1_0_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_0_lore_3":"Carquois  : 1 flèche",\
"tr_archer_weapon1_1_name":"Arc de combat I",\
"tr_archer_weapon1_1_lore_1":"Puissance 1 : 8 à 16 points",\
"tr_archer_weapon1_1_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_1_lore_3":"Carquois : 1 flèche",\
"tr_archer_weapon1_2_name":"Arc de combat II",\
"tr_archer_weapon1_2_lore_1":"Puissance 2 : 9 à 19 points",\
"tr_archer_weapon1_2_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_2_lore_3":"Carquois : 2 flèches",\
"tr_archer_weapon1_3_name":"Arc de combat III",\
"tr_archer_weapon1_3_lore_1":"Puissance 3 : 10 à 20 points",\
"tr_archer_weapon1_3_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_3_lore_3":"Carquois : 2 flèches",\
"tr_archer_weapon1_4_name":"Arc de combat IV",\
"tr_archer_weapon1_4_lore_1":"Puissance 3 : 10 à 20 points",\
"tr_archer_weapon1_4_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_4_lore_3":"Recul 1",\
"tr_archer_weapon1_4_lore_4":"Carquois : 3 flèches",\
"tr_archer_weapon1_5_name":"Arc de combat V",\
"tr_archer_weapon1_5_lore_1":"Puissance 4 : 12 à 23 points",\
"tr_archer_weapon1_5_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_5_lore_3":"Recul 1",\
"tr_archer_weapon1_5_lore_4":"Carquois : 3 flèches",\
"tr_archer_weapon1_6_name":"Arc de combat VI",\
"tr_archer_weapon1_6_lore_1":"Puissance 4 : 12 à 23 points",\
"tr_archer_weapon1_6_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_6_lore_3":"Recul 1",\
"tr_archer_weapon1_6_lore_4":"Carquois : 4 flèches",\
"tr_archer_weapon1_7_name":"Arc de combat VII",\
"tr_archer_weapon1_7_lore_1":"Puissance 5 : 13 à 25 points",\
"tr_archer_weapon1_7_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_7_lore_3":"Recul 1",\
"tr_archer_weapon1_7_lore_4":"Carquois : 4 flèches",\
"tr_archer_weapon1_8_name":"Arc de combat VIII",\
"tr_archer_weapon1_8_lore_1":"Puissance 5 : 13 à 25 points",\
"tr_archer_weapon1_8_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_8_lore_3":"Recul 1",\
"tr_archer_weapon1_8_lore_4":"Carquois : 5 flèches",\
"tr_archer_weapon1_9_name":"Arc de combat IX",\
"tr_archer_weapon1_9_lore_1":"Puissance 6 : 14 à 30 points",\
"tr_archer_weapon1_9_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_9_lore_3":"Recul 1",\
"tr_archer_weapon1_9_lore_4":"Carquois : 5 flèches",\
"tr_archer_weapon1_10_name":"Arc de combat X",\
"tr_archer_weapon1_10_lore_1":"Puissance 6 : 14 à 30 points",\
"tr_archer_weapon1_10_lore_2":"de dégats (selon la charge)",\
"tr_archer_weapon1_10_lore_3":"Recul 2",\
"tr_archer_weapon1_10_lore_4":"Carquois : 6 flèches",\
"tr_archer_chest_1_name":"Plastron de santé I",\
"tr_archer_chest_1_lore_1":"+0,5 point d'armure.",\
"tr_archer_chest_1_lore_2":"+10% points de vie.",\
"tr_archer_chest_2_name":"Plastron de santé II",\
"tr_archer_chest_2_lore_1":"+1 points d'armure.",\
"tr_archer_chest_2_lore_2":"+20% points de vie.",\
"tr_archer_chest_3_name":"Plastron de santé III",\
"tr_archer_chest_3_lore_1":"+1,5 points d'armure.",\
"tr_archer_chest_3_lore_2":"+30% points de vie.",\
"tr_archer_chest_4_name":"Plastron de santé IV",\
"tr_archer_chest_4_lore_1":"+2 points d'armure.",\
"tr_archer_chest_4_lore_2":"+40% points de vie.",\
"tr_archer_chest_5_name":"Plastron de santé V",\
"tr_archer_chest_5_lore_1":"+2,5 points d'armure.",\
"tr_archer_chest_5_lore_2":"+50% points de vie.",\
"tr_archer_chest_6_name":"Plastron de santé VI",\
"tr_archer_chest_6_lore_1":"+3 points d'armure.",\
"tr_archer_chest_6_lore_2":"+60% points de vie.",\
"tr_archer_chest_7_name":"Plastron de santé VII",\
"tr_archer_chest_7_lore_1":"+3,5 points d'armure.",\
"tr_archer_chest_7_lore_2":"+70% points de vie.",\
"tr_archer_chest_8_name":"Plastron de santé VIII",\
"tr_archer_chest_8_lore_1":"+4 points d'armure.",\
"tr_archer_chest_8_lore_2":"+80% points de vie.",\
"tr_archer_chest_9_name":"Plastron de santé IX",\
"tr_archer_chest_9_lore_1":"+4,5 points d'armure.",\
"tr_archer_chest_9_lore_2":"+90% points de vie.",\
"tr_archer_chest_10_name":"Plastron de santé X",\
"tr_archer_chest_10_lore_1":"+5 points d'armure.",\
"tr_archer_chest_10_lore_2":"+100% points de vie.",\
"tr_archer_legs_1_name":"Jambières de vitesse I",\
"tr_archer_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_archer_legs_1_lore_2":"+3% vitesse de déplacement.",\
"tr_archer_legs_2_name":"Jambières de vitesse II",\
"tr_archer_legs_2_lore_1":"+1 point d'armure.",\
"tr_archer_legs_2_lore_2":"+6% vitesse de déplacement.",\
"tr_archer_legs_3_name":"Jambières de vitesse III",\
"tr_archer_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_archer_legs_3_lore_2":"+9% vitesse de déplacement.",\
"tr_archer_legs_4_name":"Jambières de vitesse IV",\
"tr_archer_legs_4_lore_1":"+2 points d'armure.",\
"tr_archer_legs_4_lore_2":"+12% vitesse de déplacement.",\
"tr_archer_legs_5_name":"Jambières de vitesse V",\
"tr_archer_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_archer_legs_5_lore_2":"+15% vitesse de déplacement.",\
"tr_archer_legs_6_name":"Jambières de vitesse VI",\
"tr_archer_legs_6_lore_1":"+3 points d'armure.",\
"tr_archer_legs_6_lore_2":"+18% vitesse de déplacement.",\
"tr_archer_legs_7_name":"Jambières de vitesse VII",\
"tr_archer_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_archer_legs_7_lore_2":"+21% vitesse de déplacement.",\
"tr_archer_legs_8_name":"Jambières de vitesse VIII",\
"tr_archer_legs_8_lore_1":"+4 points d'armure.",\
"tr_archer_legs_8_lore_2":"+24% vitesse de déplacement.",\
"tr_archer_legs_9_name":"Jambières de vitesse IX",\
"tr_archer_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_archer_legs_9_lore_2":"+27% vitesse de déplacement.",\
"tr_archer_legs_10_name":"Jambières de vitesse X",\
"tr_archer_legs_10_lore_1":"+5 points d'armure.",\
"tr_archer_legs_10_lore_2":"+30% vitesse de déplacement.",\
"tr_archer_boots_1_name":"Bottes d'acrobate I",\
"tr_archer_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_archer_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_archer_boots_2_name":"Bottes d'acrobate II",\
"tr_archer_boots_2_lore_1":"+1 point d'armure.",\
"tr_archer_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_archer_boots_3_name":"Bottes d'acrobate III",\
"tr_archer_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_archer_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_archer_boots_4_name":"Bottes d'acrobate IV",\
"tr_archer_boots_4_lore_1":"+2 points d'armure.",\
"tr_archer_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_archer_boots_5_name":"Bottes d'acrobate V",\
"tr_archer_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_archer_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_archer_boots_6_name":"Bottes d'acrobate VI",\
"tr_archer_boots_6_lore_1":"+3 points d'armure.",\
"tr_archer_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_archer_boots_7_name":"Bottes d'acrobate VII",\
"tr_archer_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_archer_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_archer_boots_8_name":"Bottes d'acrobate VIII",\
"tr_archer_boots_8_lore_1":"+4 points d'armure.",\
"tr_archer_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_archer_boots_9_name":"Bottes d'acrobate IX",\
"tr_archer_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_archer_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_archer_boots_10_name":"Bottes d'acrobate X",\
"tr_archer_boots_10_lore_1":"+5 points d'armure.",\
"tr_archer_boots_10_lore_2":"+10 distance de chute avant dégâts",\
"tr_archer_spell1_1_name":"Flèche explosive I",\
"tr_archer_spell1_1_lore_1":"----------------------------------------",\
"tr_archer_spell1_1_lore_2":"Votre prochaine flèche explosera 1s après",\
"tr_archer_spell1_1_lore_3":"avoir touché sa cible ou le sol, infligeant 3 à 16",\
"tr_archer_spell1_1_lore_4":"points de dégâts dans un rayon de 7 blocs.",\
"tr_archer_spell1_1_lore_5":"Les dégâts varient selon le temps de charge",\
"tr_archer_spell1_1_lore_6":"du tir.",\
"tr_archer_spell1_1_lore_7":"Vous pouvez modifier la direction de l’explosion",\
"tr_archer_spell1_1_lore_8":"avant de tirer en réactivant le sort ou en vous",\
"tr_archer_spell1_1_lore_9":"accroupissant.",\
"tr_archer_spell1_1_lore_10":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell1_1_lore_11":"celui de la flèche de glace.",\
"tr_archer_spell1_1_lore_12":"Temps de recharge: 15s.",\
"tr_archer_spell1_1_lore_13":"----------------------------------------",\
"tr_archer_cooldownspell1_1_name":"Flèche explosive I",\
"tr_archer_spell1_2_name":"Flèche explosive II",\
"tr_archer_spell1_2_lore_1":"----------------------------------------",\
"tr_archer_spell1_2_lore_2":"Votre prochaine flèche explosera 1s après",\
"tr_archer_spell1_2_lore_3":"avoir touché sa cible ou le sol, infligeant 6 à 24",\
"tr_archer_spell1_2_lore_4":"points de dégâts dans un rayon de 8 blocs.",\
"tr_archer_spell1_2_lore_5":"Les dégâts varient selon le temps de charge",\
"tr_archer_spell1_2_lore_6":"du tir.",\
"tr_archer_spell1_2_lore_7":"Vous pouvez modifier la direction de l’explosion",\
"tr_archer_spell1_2_lore_8":"avant de tirer en réactivant le sort ou en vous",\
"tr_archer_spell1_2_lore_9":"accroupissant.",\
"tr_archer_spell1_2_lore_10":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell1_2_lore_11":"celui de la flèche de glace.",\
"tr_archer_spell1_2_lore_12":"Temps de recharge: 15s.",\
"tr_archer_spell1_2_lore_13":"----------------------------------------",\
"tr_archer_cooldownspell1_2_name":"Flèche explosive II",\
"tr_archer_spell1_3_name":"Flèche explosive III",\
"tr_archer_spell1_3_lore_1":"----------------------------------------",\
"tr_archer_spell1_3_lore_2":"Votre prochaine flèche explosera 1s après",\
"tr_archer_spell1_3_lore_3":"avoir touché sa cible ou le sol, infligeant 8 à 32",\
"tr_archer_spell1_3_lore_4":"points de dégâts dans un rayon de 9 blocs.",\
"tr_archer_spell1_3_lore_5":"Les dégâts varient selon le temps de charge",\
"tr_archer_spell1_3_lore_6":"du tir.",\
"tr_archer_spell1_3_lore_7":"Vous pouvez modifier la direction de l’explosion",\
"tr_archer_spell1_3_lore_8":"avant de tirer en réactivant le sort ou en vous",\
"tr_archer_spell1_3_lore_9":"accroupissant.",\
"tr_archer_spell1_3_lore_10":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell1_3_lore_11":"celui de la flèche de glace.",\
"tr_archer_spell1_3_lore_12":"Temps de recharge: 15s.",\
"tr_archer_spell1_3_lore_13":"----------------------------------------",\
"tr_archer_cooldownspell1_3_name":"Flèche explosive III",\
"tr_archer_spell2_1_name":"Piège à ours I - Poser",\
"tr_archer_spell2_1_lore_1":"--------------------------------------",\
"tr_archer_spell2_1_lore_2":"Lance un piège à ours au sol qui immobilisera",\
"tr_archer_spell2_1_lore_3":"tout joueur adverse dans un rayon de 1 bloc",\
"tr_archer_spell2_1_lore_4":"pendant 2 secondes et lui infligera 6 points",\
"tr_archer_spell2_1_lore_5":"de dégâts.",\
"tr_archer_spell2_1_lore_6":"Les joueurs immobilisés ne peuvent pas",\
"tr_archer_spell2_1_lore_7":"utiliser de sorts.",\
"tr_archer_spell2_1_lore_8":"Le piège est destructible par tous les joueurs.",\
"tr_archer_spell2_1_lore_9":"Temps de recharge: 10s.",\
"tr_archer_spell2_1_lore_10":"--------------------------------------",\
"tr_archer_spell2_2_name":"Piège à ours II - Poser",\
"tr_archer_spell2_2_lore_1":"--------------------------------------",\
"tr_archer_spell2_2_lore_2":"Lance un piège à ours au sol qui immobilisera",\
"tr_archer_spell2_2_lore_3":"tout joueur adverse dans un rayon de 1 bloc",\
"tr_archer_spell2_2_lore_4":"pendant 3 secondes et lui infligera 6 points",\
"tr_archer_spell2_2_lore_5":"de dégâts.",\
"tr_archer_spell2_2_lore_6":"Les joueurs immobilisés ne peuvent pas",\
"tr_archer_spell2_2_lore_7":"utiliser de sorts.",\
"tr_archer_spell2_2_lore_8":"Le piège est destructible par tous les joueurs.",\
"tr_archer_spell2_2_lore_9":"Temps de recharge: 8s.",\
"tr_archer_spell2_2_lore_10":"--------------------------------------",\
"tr_archer_spell2_3_name":"Piège à ours III - Poser",\
"tr_archer_spell2_3_lore_1":"--------------------------------------",\
"tr_archer_spell2_3_lore_2":"Lance un piège à ours au sol qui immobilisera",\
"tr_archer_spell2_3_lore_3":"tout joueur adverse dans un rayon de 1 bloc",\
"tr_archer_spell2_3_lore_4":"pendant 4 secondes et lui infligera 6 points",\
"tr_archer_spell2_3_lore_5":"de dégâts.",\
"tr_archer_spell2_3_lore_6":"Les joueurs immobilisés ne peuvent pas",\
"tr_archer_spell2_3_lore_7":"utiliser de sorts.",\
"tr_archer_spell2_3_lore_8":"Le piège est destructible par tous les joueurs.",\
"tr_archer_spell2_3_lore_9":"Temps de recharge: 5s.",\
"tr_archer_spell2_3_lore_10":"--------------------------------------",\
"tr_archer_spell2_destroy_1_name":"Piège à ours I - Détruire",\
"tr_archer_spell2_destroy_2_name":"Piège à ours II - Détruire",\
"tr_archer_spell2_destroy_3_name":"Piège à ours III - Détruire",\
"tr_archer_cooldownspell2_1_name":"Piège à ours I - Poser",\
"tr_archer_cooldownspell2_2_name":"Piège à ours II - Poser",\
"tr_archer_cooldownspell2_3_name":"Piège à ours III - Poser",\
"tr_archer_spell3_1_name":"Flèche de glace I",\
"tr_archer_spell3_1_lore_1":"--------------------------------------",\
"tr_archer_spell3_1_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_spell3_1_lore_3":"de la cible de 30% pendant 4 secondes.",\
"tr_archer_spell3_1_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_spell3_1_lore_5":"tombera au sol immédiatement.",\
"tr_archer_spell3_1_lore_6":"Si la cible est en feu, l'effet de brûlure sera",\
"tr_archer_spell3_1_lore_7":"annulé.",\
"tr_archer_spell3_1_lore_8":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell3_1_lore_9":"celui de la flèche explosive.",\
"tr_archer_spell3_1_lore_10":"Temps de recharge: 20s.",\
"tr_archer_spell3_1_lore_11":"--------------------------------------",\
"tr_archer_cooldownspell3_1_name":"Flèche de glace I",\
"tr_archer_spell3_2_name":"Flèche de glace II",\
"tr_archer_spell3_2_lore_1":"--------------------------------------",\
"tr_archer_spell3_2_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_spell3_2_lore_3":"de la cible de 45% pendant 5 secondes.",\
"tr_archer_spell3_2_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_spell3_2_lore_5":"tombera au sol immédiatement.",\
"tr_archer_spell3_2_lore_6":"Si la cible est en feu, l'effet de brûlure sera",\
"tr_archer_spell3_2_lore_7":"annulé.",\
"tr_archer_spell3_2_lore_8":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell3_2_lore_9":"celui de la flèche explosive.",\
"tr_archer_spell3_2_lore_10":"Temps de recharge: 15s.",\
"tr_archer_spell3_2_lore_11":"--------------------------------------",\
"tr_archer_cooldownspell3_2_name":"Flèche de glace II",\
"tr_archer_spell3_3_name":"Flèche de glace III",\
"tr_archer_spell3_3_lore_1":"--------------------------------------",\
"tr_archer_spell3_3_lore_2":"Votre prochaine flèche diminuera la vitesse",\
"tr_archer_spell3_3_lore_3":"de la cible de 60% pendant 7 secondes.",\
"tr_archer_spell3_3_lore_4":"Si la cible porte un drapeau, ce dernier",\
"tr_archer_spell3_3_lore_5":"tombera au sol immédiatement.",\
"tr_archer_spell3_3_lore_6":"Si la cible est en feu, l'effet de brûlure sera",\
"tr_archer_spell3_3_lore_7":"annulé.",\
"tr_archer_spell3_3_lore_8":"L'effet de ce sort peut être cumulé avec",\
"tr_archer_spell3_3_lore_9":"celui de la flèche explosive.",\
"tr_archer_spell3_3_lore_10":"Temps de recharge: 10s.",\
"tr_archer_spell3_3_lore_11":"--------------------------------------",\
"tr_archer_cooldownspell3_3_name":"Flèche de glace III",\
"tr_archer_spell3_status_0_name":"Gel",\
"tr_archer_spell3_status_0_lore_1":"----------------",\
"tr_archer_spell3_status_0_lore_2":"Vous êtes gelé !",\
"tr_archer_spell3_status_0_lore_3":"----------------",\
\
\
\
\
\
"tr_mage_passive1_name":"Bâton magique",\
"tr_mage_passive1_lore_1":"Votre bâton ensorcelé vous permet de tirer sur vos adversaires en échange de mana.\n\nAméliorez votre bâton pour augmenter sa puissance !",\
\
"tr_mage_weapon1_0_name":"Bâton de débutant",\
"tr_mage_weapon1_0_lore_1":"-----------------------------------",\
"tr_mage_weapon1_0_lore_2":"Ce bâton miteux est incapable de lancer",\
"tr_mage_weapon1_0_lore_3":"le moindre sort...",\
"tr_mage_weapon1_0_lore_4":"Mais au moins vous avez une arme !",\
"tr_mage_weapon1_0_lore_5":"-----------------------------------",\
"tr_mage_weapon1_1_name":"Bâton de combat I",\
"tr_mage_weapon1_1_lore_1":"+0.5 point d'attaque.",\
"tr_mage_weapon1_1_lore_2":"---------------------------",\
"tr_mage_weapon1_1_lore_3":"Lance un sort dans la direction visée",\
"tr_mage_weapon1_1_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_1_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_1_lore_6":"Portée maximale: 20 blocs.",\
"tr_mage_weapon1_1_lore_7":"Coût en mana: 90",\
"tr_mage_weapon1_1_lore_8":"---------------------------",\
"tr_mage_weapon1_2_name":"Bâton de combat II",\
"tr_mage_weapon1_2_lore_1":"+1 point d'attaque.",\
"tr_mage_weapon1_2_lore_2":"---------------------------",\
"tr_mage_weapon1_2_lore_3":"Lance un sort dans la direction visée",\
"tr_mage_weapon1_2_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_2_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_2_lore_6":"Portée maximale: 25 blocs.",\
"tr_mage_weapon1_2_lore_7":"Coût en mana: 90",\
"tr_mage_weapon1_2_lore_8":"---------------------------",\
"tr_mage_weapon1_3_name":"Bâton de combat III",\
"tr_mage_weapon1_3_lore_1":"+1.5 points d'attaque.",\
"tr_mage_weapon1_3_lore_2":"---------------------------",\
"tr_mage_weapon1_3_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_3_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_3_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_3_lore_6":"Portée maximale: 30 blocs.",\
"tr_mage_weapon1_3_lore_7":"Coût en mana: 85",\
"tr_mage_weapon1_3_lore_8":"---------------------------",\
"tr_mage_weapon1_4_name":"Bâton de combat IV",\
"tr_mage_weapon1_4_lore_1":"+2 points d'attaque.",\
"tr_mage_weapon1_4_lore_2":"---------------------------",\
"tr_mage_weapon1_4_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_4_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_4_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_4_lore_6":"Portée maximale: 35 blocs.",\
"tr_mage_weapon1_4_lore_7":"Coût en mana: 85",\
"tr_mage_weapon1_4_lore_8":"---------------------------",\
"tr_mage_weapon1_5_name":"Bâton de combat V",\
"tr_mage_weapon1_5_lore_1":"+2.5 points d'attaque.",\
"tr_mage_weapon1_5_lore_2":"---------------------------",\
"tr_mage_weapon1_5_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_5_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_5_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_5_lore_6":"Portée maximale: 35 blocs.",\
"tr_mage_weapon1_5_lore_7":"Coût en mana: 80",\
"tr_mage_weapon1_5_lore_8":"---------------------------",\
"tr_mage_weapon1_6_name":"Bâton de combat VI",\
"tr_mage_weapon1_6_lore_1":"+3 points d'attaque.",\
"tr_mage_weapon1_6_lore_2":"---------------------------",\
"tr_mage_weapon1_6_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_6_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_6_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_6_lore_6":"Portée maximale: 40 blocs.",\
"tr_mage_weapon1_6_lore_7":"Coût en mana: 75",\
"tr_mage_weapon1_6_lore_8":"---------------------------",\
"tr_mage_weapon1_7_name":"Bâton de combat VII",\
"tr_mage_weapon1_7_lore_1":"+3.5 points d'attaque.",\
"tr_mage_weapon1_7_lore_2":"---------------------------",\
"tr_mage_weapon1_7_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_7_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_7_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_7_lore_6":"Portée maximale: 40 blocs.",\
"tr_mage_weapon1_7_lore_7":"Coût en mana: 70",\
"tr_mage_weapon1_7_lore_8":"---------------------------",\
"tr_mage_weapon1_8_name":"Bâton de combat VIII",\
"tr_mage_weapon1_8_lore_1":"+4 points d'attaque.",\
"tr_mage_weapon1_8_lore_2":"---------------------------",\
"tr_mage_weapon1_8_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_8_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_8_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_8_lore_6":"Portée maximale: 40 blocs.",\
"tr_mage_weapon1_8_lore_7":"Coût en mana: 65",\
"tr_mage_weapon1_8_lore_8":"---------------------------",\
"tr_mage_weapon1_9_name":"Bâton de combat IX",\
"tr_mage_weapon1_9_lore_1":"+4.5 points d'attaque.",\
"tr_mage_weapon1_9_lore_2":"---------------------------",\
"tr_mage_weapon1_9_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_9_lore_4":"il infligera 6 points de dégats",\
"tr_mage_weapon1_9_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_9_lore_6":"Portée maximale: 45 blocs.",\
"tr_mage_weapon1_9_lore_7":"Coût en mana: 65",\
"tr_mage_weapon1_9_lore_8":"---------------------------",\
"tr_mage_weapon1_10_name":"Bâton de combat X",\
"tr_mage_weapon1_10_lore_1":"+5 points d'attaque.",\
"tr_mage_weapon1_10_lore_2":"----------------------------",\
"tr_mage_weapon1_10_lore_3":"Lance un sort dans la direction visée,",\
"tr_mage_weapon1_10_lore_4":"il infligera 12 points de dégats",\
"tr_mage_weapon1_10_lore_5":"au premier adversaire rencontré.",\
"tr_mage_weapon1_10_lore_6":"Portée maximale: 45 blocs.",\
"tr_mage_weapon1_10_lore_7":"Coût en mana: 55",\
"tr_mage_weapon1_10_lore_8":"----------------------------",\
"tr_mage_chest_1_name":"Plastron de santé I",\
"tr_mage_chest_1_lore_1":"+0,5 point d'armure.",\
"tr_mage_chest_1_lore_2":"+10% points de vie.",\
"tr_mage_chest_2_name":"Plastron de santé II",\
"tr_mage_chest_2_lore_1":"+1 points d'armure.",\
"tr_mage_chest_2_lore_2":"+20% points de vie.",\
"tr_mage_chest_3_name":"Plastron de santé III",\
"tr_mage_chest_3_lore_1":"+1,5 points d'armure.",\
"tr_mage_chest_3_lore_2":"+30% points de vie.",\
"tr_mage_chest_4_name":"Plastron de santé IV",\
"tr_mage_chest_4_lore_1":"+2 points d'armure.",\
"tr_mage_chest_4_lore_2":"+40% points de vie.",\
"tr_mage_chest_5_name":"Plastron de santé V",\
"tr_mage_chest_5_lore_1":"+2,5 points d'armure.",\
"tr_mage_chest_5_lore_2":"+50% points de vie.",\
"tr_mage_chest_6_name":"Plastron de santé VI",\
"tr_mage_chest_6_lore_1":"+3 points d'armure.",\
"tr_mage_chest_6_lore_2":"+60% points de vie.",\
"tr_mage_chest_7_name":"Plastron de santé VII",\
"tr_mage_chest_7_lore_1":"+3,5 points d'armure.",\
"tr_mage_chest_7_lore_2":"+70% points de vie.",\
"tr_mage_chest_8_name":"Plastron de santé VIII",\
"tr_mage_chest_8_lore_1":"+4 points d'armure.",\
"tr_mage_chest_8_lore_2":"+80% points de vie.",\
"tr_mage_chest_9_name":"Plastron de santé IX",\
"tr_mage_chest_9_lore_1":"+4,5 points d'armure.",\
"tr_mage_chest_9_lore_2":"+90% points de vie.",\
"tr_mage_chest_10_name":"Plastron de santé X",\
"tr_mage_chest_10_lore_1":"+5 points d'armure.",\
"tr_mage_chest_10_lore_2":"+100% points de vie.",\
"tr_mage_legs_1_name":"Jambières de vitesse I",\
"tr_mage_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_mage_legs_1_lore_2":"+3% vitesse de déplacement.",\
"tr_mage_legs_2_name":"Jambières de vitesse II",\
"tr_mage_legs_2_lore_1":"+1 point d'armure.",\
"tr_mage_legs_2_lore_2":"+6% vitesse de déplacement.",\
"tr_mage_legs_3_name":"Jambières de vitesse III",\
"tr_mage_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_mage_legs_3_lore_2":"+9% vitesse de déplacement.",\
"tr_mage_legs_4_name":"Jambières de vitesse IV",\
"tr_mage_legs_4_lore_1":"+2 points d'armure.",\
"tr_mage_legs_4_lore_2":"+12% vitesse de déplacement.",\
"tr_mage_legs_5_name":"Jambières de vitesse V",\
"tr_mage_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_mage_legs_5_lore_2":"+15% vitesse de déplacement.",\
"tr_mage_legs_6_name":"Jambières de vitesse VI",\
"tr_mage_legs_6_lore_1":"+3 points d'armure.",\
"tr_mage_legs_6_lore_2":"+18% vitesse de déplacement.",\
"tr_mage_legs_7_name":"Jambières de vitesse VII",\
"tr_mage_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_mage_legs_7_lore_2":"+21% vitesse de déplacement.",\
"tr_mage_legs_8_name":"Jambières de vitesse VIII",\
"tr_mage_legs_8_lore_1":"+4 points d'armure.",\
"tr_mage_legs_8_lore_2":"+24% vitesse de déplacement.",\
"tr_mage_legs_9_name":"Jambières de vitesse IX",\
"tr_mage_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_mage_legs_9_lore_2":"+27% vitesse de déplacement.",\
"tr_mage_legs_10_name":"Jambières de vitesse X",\
"tr_mage_legs_10_lore_1":"+5 points d'armure.",\
"tr_mage_legs_10_lore_2":"+30% vitesse de déplacement.",\
"tr_mage_boots_1_name":"Bottes d'acrobate I",\
"tr_mage_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_mage_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_mage_boots_2_name":"Bottes d'acrobate II",\
"tr_mage_boots_2_lore_1":"+1 point d'armure.",\
"tr_mage_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_mage_boots_3_name":"Bottes d'acrobate III",\
"tr_mage_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_mage_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_mage_boots_4_name":"Bottes d'acrobate IV",\
"tr_mage_boots_4_lore_1":"+2 points d'armure.",\
"tr_mage_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_mage_boots_5_name":"Bottes d'acrobate V",\
"tr_mage_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_mage_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_mage_boots_6_name":"Bottes d'acrobate VI",\
"tr_mage_boots_6_lore_1":"+3 points d'armure.",\
"tr_mage_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_mage_boots_7_name":"Bottes d'acrobate VII",\
"tr_mage_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_mage_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_mage_boots_8_name":"Bottes d'acrobate VIII",\
"tr_mage_boots_8_lore_1":"+4 points d'armure.",\
"tr_mage_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_mage_boots_9_name":"Bottes d'acrobate IX",\
"tr_mage_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_mage_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_mage_boots_10_name":"Bottes d'acrobate X",\
"tr_mage_boots_10_lore_1":"+5 points d'armure.",\
"tr_mage_boots_10_lore_2":"+10 distance de chute avant dégâts",\
"tr_mage_spell1_1_name":"Trait de feu I",\
"tr_mage_spell1_1_lore_1":"-----------------------------------",\
"tr_mage_spell1_1_lore_2":"Lance un trait de feu dans la direction",\
"tr_mage_spell1_1_lore_3":"visée. Il infligera 6 points de dégats au",\
"tr_mage_spell1_1_lore_4":"premier adversaire rencontré et",\
"tr_mage_spell1_1_lore_5":"1 point de dégâts de brulure",\
"tr_mage_spell1_1_lore_6":"par seconde pendant 3 secondes.",\
"tr_mage_spell1_1_lore_7":"Si la cible est gelée, l'effet de gel sera",\
"tr_mage_spell1_1_lore_8":"annulé.",\
"tr_mage_spell1_1_lore_9":"Toucher un ennemi avec ce sort",\
"tr_mage_spell1_1_lore_10":"réduit son temps de recharge de moitié.",\
"tr_mage_spell1_1_lore_11":"Temps de recharge: 20s.",\
"tr_mage_spell1_1_lore_12":"-----------------------------------",\
"tr_mage_spell1_2_name":"Trait de feu II",\
"tr_mage_spell1_2_lore_1":"-----------------------------------",\
"tr_mage_spell1_2_lore_2":"Lance un trait de feu dans la direction",\
"tr_mage_spell1_2_lore_3":"visée. Il infligera 12 points de dégats au",\
"tr_mage_spell1_2_lore_4":"premier adversaire rencontré et",\
"tr_mage_spell1_2_lore_5":"2 points de dégâts de brulure",\
"tr_mage_spell1_2_lore_6":"par seconde pendant 3 secondes.",\
"tr_mage_spell1_2_lore_7":"Si la cible est gelée, l'effet de gel sera",\
"tr_mage_spell1_2_lore_8":"annulé.",\
"tr_mage_spell1_2_lore_9":"Toucher un ennemi avec ce sort",\
"tr_mage_spell1_2_lore_10":"réduit son temps de recharge de moitié.",\
"tr_mage_spell1_2_lore_11":"Temps de recharge: 14s.",\
"tr_mage_spell1_2_lore_12":"-----------------------------------",\
"tr_mage_spell1_3_name":"Trait de feu III",\
"tr_mage_spell1_3_lore_1":"-----------------------------------",\
"tr_mage_spell1_3_lore_2":"Lance un trait de feu dans la direction",\
"tr_mage_spell1_3_lore_3":"visée. Il infligera 12 points de dégats au",\
"tr_mage_spell1_3_lore_4":"premier adversaire rencontré et",\
"tr_mage_spell1_3_lore_5":"3 points de dégâts de brulure",\
"tr_mage_spell1_3_lore_6":"par seconde pendant 3 secondes.",\
"tr_mage_spell1_3_lore_7":"Si la cible est gelée, l'effet de gel sera",\
"tr_mage_spell1_3_lore_8":"annulé.",\
"tr_mage_spell1_3_lore_9":"Toucher un ennemi avec ce sort",\
"tr_mage_spell1_3_lore_10":"réduit son temps de recharge de moitié.",\
"tr_mage_spell1_3_lore_11":"Temps de recharge: 8s.",\
"tr_mage_spell1_3_lore_12":"-----------------------------------",\
"tr_mage_cooldownspell1_1_name":"Trait de feu I",\
"tr_mage_cooldownspell1_2_name":"Trait de feu II",\
"tr_mage_cooldownspell1_3_name":"Trait de feu III",\
"tr_mage_spell1_status_0_name":"Brulure",\
"tr_mage_spell1_status_0_lore_1":"----------------",\
"tr_mage_spell1_status_0_lore_2":"Vous êtes en feu !",\
"tr_mage_spell1_status_0_lore_3":"----------------",\
"tr_mage_spell2_1_name":"Tempête de foudre I",\
"tr_mage_spell2_1_lore_1":"-----------------------------------",\
"tr_mage_spell2_1_lore_2":"Après 1,25 secondes, déclenche une tempête",\
"tr_mage_spell2_1_lore_3":"de foudre dans la direction visée.",\
"tr_mage_spell2_1_lore_4":"La tempête infligera 24 points de",\
"tr_mage_spell2_1_lore_5":"dégâts par seconde pendant 5",\
"tr_mage_spell2_1_lore_6":"secondes dans un rayon de 5 blocs.",\
"tr_mage_spell2_1_lore_7":"Temps de recharge: 24s.",\
"tr_mage_spell2_1_lore_8":"-----------------------------------",\
"tr_mage_spell2_2_name":"Tempête de foudre II",\
"tr_mage_spell2_2_lore_1":"-----------------------------------",\
"tr_mage_spell2_2_lore_2":"Après 1,25 secondes, déclenche une tempête",\
"tr_mage_spell2_2_lore_3":"de foudre dans la direction visée.",\
"tr_mage_spell2_2_lore_4":"La tempête infligera 48 points de",\
"tr_mage_spell2_2_lore_5":"dégâts par seconde pendant 6",\
"tr_mage_spell2_2_lore_6":"secondes dans un rayon de 5 blocs.",\
"tr_mage_spell2_2_lore_7":"Temps de recharge: 22s.",\
"tr_mage_spell2_2_lore_8":"-----------------------------------",\
"tr_mage_spell2_3_name":"Tempête de foudre III",\
"tr_mage_spell2_3_lore_1":"-----------------------------------",\
"tr_mage_spell2_3_lore_2":"Après 1,25 secondes, déclenche une tempête",\
"tr_mage_spell2_3_lore_3":"de foudre dans la direction visée.",\
"tr_mage_spell2_3_lore_4":"La tempête infligera 48 points de",\
"tr_mage_spell2_3_lore_5":"dégâts par seconde pendant 7",\
"tr_mage_spell2_3_lore_6":"secondes dans un rayon de 5 blocs.",\
"tr_mage_spell2_3_lore_7":"Les joueurs présents dans la tempête",\
"tr_mage_spell2_3_lore_8":"voient leur vitesse réduite de 15%.",\
"tr_mage_spell2_3_lore_9":"Temps de recharge: 19s.",\
"tr_mage_spell2_3_lore_10":"-----------------------------------",\
"tr_mage_cooldownspell2_1_name":"Tempête de foudre I",\
"tr_mage_cooldownspell2_2_name":"Tempête de foudre II",\
"tr_mage_cooldownspell2_3_name":"Tempête de foudre III",\
"tr_mage_spell3_1_name":"Téléportation",\
"tr_mage_spell3_1_lore_1":"--------------------------",\
"tr_mage_spell3_1_lore_2":"Téléporte instantanément vers",\
"tr_mage_spell3_1_lore_3":"l'endroit ciblé.",\
"tr_mage_spell3_1_lore_4":"Portée maximale: 50 blocs.",\
"tr_mage_spell3_1_lore_5":"Temps de recharge: 20s.",\
"tr_mage_spell3_1_lore_6":"--------------------------",\
"tr_mage_cooldownspell3_1_name":"Téléportation",\
\
\
\
\
\
"tr_rogue_passive1_name":"Régénération",\
"tr_rogue_passive1_lore_1":"Vos points de vie se régénèrent beaucoup plus rapidement",\
\
"tr_rogue_passive2_name":"Icone de discretion",\
"tr_rogue_passive2_lore_1":"Lorsque vous êtes invisible, une icone indique votre degré de discrétion.",\
"tr_rogue_passive2_lore_2":"Vous êtes accroupi, personne ne peut vous voir.",\
"tr_rogue_passive2_lore_3":"Vous marchez, les archers peuvent vous voir grâce à leur passif.",\
"tr_rogue_passive2_lore_4":"Vous sprintez, tout le monde peut vous voir grâce à vos traces de pas.",\
\
"tr_rogue_weapon1_0_name":"Dague de débutant I",\
"tr_rogue_weapon1_0_lore_1":"+0,5 point d'attaque.",\
"tr_rogue_weapon1_1_name":"Dague sournoise I",\
"tr_rogue_weapon1_1_lore_1":"+1 point d'attaque.",\
"tr_rogue_weapon1_2_name":"Dague sournoise II",\
"tr_rogue_weapon1_2_lore_1":"+2 points d'attaque.",\
"tr_rogue_weapon1_3_name":"Dague sournoise III",\
"tr_rogue_weapon1_3_lore_1":"+3 points d'attaque.",\
"tr_rogue_weapon1_4_name":"Dague sournoise IV",\
"tr_rogue_weapon1_4_lore_1":"+4 points d'attaque.",\
"tr_rogue_weapon1_5_name":"Dague sournoise V",\
"tr_rogue_weapon1_5_lore_1":"+5 points d'attaque.",\
"tr_rogue_weapon1_6_name":"Dague sournoise VI",\
"tr_rogue_weapon1_6_lore_1":"+6 points d'attaque.",\
"tr_rogue_weapon1_7_name":"Dague sournoise VII",\
"tr_rogue_weapon1_7_lore_1":"+7 points d'attaque.",\
"tr_rogue_weapon1_8_name":"Dague sournoise VIII",\
"tr_rogue_weapon1_8_lore_1":"+8 points d'attaque.",\
"tr_rogue_weapon1_9_name":"Dague sournoise IX",\
"tr_rogue_weapon1_9_lore_1":"+9 points d'attaque.",\
"tr_rogue_weapon1_10_name":"Dague sournoise X",\
"tr_rogue_weapon1_10_lore_1":"+10 points d'attaque.",\
"tr_rogue_chest_1_name":"Plastron de santé I",\
"tr_rogue_chest_1_lore_1":"+0,5 point d'armure.",\
"tr_rogue_chest_1_lore_2":"+10% points de vie.",\
"tr_rogue_chest_2_name":"Plastron de santé II",\
"tr_rogue_chest_2_lore_1":"+1 points d'armure.",\
"tr_rogue_chest_2_lore_2":"+20% points de vie.",\
"tr_rogue_chest_3_name":"Plastron de santé III",\
"tr_rogue_chest_3_lore_1":"+1,5 points d'armure.",\
"tr_rogue_chest_3_lore_2":"+30% points de vie.",\
"tr_rogue_chest_4_name":"Plastron de santé IV",\
"tr_rogue_chest_4_lore_1":"+2 points d'armure.",\
"tr_rogue_chest_4_lore_2":"+40% points de vie.",\
"tr_rogue_chest_5_name":"Plastron de santé V",\
"tr_rogue_chest_5_lore_1":"+2,5 points d'armure.",\
"tr_rogue_chest_5_lore_2":"+50% points de vie.",\
"tr_rogue_chest_6_name":"Plastron de santé VI",\
"tr_rogue_chest_6_lore_1":"+3 points d'armure.",\
"tr_rogue_chest_6_lore_2":"+60% points de vie.",\
"tr_rogue_chest_7_name":"Plastron de santé VII",\
"tr_rogue_chest_7_lore_1":"+3,5 points d'armure.",\
"tr_rogue_chest_7_lore_2":"+70% points de vie.",\
"tr_rogue_chest_8_name":"Plastron de santé VIII",\
"tr_rogue_chest_8_lore_1":"+4 points d'armure.",\
"tr_rogue_chest_8_lore_2":"+80% points de vie.",\
"tr_rogue_chest_9_name":"Plastron de santé IX",\
"tr_rogue_chest_9_lore_1":"+4,5 points d'armure.",\
"tr_rogue_chest_9_lore_2":"+90% points de vie.",\
"tr_rogue_chest_10_name":"Plastron de santé X",\
"tr_rogue_chest_10_lore_1":"+5 points d'armure.",\
"tr_rogue_chest_10_lore_2":"+100% points de vie.",\
"tr_rogue_legs_1_name":"Jambières de vitesse I",\
"tr_rogue_legs_1_lore_1":"+0,5 point d'armure.",\
"tr_rogue_legs_1_lore_2":"+3% vitesse de déplacement.",\
"tr_rogue_legs_2_name":"Jambières de vitesse II",\
"tr_rogue_legs_2_lore_1":"+1 point d'armure.",\
"tr_rogue_legs_2_lore_2":"+6% vitesse de déplacement.",\
"tr_rogue_legs_3_name":"Jambières de vitesse III",\
"tr_rogue_legs_3_lore_1":"+1,5 points d'armure.",\
"tr_rogue_legs_3_lore_2":"+9% vitesse de déplacement.",\
"tr_rogue_legs_4_name":"Jambières de vitesse IV",\
"tr_rogue_legs_4_lore_1":"+2 points d'armure.",\
"tr_rogue_legs_4_lore_2":"+12% vitesse de déplacement.",\
"tr_rogue_legs_5_name":"Jambières de vitesse V",\
"tr_rogue_legs_5_lore_1":"+2,5 points d'armure.",\
"tr_rogue_legs_5_lore_2":"+15% vitesse de déplacement.",\
"tr_rogue_legs_6_name":"Jambières de vitesse VI",\
"tr_rogue_legs_6_lore_1":"+3 points d'armure.",\
"tr_rogue_legs_6_lore_2":"+18% vitesse de déplacement.",\
"tr_rogue_legs_7_name":"Jambières de vitesse VII",\
"tr_rogue_legs_7_lore_1":"+3,5 points d'armure.",\
"tr_rogue_legs_7_lore_2":"+21% vitesse de déplacement.",\
"tr_rogue_legs_8_name":"Jambières de vitesse VIII",\
"tr_rogue_legs_8_lore_1":"+4 points d'armure.",\
"tr_rogue_legs_8_lore_2":"+24% vitesse de déplacement.",\
"tr_rogue_legs_9_name":"Jambières de vitesse IX",\
"tr_rogue_legs_9_lore_1":"+4,5 points d'armure.",\
"tr_rogue_legs_9_lore_2":"+27% vitesse de déplacement.",\
"tr_rogue_legs_10_name":"Jambières de vitesse X",\
"tr_rogue_legs_10_lore_1":"+5 points d'armure.",\
"tr_rogue_legs_10_lore_2":"+30% vitesse de déplacement.",\
"tr_rogue_boots_1_name":"Bottes d'acrobate I",\
"tr_rogue_boots_1_lore_1":"+0,5 point d'armure.",\
"tr_rogue_boots_1_lore_2":"+1 distance de chute avant dégâts",\
"tr_rogue_boots_2_name":"Bottes d'acrobate II",\
"tr_rogue_boots_2_lore_1":"+1 point d'armure.",\
"tr_rogue_boots_2_lore_2":"+2 distance de chute avant dégâts",\
"tr_rogue_boots_3_name":"Bottes d'acrobate III",\
"tr_rogue_boots_3_lore_1":"+1,5 points d'armure.",\
"tr_rogue_boots_3_lore_2":"+3 distance de chute avant dégâts",\
"tr_rogue_boots_4_name":"Bottes d'acrobate IV",\
"tr_rogue_boots_4_lore_1":"+2 points d'armure.",\
"tr_rogue_boots_4_lore_2":"+4 distance de chute avant dégâts",\
"tr_rogue_boots_5_name":"Bottes d'acrobate V",\
"tr_rogue_boots_5_lore_1":"+2,5 points d'armure.",\
"tr_rogue_boots_5_lore_2":"+5 distance de chute avant dégâts",\
"tr_rogue_boots_6_name":"Bottes d'acrobate VI",\
"tr_rogue_boots_6_lore_1":"+3 points d'armure.",\
"tr_rogue_boots_6_lore_2":"+6 distance de chute avant dégâts",\
"tr_rogue_boots_7_name":"Bottes d'acrobate VII",\
"tr_rogue_boots_7_lore_1":"+3,5 points d'armure.",\
"tr_rogue_boots_7_lore_2":"+7 distance de chute avant dégâts",\
"tr_rogue_boots_8_name":"Bottes d'acrobate VIII",\
"tr_rogue_boots_8_lore_1":"+4 points d'armure.",\
"tr_rogue_boots_8_lore_2":"+8 distance de chute avant dégâts",\
"tr_rogue_boots_9_name":"Bottes d'acrobate IX",\
"tr_rogue_boots_9_lore_1":"+4,5 points d'armure.",\
"tr_rogue_boots_9_lore_2":"+9 distance de chute avant dégâts",\
"tr_rogue_boots_10_name":"Bottes d'acrobate X",\
"tr_rogue_boots_10_lore_1":"+5 points d'armure.",\
"tr_rogue_boots_10_lore_2":"+10 distance de chute avant dégâts",\
\
\
\
\
\
"tr_rogue_spell1_1_name":"Embuscade I",\
"tr_rogue_spell1_1_lore_1":"-------------------------------------",\
"tr_rogue_spell1_1_lore_2":"Vous vous camouflez dans l'ombre ce qui",\
"tr_rogue_spell1_1_lore_3":"vous rends invisible.",\
"tr_rogue_spell1_1_lore_4":"",\
"tr_rogue_spell1_1_lore_5":"Les degats de votre prochaine attaque",\
"tr_rogue_spell1_1_lore_6":"augmentent de 3 points.",\
"tr_rogue_spell1_1_lore_7":"",\
"tr_rogue_spell1_1_lore_8":"Duree de l'invisibilite : 4s.",\
"tr_rogue_spell1_1_lore_9":"",\
"tr_rogue_spell1_1_lore_10":"Subir ou infliger des degats annule l'effet.",\
"tr_rogue_spell1_1_lore_11":"Interagir avec les drapeaux annule l'effet.",\
"tr_rogue_spell1_1_lore_12":"",\
"tr_rogue_spell1_1_lore_13":"Temps de recharge: 13s.",\
"tr_rogue_spell1_1_lore_14":"-------------------------------------",\
"tr_rogue_cooldownspell1_1_name":"Embuscade I",\
"tr_rogue_spell1_2_name":"Embuscade II",\
"tr_rogue_spell1_2_lore_1":"-------------------------------------",\
"tr_rogue_spell1_2_lore_2":"Vous vous camouflez dans l'ombre ce qui",\
"tr_rogue_spell1_2_lore_3":"vous rends invisible.",\
"tr_rogue_spell1_2_lore_4":"",\
"tr_rogue_spell1_2_lore_5":"Les degats de votre prochaine attaque",\
"tr_rogue_spell1_2_lore_6":"augmentent de 6 points.",\
"tr_rogue_spell1_2_lore_7":"",\
"tr_rogue_spell1_2_lore_8":"Duree de l'invisibilite : 6s.",\
"tr_rogue_spell1_2_lore_9":"",\
"tr_rogue_spell1_2_lore_10":"Subir ou infliger des degats annule l'effet.",\
"tr_rogue_spell1_2_lore_11":"Interagir avec les drapeaux annule l'effet.",\
"tr_rogue_spell1_2_lore_12":"",\
"tr_rogue_spell1_2_lore_13":"Temps de recharge: 10s.",\
"tr_rogue_spell1_2_lore_14":"-------------------------------------",\
"tr_rogue_cooldownspell1_2_name":"Embuscade II",\
"tr_rogue_spell1_3_name":"Embuscade III",\
"tr_rogue_spell1_3_lore_1":"-------------------------------------",\
"tr_rogue_spell1_3_lore_2":"Vous vous camouflez dans l'ombre ce qui",\
"tr_rogue_spell1_3_lore_3":"vous rends invisible.",\
"tr_rogue_spell1_3_lore_4":"",\
"tr_rogue_spell1_3_lore_5":"Les degats de votre prochaine attaque",\
"tr_rogue_spell1_3_lore_6":"augmentent de 12 points.",\
"tr_rogue_spell1_3_lore_7":"",\
"tr_rogue_spell1_3_lore_8":"Duree de l'invisibilite : 6s.",\
"tr_rogue_spell1_3_lore_9":"",\
"tr_rogue_spell1_3_lore_10":"Subir ou infliger des degats annule l'effet.",\
"tr_rogue_spell1_3_lore_11":"Interagir avec les drapeaux annule l'effet.",\
"tr_rogue_spell1_3_lore_12":"",\
"tr_rogue_spell1_3_lore_13":"Temps de recharge: 8s.",\
"tr_rogue_spell1_3_lore_14":"-------------------------------------",\
"tr_rogue_cooldownspell1_3_name":"Embuscade III",\
"tr_rogue_spell2_1_name":"Voie des ombres - Poser",\
"tr_rogue_spell2_use_1_name":"Voie des ombres - Utiliser",\
"tr_rogue_spell2_1_lore_1":"--------------------------------------",\
"tr_rogue_spell2_1_lore_2":"Vous ouvrez une voie des ombres a votre",\
"tr_rogue_spell2_1_lore_3":"emplacement.",\
"tr_rogue_spell2_1_lore_4":"",\
"tr_rogue_spell2_1_lore_5":"Lorsque vous empruntez la voie des ombres,",\
"tr_rogue_spell2_1_lore_6":"vous vous teleportez immediatement a son",\
"tr_rogue_spell2_1_lore_7":"entree.",\
"tr_rogue_spell2_1_lore_8":"",\
"tr_rogue_spell2_1_lore_9":"L'entree de la voie des ombre peut etre.",\
"tr_rogue_spell2_1_lore_10":"detruite par tous les joueurs.",\
"tr_rogue_spell2_1_lore_11":"",\
"tr_rogue_spell2_1_lore_12":"Temps de recharge: 10s.",\
"tr_rogue_spell2_1_lore_13":"--------------------------------------",\
"tr_rogue_cooldownspell2_1_name":"Voie des ombres - Poser",\
"tr_rogue_spell3_1_name":"Bombe d'ombre",\
"tr_rogue_spell3_1_lore_1":"--------------------------------------",\
"tr_rogue_spell3_1_lore_2":"Lance une bombe d'ombre dans la direction",\
"tr_rogue_spell3_1_lore_3":"visee.",\
"tr_rogue_spell3_1_lore_4":"",\
"tr_rogue_spell3_1_lore_5":"Pendant 8 secondes, la bombe d'ombre",\
"tr_rogue_spell3_1_lore_6":"aveuglera et ralentira de 15% tous les",\
"tr_rogue_spell3_1_lore_7":"joueurs dans un rayon de 4 blocs.",\
"tr_rogue_spell3_1_lore_8":"",\
"tr_rogue_spell3_1_lore_9":"Tous les joueurs presents dans la",\
"tr_rogue_spell3_1_lore_10":"zone d'effet lacheront immediatement leur",\
"tr_rogue_spell3_1_lore_11":"drapeau et ne pourront plus interagir avec",\
"tr_rogue_spell3_1_lore_12":"ce dernier avant la fin de l'effet.",\
"tr_rogue_spell3_1_lore_13":"",\
"tr_rogue_spell3_1_lore_14":"Les assassins sont immunises contre",\
"tr_rogue_spell3_1_lore_15":"l'effet de ce sort.",\
"tr_rogue_spell3_1_lore_16":"",\
"tr_rogue_spell3_1_lore_17":"Temps de recharge: 10s.",\
"tr_rogue_spell3_1_lore_18":"--------------------------------------",\
"tr_rogue_cooldownspell3_1_name":"Bombe d'ombre",\
"tr_shop_title":"Salle d'achat",\
"tr_shop_money_display_price1_1":"Points",\
"tr_shop_money_display_price1_2":"d'honneur :",\
"tr_shop_not_ready_button_1":"Pas",\
"tr_shop_not_ready_button_2":"Prêt",\
"tr_shop_ready_button":"Prêt",\
"tr_shop_play_button":"Jouer",\
"tr_shop_item_overlay_price_1":"Coût :",\
"tr_shop_item_overlay_price_2":"points d'honneur",\
"tr_shop_item_overlay_buy_tip":"clic droit pour acheter",\
"tr_shop_undo_empty":"Aucun achat à annuler.",\
"tr_shop_undo_desactivated":"L'annulation des achats est désactivée.",\
"tr_shop_item_max_lvl":"Niveau maximal atteint",\
"tr_shop_item_not_enough_money":"Pas assez de points d'honneur !",\
"tr_shop_undo":"Annuler",\
"tr_shop_undo_all":"Tout",\
"tr_shop_redo":"Rétablir",\
"tr_shop_redo_all":"Tout",\
"tr_shop_cant_usespell":"Impossible de lancer de sorts dans la salle d'achat !",\
\
"tr_shop_spec":"Observer :",\
"tr_shop_spec_waiting":"En attente...",\
"tr_shop_spec_ready":"prêt",\
"tr_shop_spec_ready_plural":"s",\
\
"tr_shop_spec_player_message_1":"Vous observez",\
"tr_shop_spec_player_message_2":"cliquez ici",\
"tr_shop_spec_player_message_3":"pour arrêter d'observer ce joueur.",\
"tr_shop_spec_player_hover_event":"Cliquez ici pour arrêter d'observer.",\
"tr_shop_spec_player_stop_spectating":"Vous avez arrêté d'observer.",\
"tr_ffa_money_alert_kill":"Élimination",\
"tr_ffa_money_alert_passive":"Revenu passif",\
"tr_ffa_money_alert_bounty":"Prime",\
"tr_ffa_bounty_acquired":"a désormais une prime de",\
"tr_ffa_bounty_claimed_1":"a réclamé la prime de",\
"tr_ffa_bounty_claimed_2":"pour",\
\
"tr_cant_start_need_two_players":"Il faut au minimum 2 joueurs pour lancer la partie !",\
"tr_cant_start_need_one_player_per_team":"Impossible de lancer la partie tant qu'il n'y a pas au moins un joueur dans chaque équipe !",\
"tr_cant_start_player_without_class":"Impossible de lancer la partie tant que tous les joueurs n'ont pas choisi leur classe !",\
"tr_cant_start_choose_class":"Merci de bien vouloir choisir une classe afin que la partie puisse démarrer !",\
"tr_cant_start_player_without_team":"Impossible de lancer la partie tant que tous les joueurs n'ont pas choisi leur équipe !",\
"tr_cant_start_choose_team":"Merci de bien vouloir choisir une équipe afin que la partie puisse démarrer !",\
"tr_cant_start_too_many_players":"Il y a trop de joueurs dans la partie ! La limite est de 12 joueurs."\
}
