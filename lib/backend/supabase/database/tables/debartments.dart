import '../database.dart';

class DebartmentsTable extends SupabaseTable<DebartmentsRow> {
  @override
  String get tableName => 'debartments';

  @override
  DebartmentsRow createRow(Map<String, dynamic> data) => DebartmentsRow(data);
}

class DebartmentsRow extends SupabaseDataRow {
  DebartmentsRow(super.data);

  @override
  SupabaseTable get table => DebartmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get lang => getField<String>('lang');
  set lang(String? value) => setField<String>('lang', value);

  String? get university => getField<String>('university');
  set university(String? value) => setField<String>('university', value);

  String? get summry => getField<String>('summry');
  set summry(String? value) => setField<String>('summry', value);

  List<String> get nameOfJops => getListField<String>('nameOfJops');
  set nameOfJops(List<String>? value) =>
      setListField<String>('nameOfJops', value);
}
