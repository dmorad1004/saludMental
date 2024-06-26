import '../database.dart';

class UserStatusTable extends SupabaseTable<UserStatusRow> {
  @override
  String get tableName => 'user_status';

  @override
  UserStatusRow createRow(Map<String, dynamic> data) => UserStatusRow(data);
}

class UserStatusRow extends SupabaseDataRow {
  UserStatusRow(super.data);

  @override
  SupabaseTable get table => UserStatusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
