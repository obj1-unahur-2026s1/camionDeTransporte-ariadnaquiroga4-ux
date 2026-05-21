import cosas.*
object camion {
    var cosas = []  
    var tara = 1000
    var bultos 
    method pesoTotal() {
        return cosas.sum({c => c.pesoActual()}) + tara
    }
    method cargarCosas(unaCosa) {
      cosas.add(unaCosa)
      unaCosa.reaccionar()
    }
    method descargarCosas(unaCosa) {
        cosas.remove(unaCosa)
    }
    method pesoDeTodasLasCosasPares() {
      return cosas.all({c => c.pesoActual() % 2 == 0})
    }
    method hayCosaQuePesa(peso) {
        return cosas.any({c => c.pesoActual() == peso})
    }
    method peligrosidadPrimerCosa(peligro) {
      return cosas.find({c => c.peligrosidad() == peligro})
    } //busca primer elemento con tal peligrosidad
    method cosasSuperanPeligrosidad(peligro) {
      return cosas.filter({c => c.peligrosidad() > peligro})
    }
    method cosasQueSuperanPeligrosidad(cosa) {
        return cosas.map({c => c.peligrosidad() > cosa.peligrosidad()})
    }
    method pesoExcedido() {
      return pesoTotal() > 2500
    }
    method puedeCircularPorRuta(peligro) {
      return !pesoExcedido() && cosas.all({c => c.peligrosidad() > peligro})
    }
    method cosaConMasPeso() {
      return cosas.max({c => c.pesoActual()})
    }
    method cosaQuePesaEntre(min, max) {
      return cosas.pesoActual().between(min, max)
    }
}
