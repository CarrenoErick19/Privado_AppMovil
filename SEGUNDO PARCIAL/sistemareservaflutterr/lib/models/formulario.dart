class Formulario {
  int id;
  String ci;
  String email;
  String nombre;
  String apellido;
  String f_nac;
  String pass;
  String ciudad;
  String rep_pass;
  String direccion;

  Formulario(this.id, this.ci, this.email, this.nombre, this.apellido,
      this.f_nac, this.pass, this.ciudad, this.rep_pass, this.direccion);
}

final M_Formulario = [
  Formulario(1, "CI", "E-mail", "Nombres", "Apellidos", "Fecha de nacimiento",
      "Contraseña", "Ciudad", "Repita la contraseña", "Dirección"),
];
