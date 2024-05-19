import '../database.dart';

class UniversityTable extends SupabaseTable<UniversityRow> {
  @override
  String get tableName => 'University';

  @override
  UniversityRow createRow(Map<String, dynamic> data) => UniversityRow(data);
}

class UniversityRow extends SupabaseDataRow {
  UniversityRow(super.data);

  @override
  SupabaseTable get table => UniversityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  List<String> get images => getListField<String>('images');
  set images(List<String>? value) => setListField<String>('images', value);

  List<String> get requirements => getListField<String>('Requirements');
  set requirements(List<String>? value) =>
      setListField<String>('Requirements', value);

  String? get phoneNumber => getField<String>('phoneNumber');
  set phoneNumber(String? value) => setField<String>('phoneNumber', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
