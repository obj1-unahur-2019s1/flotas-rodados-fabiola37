class Corsa {
	var property color
	method capacidad() { return 4}
	method velocidadMaxima(){ return 150 }
	method peso() { return 1300}

}
class RenaultKwid {
	var property tanqueAdicional = true
	
	method combustible(){ return "gas" }
	method capacidad(){ return if(tanqueAdicional) { return 3} else { return 4 }}
	method velocidadMaxima(){ return if(tanqueAdicional){return 120 } else {return 110} }
	method peso() { return if(tanqueAdicional){ return 1350} else { return 1200 }}
	method municipalidadColor() { return "azul"}
}
class AutosEspeciales { 
	var property velocidadMaxima = 0
	var property capacidad = 0
	var property peso = 0
	var property color
	
}
object trafic {
	var property motor
	var property interior
	
	method capacidad(){ return interior.capacidad()}
	method velocidadMaxima(){ return motor.velocidadMaxima()}
	method peso(){ return 4000 + interior.peso() + motor.peso() }
	method color(){ return "blanco"}
}
object comodo {
	method capacidad(){ return 5 }
	method peso(){ return 700 }
}
object popular {
	method capacidad(){return 12}
	method peso() { return 1000} 
}
object pulenta {
	method peso(){ return 800}
	method velocidadMaxima(){ return 130}
}
object bataton {
	method peso(){ return 500}
	method velocidadMaxima(){ return 80 }
}
