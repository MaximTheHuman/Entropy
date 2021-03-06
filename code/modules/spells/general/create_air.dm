/datum/spell/create_air
	name = "Create Air"
	desc = "A much used spell used in the vasteness of space to make it not so killey."

	charge_max = 200
	spell_flags = Z2NOCAST
	invocation = "none"
	invocation_type = SPI_NONE

	number_of_channels = 0
	time_between_channels = 200
	icon_state = "wiz_air"
	var/list/air_change = list("oxygen" = ONE_ATMOSPHERE)
	number_of_channels = 0

/datum/spell/create_air/choose_targets()
	var/air = holder.return_air()
	if(air)
		return list(air)
	return null

/datum/spell/create_air/cast(list/targets, mob/holder, channel_count)
	var/datum/gas_mixture/environment = targets[1]
	for(var/gas in air_change)
		environment.adjust_gas(gas, air_change[gas])
