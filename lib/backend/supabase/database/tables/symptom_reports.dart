import '../database.dart';

class SymptomReportsTable extends SupabaseTable<SymptomReportsRow> {
  @override
  String get tableName => 'symptom_reports';

  @override
  SymptomReportsRow createRow(Map<String, dynamic> data) =>
      SymptomReportsRow(data);
}

class SymptomReportsRow extends SupabaseDataRow {
  SymptomReportsRow(super.data);

  @override
  SupabaseTable get table => SymptomReportsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get severityId => getField<int>('severity_id')!;
  set severityId(int value) => setField<int>('severity_id', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  String get notes => getField<String>('notes')!;
  set notes(String value) => setField<String>('notes', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
