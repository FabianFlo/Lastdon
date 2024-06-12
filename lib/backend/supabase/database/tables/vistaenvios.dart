import '../database.dart';

class VistaenviosTable extends SupabaseTable<VistaenviosRow> {
  @override
  String get tableName => 'vistaenvios';

  @override
  VistaenviosRow createRow(Map<String, dynamic> data) => VistaenviosRow(data);
}

class VistaenviosRow extends SupabaseDataRow {
  VistaenviosRow(super.data);

  @override
  SupabaseTable get table => VistaenviosTable();

  String? get nombreCliente => getField<String>('nombre_cliente');
  set nombreCliente(String? value) => setField<String>('nombre_cliente', value);

  String? get emailCliente => getField<String>('email_cliente');
  set emailCliente(String? value) => setField<String>('email_cliente', value);

  String? get nombreRepartidor => getField<String>('nombre_repartidor');
  set nombreRepartidor(String? value) =>
      setField<String>('nombre_repartidor', value);

  String? get nombreProducto => getField<String>('nombre_producto');
  set nombreProducto(String? value) =>
      setField<String>('nombre_producto', value);
}
