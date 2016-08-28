import UIKit

//Enumeración
enum Velocidades:Int {
  case apagado = 0,
  velocidadBaja = 20,
  velocidadMedia = 50,
  velocidadAlta = 120
  
  //Inicializador
  init (velocidadInicial:Velocidades){
    self = velocidadInicial
  }
  
}//cierre de la enumeración Velocidades

//Clase
class Auto {
  var velocidad:Velocidades
  
  //Inicializador
  init() {
    self.velocidad = Velocidades(velocidadInicial: .apagado)
  }
  
  //Métodos
  func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String) {
    
    var velocidadEnCadena = ""
    
    switch (self.velocidad) {
    case Velocidades.apagado:
      self.velocidad = Velocidades.velocidadBaja
      velocidadEnCadena = "Velocidad baja"
    case Velocidades.velocidadBaja:
      self.velocidad = Velocidades.velocidadMedia
      velocidadEnCadena = "Velocidad media"
    case Velocidades.velocidadMedia:
      self.velocidad = Velocidades.velocidadAlta
      velocidadEnCadena = "Velocidad alta"
    case Velocidades.velocidadAlta:
      self.velocidad = Velocidades.velocidadMedia
      velocidadEnCadena = "Velocidad media"
    }
    
    return (self.velocidad.rawValue,velocidadEnCadena)
    
  }//cierre de la función cambioDeVelocidad

}//cierre de la clase Auto


//******************* Prueba de la clase Auto *******************
var auto = Auto()

print("0", "Apagado")

//Iteración
for index in 1...20 {
  var resultados = auto.cambioDeVelocidad()
  print("\(resultados.actual), \(resultados.velocidadEnCadena)")
}
