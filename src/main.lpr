program sistemadepedidosprueba1;

uses
  SysUtils;

var
  nombre, direccion: string;
  opcion: integer;

begin
  writeln('=== SISTEMA DE PEDIDOS ONLINE ===');
  writeln;

  // Pedir datos del cliente
  write('Ingrese su nombre: ');
  readln(nombre);

  write('Ingrese su direccion: ');
  readln(direccion);

  writeln;
  writeln('Hola ', nombre, '! Bienvenido al sistema de pedidos.');
  writeln('Direccion de entrega: ', direccion);
  writeln;

  // Menú principal
  writeln('Seleccione el producto que desea ordenar:');
  writeln('1. Pizza');
  writeln('2. Hamburguesa');
  writeln('3. Helado');
  writeln;
  write('Opcion: ');
  readln(opcion);

  // Evaluar la opción elegida
  case opcion of
    1: writeln('Has elegido una deliciosa Pizza.');
    2: writeln('Has elegido una Hamburguesa con todo.');
    3: writeln('Has elegido un rico Helado.');
  else
    writeln('Opcion invalida, por favor intente nuevamente.');
  end;

  writeln;
  writeln('Gracias por usar nuestro sistema de pedidos!');
  writeln('=============================================');
  readln;
end.      
