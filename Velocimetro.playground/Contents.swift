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
    
    switch (self.velocidad.rawValue) {
    case 0:
      self.velocidad = Velocidades.velocidadBaja
      velocidadEnCadena = "Velocidad baja"
    case 20:
      self.velocidad = Velocidades.velocidadMedia
      velocidadEnCadena = "Velocidad media"
    case 50:
      self.velocidad = Velocidades.velocidadAlta
      velocidadEnCadena = "Velocidad alta"
    case 120:
      self.velocidad = Velocidades.velocidadMedia
      velocidadEnCadena = "Velocidad media"
    default:
      print("Velocidad no válida")
    }
    
    return (self.velocidad.rawValue,velocidadEnCadena)
    
  }//cierre de la función cambioDeVelocidad

}//cierre de la clase Auto


//******************* Prueba de la clase Auto *******************
var auto = Auto()

//Iteración
for index in 1...20 {
  
  if (auto.velocidad.rawValue == 0) {
    print("0, Apagado")
  }
  
  var resultados = auto.cambioDeVelocidad()
  print("\(resultados.actual), \(resultados.velocidadEnCadena)")
}
