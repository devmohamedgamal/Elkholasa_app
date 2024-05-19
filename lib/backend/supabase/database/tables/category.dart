import '../database.dart';

class CategoryTable extends SupabaseTable<CategoryRow> {
  @override
  String get tableName => 'Category';

  @override
  CategoryRow createRow(Map<String, dynamic> data) => CategoryRow(data);
}

class CategoryRow extends SupabaseDataRow {
  CategoryRow(super.data);

  @override
  SupabaseTable get table => CategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get backgroundColor => getField<String>('backgroundColor');
  set backgroundColor(String? value) =>
      setField<String>('backgroundColor', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);
}
