/datum/uplink_item/deity/boon/single_charge/buy(obj/item/device/uplink/U, mob/living/deity/user)
	. = ..()
	if(istype(., /datum/spell))
		var/datum/spell/S = .
		if(S.spell_flags & NEEDSCLOTHES)
			S.spell_flags &= ~NEEDSCLOTHES

		S.charge_max = 1
		S.charge_counter = 1
		S.charge_type = SP_CHARGES

/datum/uplink_item/deity/boon/single_charge/description()
	return "[..()] <b>This ability is single charge only.</b>"
