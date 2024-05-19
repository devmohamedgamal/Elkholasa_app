import '../database.dart';

class DoctorsTable extends SupabaseTable<DoctorsRow> {
  @override
  String get tableName => 'doctors';

  @override
  DoctorsRow createRow(Map<String, dynamic> data) => DoctorsRow(data);
}

class DoctorsRow extends SupabaseDataRow {
  DoctorsRow(super.data);

  @override
  SupabaseTable get table => DoctorsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get university => getField<String>('university');
  set university(String? value) => setField<String>('university', value);

  String? get department => getField<String>('department');
  set department(String? value) => setField<String>('department', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get subjects => getField<String>('subjects');
  set subjects(String? value) => setField<String>('subjects', value);
}
