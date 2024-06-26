import '../database.dart';

class UserMedicalConditionsTable
    extends SupabaseTable<UserMedicalConditionsRow> {
  @override
  String get tableName => 'user_medical_conditions';

  @override
  UserMedicalConditionsRow createRow(Map<String, dynamic> data) =>
      UserMedicalConditionsRow(data);
}

class UserMedicalConditionsRow extends SupabaseDataRow {
  UserMedicalConditionsRow(super.data);

  @override
  SupabaseTable get table => UserMedicalConditionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get condition => getField<String>('condition')!;
  set condition(String value) => setField<String>('condition', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
