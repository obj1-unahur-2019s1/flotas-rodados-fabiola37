import rodados.*

class Dependencia {
	var property empleados
	const rodados = [] 
	
	method agregarAFlota(rodado){ rodados.add(rodado)}
	method quitarDeFlota(rodado){ rodados.remove(rodado)}
	method pesoTotal(){return rodados.sum({ rodado => rodado.peso()})}
	method estaBienEquipada(){ return rodados.size({rodado => rodado.cantidad()}) 
								and rodados.all({rodado => rodado.velocidadMaxima() >= 100})}
	method capacidadTotalEnColor(color){ return rodados.filter({ rodado => rodado.color() == color })
													.sum({ rodado=> rodado.capacidad()})}
	method colorDelRodadoMasRapido(){return rodados.filter({rodado => rodado.velocidadMaxima()}).color()}
	
}
