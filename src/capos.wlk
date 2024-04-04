import artefactos.*
object rolando{
	
	var capacidad = 2
	const property artefactos = #{}
	var hogar = castilloDePiedra
	const historialDeArtefactos = []
	
	method agarrar(artefacto){
		if (self.puedeAgregar()){
			artefactos.add(artefacto)
		}
		historialDeArtefactos.add(artefacto)
	}
	method puedeAgregar(){
		return artefactos.size()<capacidad
	}
	method irAlHogar(){
		self.guardarArtefactos()
		self.liberarEspacio()
	}
	method guardarArtefactos(){
		hogar.guardarArtefactos(artefactos)
	}
	method liberarEspacio(){
		artefactos.clear()
	}
	method posee(artefacto){
		return self.poseciones().contains(artefacto)
	}
	method poseciones(){
		return artefactos.union(hogar.baul())
	}
}
object castilloDePiedra{
	const property baul = #{}
	method guardarArtefactos(artefactos){
		baul.addAll(artefactos)
	}
}