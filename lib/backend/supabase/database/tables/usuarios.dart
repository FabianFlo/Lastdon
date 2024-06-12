import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);
}
