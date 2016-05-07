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
	uniform = pick(/obj/item/clothing/under/pj/red,\
		/obj/item/clothing/under/pj/blue,\
		/obj/item/clothing/under/waiter,\
		/obj/item/clothing/under/f13/settler,\
		/obj/item/clothing/under/f13/doctor,\
		/obj/item/clothing/under/f13/brahmin,\
		/obj/item/clothing/under/f13/mercadv,\
		/obj/item/clothing/under/f13/springm,\
		/obj/item/clothing/under/f13/caravaneer,\
		/obj/item/clothing/under/f13/roving)
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/kitchen/knife,\
			/obj/item/weapon/storage/toolbox/mechanical,\
			/obj/item/weapon/storage/firstaid/brute,\
			/obj/item/weapon/gun/projectile/shotgun,\
			/obj/item/weapon/melee/classic_baton)


	if (prob(100))
		back = /obj/item/weapon/storage/backpack
		backpack = /obj/item/weapon/storage/backpack
		satchel = /obj/item/weapon/storage/backpack/satchel_norm
		backpack_contents = pick(list(/obj/item/weapon/melee/classic_baton/telescopic=1), \
			list(/obj/item/ammo_casing/shotgun/buckshot = 4), \
			list(/obj/item/weapon/reagent_containers/food/drinks/nukacola = 3), \
			list(/obj/item/weapon/storage/firstaid/brute), \
			list(/obj/item/weapon/reagent_containers/syringe/stimulants))