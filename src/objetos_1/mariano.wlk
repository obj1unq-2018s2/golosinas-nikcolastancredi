import golosinas.*

object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var property golosinaDeseadas = []
	var property golosinas = []
	
	method comprar(golosina) { 
		golosinas.add(golosina)
	}
	method desechar(golosina){
		golosinas.remove(golosina)
	}
	

	method probarGolosinas() { 
		return golosinas.map{ elemento => elemento.mordisco()}
	}
	method hayGolosinaSinTACC(){
		golosinas.any{ elemento => elemento.libreGluten()  }
	}
	
	method preciosCuidados(){
		golosinas.all{ elemento => elemento.precio() <= 10}
	}
	method golosinaDeSabor(unSabor){
		golosinas.find{elemento => elemento.sabor() == unSabor}
	}
	method golosinasDeSabor(unSabor){
		golosinas.filter { elemento =>  elemento.sabor() == unSabor}
	}
	method sabores(){
		golosinas.map{ elemento => elemento.sabor()}
		golosinas.assSet()
	}
	method golosinaMasCara(){golosinas.max{elemento => elemento.precio()}}
	
	method pesoGolosinas(){golosinas.suma{elemento => elemento.peso()}} 

	method golosinasFaltantes(golosinasDeseadas){
		// var golosinasQNoEstan = []
		golosinasDeseadas.forEach{ }
	}
	method gustosFaltantes(gustosDeseados){
		
	}
}