import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(super.data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get usuarioId => getField<int>('usuario_id');
  set usuarioId(int? value) => setField<int>('usuario_id', value);

  DateTime? get fechaPedido => getField<DateTime>('fecha_pedido');
  set fechaPedido(DateTime? value) => setField<DateTime>('fecha_pedido', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);
}
