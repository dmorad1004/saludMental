import '../database.dart';

class AppointmentsTable extends SupabaseTable<AppointmentsRow> {
  @override
  String get tableName => 'appointments';

  @override
  AppointmentsRow createRow(Map<String, dynamic> data) => AppointmentsRow(data);
}

class AppointmentsRow extends SupabaseDataRow {
  AppointmentsRow(super.data);

  @override
  SupabaseTable get table => AppointmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get hospitalId => getField<int>('hospital_id')!;
  set hospitalId(int value) => setField<int>('hospital_id', value);

  DateTime get appointmentDate => getField<DateTime>('appointment_date')!;
  set appointmentDate(DateTime value) =>
      setField<DateTime>('appointment_date', value);

  PostgresTime get appointmentTime =>
      getField<PostgresTime>('appointment_time')!;
  set appointmentTime(PostgresTime value) =>
      setField<PostgresTime>('appointment_time', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
