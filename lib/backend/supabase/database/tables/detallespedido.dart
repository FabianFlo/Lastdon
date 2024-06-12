import '../database.dart';

class DetallespedidoTable extends SupabaseTable<DetallespedidoRow> {
  @override
  String get tableName => 'detallespedido';

  @override
  DetallespedidoRow createRow(Map<String, dynamic> data) =>
      DetallespedidoRow(data);
}

class DetallespedidoRow extends SupabaseDataRow {
  DetallespedidoRow(super.data);

  @override
  SupabaseTable get table => DetallespedidoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  int? get productoId => getField<int>('producto_id');
  set productoId(int? value) => setField<int>('producto_id', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}
