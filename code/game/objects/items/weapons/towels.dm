/obj/item/weapon/towel
	name = "towel"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "towel"
	item_flags = ITEM_FLAG_IS_BELT
	slot_flags = SLOT_HEAD | SLOT_BELT | SLOT_OCLOTHING
	force = 0.5
	w_class = ITEM_SIZE_NORMAL
	attack_verb = list("whipped")
	hitsound = 'sound/weapons/towelwhip.ogg'
	desc = "A soft cotton towel."


/obj/item/weapon/towel/equipped(var/M, var/slot)
	..()
	sprite_sheets = list(SPECIES_RESOMI = (slot == slot_head ? 'code_ark/icons/mob/species/resomi/onmob_head_resomi.dmi' : 'code_ark/icons/mob/species/resomi/onmob_suit_resomi.dmi'))

/obj/item/weapon/towel/attack_self(mob/living/user as mob)
	user.visible_message(text("<span class='notice'>[] uses [] to towel themselves off.</span>", user, src))
	playsound(user, 'sound/weapons/towelwipe.ogg', 25, 1)

/obj/item/weapon/towel/random/New()
	..()
	color = get_random_colour()

/obj/item/weapon/towel/fleece // loot from the king of goats. it's a golden towel
	name = "golden fleece"
	desc = "The legendary Golden Fleece of Jason made real."
	color = "#ffd700"
	force = 1
	attack_verb = list("smote")
