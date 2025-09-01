object luke {
  var vehiculo = alambiqueVeloz
  var ultimoRecuerdo = llaveroTorreEifel
  var lugaresVisitados = 0

  method vehiculo() {
    return vehiculo
  }

  method cambiarVehiculo(nuevoVehiculo) {
    vehiculo = nuevoVehiculo
  }

  method viajaA(lugar) {
    ultimoRecuerdo = lugar.recuerdo()
    lugaresVisitados = lugaresVisitados + 1
    }

    method puedeViajarA(lugar){
        return lugar.requisito()
    }

    method cargarNafta(){
        alambiqueVeloz.combustible() + 10
        return alambiqueVeloz.combustible()
    }

  method recuerdo(){
    return ultimoRecuerdo
  }

}

object paris{
    method recuerdo(){
        return llaveroTorreEifel
    }

    method requisito() {
      return alambiqueVeloz.combustible() > 9
    }
}

object buenosAires{

    var presidente = milei

    method recuerdo(){
        return mate
    }

    method presidente() {
      return presidente
    }

    method cambiarPresidente(nuevoPresidente){
        presidente = nuevoPresidente
    }

    method requisito() {
      return alambiqueVeloz.esVeloz()
    }
}

object bagdad {

    var recuerdo = bidon

    method cambiarRecuerdo(nuevoRecuerdo){
        recuerdo = nuevoRecuerdo
    }

    method recuerdo(){
        return recuerdo
    }
  
}

object lasVegas {

    var esHomenaje = buenosAires

  method recuerdo(){
    return esHomenaje.recuerdo()
  }

  method cambiarHomenaje(nuevoHomenaje){
    esHomenaje = nuevoHomenaje
  }

  method requisito() {
      return esHomenaje.requisito()
    }
}

object llaveroTorreEifel{

}

object mate{

    method tieneYerba(){
        return buenosAires.presidente().tieneYerba()
    }
    
}

object bidon {
  
}

object arma {
  
}

object replica{

}

object otro{

}

object milei {
  method tieneYerba(){
    return true
  }
}

object massa {
  method tieneYerba(){
    return "no, soy kuka y hay polenta"
  }
}

object alambiqueVeloz {
  
  var combustible = 100

  method combustible() {
    return combustible
  }

  method consumo() {
    combustible = combustible - 10
  }

    method esVeloz() {
      return self.combustible() > 20
    }


}
