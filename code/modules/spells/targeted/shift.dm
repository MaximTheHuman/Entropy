/datum/spell/targeted/ethereal_jaunt/shift
	name = "Phase Shift"
	desc = "This spell allows you to pass through walls"

	charge_max = 200
	spell_flags = Z2NOCAST | INCLUDEUSER | CONSTRUCT_CHECK
	invocation_type = SPI_NONE
	range = 0
	duration = 50 //in deciseconds

	icon_state = "const_shift"

/datum/spell/targeted/ethereal_jaunt/shift/jaunt_disappear(atom/movable/overlay/animation, mob/living/target)
	animation.icon_state = "phase_shift"
	animation.dir = target.dir
	flick("phase_shift",animation)

/datum/spell/targeted/ethereal_jaunt/shift/jaunt_reappear(atom/movable/overlay/animation, mob/living/target)
	animation.icon_state = "phase_shift2"
	animation.dir = target.dir
	flick("phase_shift2",animation)

/datum/spell/targeted/ethereal_jaunt/shift/jaunt_steam(mobloc)
	return
