import '../database.dart';

class UserCodesTable extends SupabaseTable<UserCodesRow> {
  @override
  String get tableName => 'user_codes';

  @override
  UserCodesRow createRow(Map<String, dynamic> data) => UserCodesRow(data);
}

class UserCodesRow extends SupabaseDataRow {
  UserCodesRow(super.data);

  @override
  SupabaseTable get table => UserCodesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updaedAt => getField<DateTime>('updaed_at')!;
  set updaedAt(DateTime value) => setField<DateTime>('updaed_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
