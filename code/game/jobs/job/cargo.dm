//Cargo
/datum/job/merchant
	title = "Guild Merchant"
	flag = MERCHANT
	department = "Cargo"
	head_position = 1
	department_flag = GUILD | COMMAND
	faction = "CEV Eris"
	total_positions = 1
	spawn_positions = 1
	supervisors = "your greed"
	selection_color = "#dddddd"
	economic_modifier = 20
	also_known_languages = list(LANGUAGE_CYRILLIC = 100, LANGUAGE_SERBIAN = 100)
	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_merchant, access_mining,
		access_heads, access_mining_station, access_RC_announce, access_keycard_auth, access_sec_doors,
		access_eva, access_external_airlocks
	)
	idtype = /obj/item/weapon/card/id/car
	ideal_character_age = 40

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	uniform = /obj/item/clothing/under/rank/cargotech
	suit = /obj/item/clothing/suit/storage/qm_coat
	shoes = /obj/item/clothing/shoes/color/brown
	pda = /obj/item/modular_computer/pda/cargo
	gloves = /obj/item/clothing/gloves/thick
	ear = /obj/item/device/radio/headset/heads/merchant
	hand = /obj/item/weapon/clipboard
	glasses = /obj/item/clothing/glasses/sunglasses

/obj/landmark/join/start/merchant
	name = "Guild Merchant"
	icon_state = "player-beige-officer"
	join_tag = /datum/job/merchant



/datum/job/cargo_tech
	title = "Guild Technician"
	flag = GUILDTECH
	department = "Cargo"
	department_flag = GUILD
	faction = "CEV Eris"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Guild Merchant"
	selection_color = "#dddddd"
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_SERBIAN = 5)
	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining,
		access_mining_station
	)
	idtype = /obj/item/weapon/card/id/car

	stat_modifers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
	)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	uniform = /obj/item/clothing/under/rank/cargotech
	suit = /obj/item/clothing/suit/storage/cargo_jacket
	pda = /obj/item/modular_computer/pda/cargo
	ear = /obj/item/device/radio/headset/headset_cargo

/obj/landmark/join/start/cargo_tech
	name = "Guild Technician"
	icon_state = "player-beige"
	join_tag = /datum/job/cargo_tech

/datum/job/mining
	title = "Guild Miner"
	flag = MINER
	department = "Cargo"
	department_flag = GUILD
	faction = "CEV Eris"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Guild Merchant"
	selection_color = "#dddddd"
	economic_modifier = 5
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_SERBIAN = 5)
	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining,
		access_mining_station
	)
	idtype = /obj/item/weapon/card/id/car

	stat_modifers = list(
		STAT_ROB = 20,
		STAT_TGH = 20,
	)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	uniform = /obj/item/clothing/under/rank/miner
	pda = /obj/item/modular_computer/pda/science
	ear = /obj/item/device/radio/headset/headset_cargo
	survival_gear = /obj/item/weapon/storage/box/engineer

	put_in_backpack = list(\
		/obj/item/weapon/tool/crowbar,\
		/obj/item/weapon/storage/bag/ore
		)

/obj/landmark/join/start/mining
	name = "Guild Miner"
	icon_state = "player-beige"
	join_tag = /datum/job/mining
