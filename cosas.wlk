object cosas {
    
}

object knightRider {
  var peso = 500
  var peligrosidad = 10
  var bultos = 1
  method peso() = peso
  method pesoActual(unPeso) {
    peso = unPeso
  }
  method peligrosidad() = peligrosidad 
  method reaccionar() = null
}
object bumblebee {
  var peso = 800
  var transformado = "Auto"
  var bultos = 2
  method peso() = peso 
  method pesoActual(unPeso) {
    peso = unPeso
  }
  method peligrosidad() {
    if(transformado == "Auto") {
        return 15
    } else (transformado == "Robot") {
        return 30
    }
  }
  method transformadoEnAuto() {
    transformado = "Auto"
  }
  method transformadoEnRobot() {
    transformado = "Robot"
    }
  method reaccionar(){
    self.transformadoEnRobot()
  }
}
object paqueteLadrillos {
  var cantLadrillos
  var peligrosidad = 2
  var bultos
  method cantLadrillos() = cantLadrillos
  method cantidadLadrillos(ladrillos) {
    cantLadrillos = ladrillos
  }
  method pesoActual() {
    return cantLadrillos * 2
  }
   method bultos() {
        if (paqueteLadrillos.cantLadrillos() == 100) {
            return bultos = 1
        } else if (paqueteLadrillos.cantLadrillos().between(101, 300)) {
            return bultos = 2
        } else {
            return bultos = 3
        }
    }
  method reaccionar() {
    self.cantidadLadrillos(12)
  }
}
object arenaGranel {
  var peso
  var peligrosidad = 1
  var bultos = 1
  method peso() = peso
  method pesoActual(unPeso) {
    peso = unPeso
  }
  method reaccionar() {
    self.peso() - 10
  }
}
object bateriaAntiaerea {
  var hayMisiles = false
  var bultos
  method pesoActual() {
    if(hayMisiles() == true) {
        return peso = 300
    } else {
        return peso = 200
    }
  }
  method peligrosidad() {
    var hayMisiles
    var bultos
    if(hayMisiles() == true) {
      return peligrosidad = 100
    } else {
        return peligrosidad = 0
    }
  }
  method hayMisiles() = hayMisiles
  method hayMisiles(valor) {
    return hayMisiles == valor
  }
  method cargarMisiles() {
    hayMisiles = true
  }
  method bultos() {
      if (hayMisiles == true) {
        return bultos = 1
      } else {
        return bultos = 2
      }
    }
  method reaccionar() {
    self.cargarMisiles()
  }
}

object contenedorPotuario {
  var cosas = [knightRider , bumblebee , paqueteLadrillos , arenaGranel , bateriaAntiaerea]
  method pesoActual() {
    return 100 + cosas.sum({c => c.pesoActual()})
  }
  method peligrosidad() {
    if(cosas.isEmpty()) {
        return 0
    } else {
    return cosas.max({c => c.peligrosidad()}).peligrosidad() 
    }
  }
  method bultos() {
    return cosas.sum({c => c.bultos()}) + 1
  }
  method reaccionar() {
    cosas.forEach({c => c.reaccionar()})
  }
}
object residuosRadioactivos {
  var peso
  var peligrosidad = 200
  var bultos = 1
  method peso() = peso
  method pesoActual(unPeso) {
    peso = unPeso
  }
  method peligrosidad() = peligrosidad
  method reaccionar() {
    self.peso() + 15
  }
}
object embalajeDeSeguridad {
    var cosa
    var bultos = 2
    method cosa(unaCosa) {
        cosa = unaCosa
    }
    method pesoActual() {
        return cosa.pesoActual()
    }
    method peligrosidad() {
        return cosa.peligrosidad() / 2
    }
    method reaccionar() = null
}