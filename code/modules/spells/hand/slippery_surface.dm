/datum/spell/hand/slippery_surface
	name = "Slippery Surface"
	desc = "More of a practical joke than an actual spell."
	school = "transmutation"
	feedback = "su"
	range = 5
	spell_flags = 0
	invocation_type = SPI_NONE
	show_message = " snaps their fingers."
	spell_delay = 50
	icon_state = "gen_ice"
	level_max = list(SP_TOTAL = 0, SP_SPEED = 0, SP_POWER = 0)

/datum/spell/hand/slippery_surface/cast_hand(atom/a, mob/user)
	for(var/turf/simulated/T in view(1,a))
		T.wet_floor(50)
	return ..()
