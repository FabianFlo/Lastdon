import '../database.dart';

class ProductosTable extends SupabaseTable<ProductosRow> {
  @override
  String get tableName => 'productos';

  @override
  ProductosRow createRow(Map<String, dynamic> data) => ProductosRow(data);
}

class ProductosRow extends SupabaseDataRow {
  ProductosRow(super.data);

  @override
  SupabaseTable get table => ProductosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  double? get precio => getField<double>('precio');
  set precio(double? value) => setField<double>('precio', value);

  int? get stock => getField<int>('stock');
  set stock(int? value) => setField<int>('stock', value);
}
