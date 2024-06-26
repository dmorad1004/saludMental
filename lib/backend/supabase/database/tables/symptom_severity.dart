import '../database.dart';

class SymptomSeverityTable extends SupabaseTable<SymptomSeverityRow> {
  @override
  String get tableName => 'symptom_severity';

  @override
  SymptomSeverityRow createRow(Map<String, dynamic> data) =>
      SymptomSeverityRow(data);
}

class SymptomSeverityRow extends SupabaseDataRow {
  SymptomSeverityRow(super.data);

  @override
  SupabaseTable get table => SymptomSeverityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get severity => getField<String>('severity')!;
  set severity(String value) => setField<String>('severity', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
