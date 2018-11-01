class Hogar{
	const habitaciones = []
	method agregarHabitaciones(lista){
		habitaciones.addAll(lista)
	}
}

class Habitacion{
	var property nivelConfort
	var property metrosCuadrados
	
	method confortQueAporta(persona){
		return 10
	}
}

class HabGeneral inherits Habitacion{
	
}

class HabDormitorio inherits Habitacion{
	const duenios = []
	method agregarDuenio(persona){
		duenios.add(persona)
	}
	method esDuenio(persona){
		return duenios.contains(persona)
	}
	override method confortQueAporta(persona){
		
		if (self.esDuenio(persona)){
			return super(persona) + (10/duenios.size())
		} else { return super(persona) }
	}
}

class HabBanio inherits Habitacion{
	override method confortQueAporta(persona){
		if (persona.edad()>=4){
				return super(persona) + 2
		} else { return super(persona) + 4}
	}
}

class HabCocina inherits Habitacion{
	override method confortQueAporta(persona){
		if (persona.tieneHabilidadesCocina()){
				return super(persona) + (metrosCuadrados*porcentajeConfortExtra/100)
		} else { return super(persona)}
	}
}

object porcentajeConfortExtra{
	var property porcentaje = 10
}
