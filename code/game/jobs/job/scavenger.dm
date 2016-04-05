/*
Scavenger
*/
/datum/job/scavenger
	title = "Scavenger"
	flag = SCAVENGER
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = -1
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/scavenger

/datum/outfit/job/scavenger
	name = "Scavenger"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/scavenger/pre_equip(mob/living/carbon/human/H)
	..()
	/*var/outfitType = rand(0, 4)
	switch(outfitType)
		if (0)
			uniform = /obj/item/clothing/under/color/orange
		if (1)
			uniform = /obj/item/clothing/under/rank/prisoner
		if (2)
			uniform = /obj/item/clothing/under/rank/vice
		if (3)
			uniform = /obj/item/clothing/under/suit_jacket/really_black
		if (4)
			uniform = /obj/item/clothing/under/suit_jacket/checkered
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(20))
		l_pocket = /obj/item/weapon/kitchen/knife
	if (prob(40))
		backpack = /obj/item/weapon/storage/backpack/industrial
		satchel = /obj/item/weapon/storage/backpack/satchel
		dufflebag = /obj/item/weapon/storage/backpack/dufflebag*/

	//TODO: replace above with existing/better items