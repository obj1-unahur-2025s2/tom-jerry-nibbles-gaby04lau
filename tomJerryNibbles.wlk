object tom {

var energia = 50 

    method energia() {
      return energia
    }

    method comer(raton) {
      energia = energia + 12 + raton.peso()
    }

    method correr(distancia){
      energia = energia - distancia/2
    }

    method velocidadMaxima(){
        return 5 + energia/10
    } 

    method puedeCazarA(distancia){
        return energia >= self.energiaGastada(distancia)
    }

    method cazarRatonA(raton, distancia){
        if(self.puedeCazarA(distancia)){
            self.correr(distancia)
            self.comer(raton)
        }
    }

    method energiaGastada(dist){
        return dist/2
    }
}

object jerry {
    
    var edad = 2

    method peso(){
        return edad * 20
    }

    method cumplirAnios(){
        edad = edad + 1
    }
}

object nibbles {
  
  method peso(){
    return 35
  }
}

// Inventar otro ratón

object chris {

    var edad = 27

    method peso() {
      return edad * 3
    }

    method cumplirAnios() {
      edad = edad + 1
    }
}