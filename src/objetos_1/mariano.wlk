import golosinas.*

object mariano {
	var property golosinas = []
	
	method comprar(golosina) { 
		golosinas.add(golosina)
	}
	method desechar(golosina){
		golosinas.remove(golosina)
	}
	

	method probarGolosinas() { 
		 golosinas.forEach{elemento => elemento.mordisco()}
	}
	method hayGolosinaSinTACC()= golosinas.any{ elemento => elemento.libreGluten()  }

	
	method preciosCuidados() = golosinas.all{ elemento => elemento.precio() <= 10}
	
	method golosinaDeSabor(unSabor)= golosinas.find{elemento => elemento.gusto() == unSabor}
		
	method golosinasDeSabor(unSabor) = golosinas.filter { elemento =>  elemento.gusto() == unSabor}
	
	method sabores() = 	golosinas.map{ elemento => elemento.gusto()}.withoutDuplicates()
	
	method golosinaMasCara() = golosinas.max{elemento => elemento.precio()}
	
	method pesoGolosinas() = golosinas.sum{elemento => elemento.peso()}

	method golosinasFaltantes(golosinasDeseadas) = 
		golosinasDeseadas.filter{ elemento => not  golosinas.contains(elemento)}
	
	method gustosFaltantes(gustosDeseados){
		var listaGustosGolosinas = golosinas.map{elemento => elemento.gusto()}
		return gustosDeseados.filter{elemento => not listaGustosGolosinas.contains(elemento) }
		
		}
		
	//terminado 19/09 23:33
}