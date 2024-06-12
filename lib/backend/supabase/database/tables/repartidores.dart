import '../database.dart';

class RepartidoresTable extends SupabaseTable<RepartidoresRow> {
  @override
  String get tableName => 'repartidores';

  @override
  RepartidoresRow createRow(Map<String, dynamic> data) => RepartidoresRow(data);
}

class RepartidoresRow extends SupabaseDataRow {
  RepartidoresRow(super.data);

  @override
  SupabaseTable get table => RepartidoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);
}
