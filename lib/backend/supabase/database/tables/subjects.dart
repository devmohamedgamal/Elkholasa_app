import '../database.dart';

class SubjectsTable extends SupabaseTable<SubjectsRow> {
  @override
  String get tableName => 'subjects';

  @override
  SubjectsRow createRow(Map<String, dynamic> data) => SubjectsRow(data);
}

class SubjectsRow extends SupabaseDataRow {
  SubjectsRow(super.data);

  @override
  SupabaseTable get table => SubjectsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get level => getField<String>('level');
  set level(String? value) => setField<String>('level', value);

  String? get debartment => getField<String>('debartment');
  set debartment(String? value) => setField<String>('debartment', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String get semester => getField<String>('semester')!;
  set semester(String value) => setField<String>('semester', value);

  String? get university => getField<String>('university');
  set university(String? value) => setField<String>('university', value);
}
