import '../database.dart';

class AsignacionpedidosrepartidoresTable
    extends SupabaseTable<AsignacionpedidosrepartidoresRow> {
  @override
  String get tableName => 'asignacionpedidosrepartidores';

  @override
  AsignacionpedidosrepartidoresRow createRow(Map<String, dynamic> data) =>
      AsignacionpedidosrepartidoresRow(data);
}

class AsignacionpedidosrepartidoresRow extends SupabaseDataRow {
  AsignacionpedidosrepartidoresRow(super.data);

  @override
  SupabaseTable get table => AsignacionpedidosrepartidoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  int? get repartidorId => getField<int>('repartidor_id');
  set repartidorId(int? value) => setField<int>('repartidor_id', value);

  DateTime? get fechaAsignacion => getField<DateTime>('fecha_asignacion');
  set fechaAsignacion(DateTime? value) =>
      setField<DateTime>('fecha_asignacion', value);
}
