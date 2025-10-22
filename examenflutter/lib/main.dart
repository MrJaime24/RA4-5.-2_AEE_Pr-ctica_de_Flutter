class Persona {
  String nombre = "";
  int edad = 0;

  //constructor nombre edad
  Persona.nombreedad(String nombrem, int edadd){
    this.nombre = nombrem;
    this.edad = edadd;
  }
  //Constructor default
  Persona(){
    this.nombre = "Desconocido";
    this.edad = 0;
  }
  //Constructor de fabrica
  factory Persona.fabrica(int edad){
    if(edad <= 0){
      throw ("La edad es menor a 0");
    }
      return Persona.nombreedad("Desconocido", edad);
  }
  //Metodo mostrar infor
  void mostrarInfo(){
    print("nombre: $nombre, edad: $edad");
  }

}

class Empleado extends Persona {
  String puesto = "";
  double salario = 0.0;
  //Constructor
  Empleado(String nombr,int eda, String puest, double salari){
    this.nombre = nombr;
    this.edad = eda;
    this.puesto = puest;
    this.salario = salari;
    
  }
  //Mostrar Detalles
  void mostrarDetalles(){
    super.mostrarInfo();
    print("puesto: $puesto, salario: $salario");
  }
  //Metodo sobreescrito
  @override
  void mostrarInfo(){
    super.mostrarInfo();
    String salario = tipoSalario();
    print("puesto: $puesto, salario: $salario, Tipo de Salario: $salario");
  }
  //Tipo salario
  String tipoSalario(){
    if(salario <1200){
      return "salario bajo";
    }else if(salario < 1700){
      return"salario medio";
    }else{
      return "salario alto";
    }
  }


}
void main(){
    //Empleado solo
    Empleado jaime = Empleado("Jaime", 20, "chofer", 900);
    jaime.mostrarInfo();


    //Lista empleados
    List<Empleado> listaEmpleados = [];
    Empleado juan = Empleado("juan", 29, "secretario", 2000);
    listaEmpleados.add(juan);
    Empleado alberto = Empleado("albertio", 32, "secretario", 900);
    listaEmpleados.add(alberto);
    Empleado pepe = Empleado("pepe", 40, "secretario", 1300);
    listaEmpleados.add(pepe);
    Empleado rey = Empleado("rey", 80 , "secretario", 2000);
    listaEmpleados.add(rey);
    Empleado ernesto = Empleado("ernesto", 2, "secretario", 80000);
    listaEmpleados.add(ernesto);
    //Recorrer lista
    for(var lista in listaEmpleados){
      lista.mostrarDetalles();
      String salario = lista.tipoSalario();
      print(salario);
    }
    

  }