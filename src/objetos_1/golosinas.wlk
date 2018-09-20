object bombon {
	var peso = 15
	method precio() = 5 
	method peso() = peso 
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() =  "frutilla"
	method libreGluten() = true 
}

object alfajor {
	var peso = 300
	method precio() = 12
	method gusto() = "chocolate"
	method libreGluten() = false 
	method mordisco() { peso = peso * 0.8}
}

object caramelo {
	var property peso = 5 
	method precio() = 1
	method gusto() = "frutilla"
	method libreGluten() = 	true
	method mordisco() { peso -= 1}
}

object chupetin {
	var property peso = 7
	method precio() = 2
	method gusto () = "naranja"
	method libreGluten() = true
	method mordisco() ={ peso -= 1}
}

object oblea {
	var property peso = 250
	method precio() = 5
	method gusto() = "vainilla"
	method libreGluten() = false
	method mordisco() {
		if (peso > 70 ){
			peso = peso * 0.5
		}else {
			peso = peso * 0.25
		}
	}  
}

object chocolatin {
	var property pesoInicial = null
	var  pesoActual =  null
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}	
	method peso() = pesoActual
	method precio()=  pesoInicial * 0.50 
	method libreGluten() = false
	method gusto() = "chocolate"
	method mordisco() {	pesoActual -= 2	}
	
}

object golosinaBaniada {
	var golosinaInterior = null
	var pesoBanio = 4
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() =  golosinaInterior.precio() + 2 
	method peso() = golosinaInterior.peso() + pesoBanio 
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() = golosinaInterior.gusto() 
	method libreGluten() = golosinaInterior.libreGluten()	
}

object tuttifrutti {
	var property peso = 5 
	var gustosPosibles = ["frutilla","chocolate","naranja"]
	var property gusto  = null
	var property libreGluten = null 
	method precio()  = if (libreGluten) 7 else 10 
	method mordisco(){
	 	gusto = gustosPosibles.first() // toma el primer valor de la lista
	 	gustosPosibles.remove(gusto) // lo borro
	 	gustosPosibles.add(gusto) // lo guardo  en la ultima posicion
	}
}

