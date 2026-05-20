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
    method queOcupaUnBulto() {
      var cosa = [KnightRider, arena a granel y residuos radioactivos]
      return bultos = 1
    }
    method queOcupanDosBultos() {
      var cosa = [bumblebee y embalaje de seguridad ]
      return bultos = 2
    }
    method bultosQueOcupanLadrillos() {
        if (paqueteLadrillos.cantLadrillos() == 100) {
            return bultos = 1
        } else if (paqueteLadrillos.cantLadrillos().between(101, 300)) {
            return bultos = 2
        } else (paqueteLadrillos.cantLadrillos() >= 301) {
            return bultos = 3
        }
    }
    method bultosQueOcupaBateria() {
      if (hayMisiles) {
        return bultos = 1
      } else (cargarMisiles() == true ) {
        return bultos = 2
      }
    }
}
