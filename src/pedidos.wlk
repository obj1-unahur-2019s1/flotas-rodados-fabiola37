import rodados.*
import dependencias.*

class Viaje {
	
	var property distancia 
	var property tiempoMaximo
	var property pasajeros
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida(){ return distancia / tiempoMaximo }
	method cumpleElPedido(auto){ 
		return auto.velocidadMaxima() >= self.velocidadRequerida() + 10 
				and auto.capacidad() >= pasajeros 
				and not coloresIncompatibles.contains(auto.color())}
	method acelerar(){ tiempoMaximo -= 1 }
	method relajar(){ tiempoMaximo += 1 }
	
	}
