//Due to how large this one is it gets its own file
/datum/job/chaplain
	title = "Cyberchristian Preacher"
	flag = CHAPLAIN
	department = "Civilian"
	department_flag = CHURCH
	faction = "CEV Eris"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the NeoTheology Church and God"
	selection_color = "#dddddd"
	also_known_languages = list(LANGUAGE_CYRILLIC = 25, LANGUAGE_SERBIAN = 25)
	access = list(access_morgue, access_chapel_office, access_crematorium, access_maint_tunnels)
	idtype = /obj/item/weapon/card/id/chaplain

	stat_modifers = list(
		STAT_TGH = 10,
	)

	software_on_spawn = list(/datum/computer_file/program/records,
							 /datum/computer_file/program/reports)

	uniform = /obj/item/clothing/under/rank/chaplain
	suit = /obj/item/clothing/suit/chaplain_hoodie
	shoes = /obj/item/clothing/shoes/reinforced
	gloves = /obj/item/clothing/gloves/thick
	pda = /obj/item/modular_computer/pda

/obj/landmark/join/start/chaplain
	name = "Cyberchristian Preacher"
	icon_state = "player-black"
	join_tag = /datum/job/chaplain

/datum/job/chaplain/equip(var/mob/living/carbon/human/H)
	var/obj/item/weapon/implant/core_implant/cruciform/C = new /obj/item/weapon/implant/core_implant/cruciform(H)
	C.install(H)
	C.activate()
	C.add_module(new CRUCIFORM_PRIEST)
	C.add_module(new CRUCIFORM_REDLIGHT)

	H.religion = "Christianity"

	if(!..())	return FALSE

	var/obj/item/weapon/book/ritual/cruciform/B = new /obj/item/weapon/book/ritual/cruciform(H)
	H.equip_to_slot_or_del(B, slot_l_hand)
	return TRUE
