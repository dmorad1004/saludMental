import '../database.dart';

class HospitalsTable extends SupabaseTable<HospitalsRow> {
  @override
  String get tableName => 'hospitals';

  @override
  HospitalsRow createRow(Map<String, dynamic> data) => HospitalsRow(data);
}

class HospitalsRow extends SupabaseDataRow {
  HospitalsRow(super.data);

  @override
  SupabaseTable get table => HospitalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get address => getField<String>('address')!;
  set address(String value) => setField<String>('address', value);

  String get city => getField<String>('city')!;
  set city(String value) => setField<String>('city', value);

  String get state => getField<String>('state')!;
  set state(String value) => setField<String>('state', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
