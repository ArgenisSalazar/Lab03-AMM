class Usuario {
  String? nombre;
  String? email;
  String? password;

  Usuario(this.nombre, this.email, this.password);
}

mixin Autenticacion {
  void iniciarSesion(String nombre) {
    print('Iniciando sesión del usuario $nombre...');
    print('El incio se realizo correctamente.');
  }
}

class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String password)
      : super(nombre, email, password);
}

void main() {
  var usuario1 = UsuarioAutenticado('Argenis', 'argenis@gmail.com', '123456');
  usuario1.iniciarSesion(usuario1.nombre!);
}
