object cosas {
    
}

object knightRider {
  var peso = 500
  var peligrosidad = 10
  method peso() = peso
  method pesoActual(unPeso) {
    peso = unPeso
  }
  method peligrosidad() = peligrosidad 
}
object bumblebee {
  var peso = 800
  var transformado = "Auto"
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
}
object paqueteLadrillos {
  var cantLadrillos
  var peligrosidad = 2
  method cantLadrillos() = cantLadrillos
  method cantidadLadrillos(ladrillos) {
    cantLadrillos = ladrillos
  }
  method pesoActual() {
    return cantLadrillos * 2
  }
}
object arenaGranel {
  var peso
  var peligrosidad = 1
  method peso() = peso
  method pesoActual(unPeso) {
    peso = unPeso
  }
}
object bateriaAntiaerea {
  var hayMisiles = false
  method pesoActual() {
    if(hayMisiles() == true) {
        return peso = 300
    } else {
        return peso = 200
    }
  }

  method peligrosidad() {
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
}
object residuosRadioactivos {
  var peso
  var peligrosidad = 200
  method peso() = peso
  method pesoActual(unPeso) {
    peso = unPeso
  }
  method peligrosidad() = peligrosidad
}
object embalajeDeSeguridad {
    var cosa
    method cosa(unaCosa) {
        cosa = unaCosa
    }
    method pesoActual() {
        return cosa.pesoActual()
    }
    method peligrosidad() {
        return cosa.peligrosidad() / 2
    }
}