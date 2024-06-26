import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _userId = await secureStorage.getString('ff_userId') ?? _userId;
    });
    await _safeInitAsync(() async {
      _userName = await secureStorage.getString('ff_userName') ?? _userName;
    });
    await _safeInitAsync(() async {
      _userPhome = await secureStorage.getString('ff_userPhome') ?? _userPhome;
    });
    await _safeInitAsync(() async {
      _userEmail = await secureStorage.getString('ff_userEmail') ?? _userEmail;
    });
    await _safeInitAsync(() async {
      _userCode = await secureStorage.getString('ff_userCode') ?? _userCode;
    });
    await _safeInitAsync(() async {
      _userStatus = await secureStorage.getInt('ff_userStatus') ?? _userStatus;
    });
    await _safeInitAsync(() async {
      _userCodeId = await secureStorage.getInt('ff_userCodeId') ?? _userCodeId;
    });
    await _safeInitAsync(() async {
      _hasAppointment =
          await secureStorage.getBool('ff_hasAppointment') ?? _hasAppointment;
    });
    await _safeInitAsync(() async {
      _appointmentHospitalName =
          await secureStorage.getString('ff_appointmentHospitalName') ??
              _appointmentHospitalName;
    });
    await _safeInitAsync(() async {
      _appointmentHospitalAddress =
          await secureStorage.getString('ff_appointmentHospitalAddress') ??
              _appointmentHospitalAddress;
    });
    await _safeInitAsync(() async {
      _appointmentHospitalCity =
          await secureStorage.getString('ff_appointmentHospitalCity') ??
              _appointmentHospitalCity;
    });
    await _safeInitAsync(() async {
      _appointmentHospitalPhone =
          await secureStorage.getString('ff_appointmentHospitalPhone') ??
              _appointmentHospitalPhone;
    });
    await _safeInitAsync(() async {
      _appointmentDate = await secureStorage.getString('ff_appointmentDate') ??
          _appointmentDate;
    });
    await _safeInitAsync(() async {
      _reports = (await secureStorage.getStringList('ff_reports'))
              ?.map((x) {
                try {
                  return ReportStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _reports;
    });
    await _safeInitAsync(() async {
      _reportDetailId =
          await secureStorage.getInt('ff_reportDetailId') ?? _reportDetailId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
    secureStorage.setString('ff_userId', value);
  }

  void deleteUserId() {
    secureStorage.delete(key: 'ff_userId');
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    secureStorage.setString('ff_userName', value);
  }

  void deleteUserName() {
    secureStorage.delete(key: 'ff_userName');
  }

  String _userPhome = '';
  String get userPhome => _userPhome;
  set userPhome(String value) {
    _userPhome = value;
    secureStorage.setString('ff_userPhome', value);
  }

  void deleteUserPhome() {
    secureStorage.delete(key: 'ff_userPhome');
  }

  String _userEmail = '';
  String get userEmail => _userEmail;
  set userEmail(String value) {
    _userEmail = value;
    secureStorage.setString('ff_userEmail', value);
  }

  void deleteUserEmail() {
    secureStorage.delete(key: 'ff_userEmail');
  }

  String _userCode = '';
  String get userCode => _userCode;
  set userCode(String value) {
    _userCode = value;
    secureStorage.setString('ff_userCode', value);
  }

  void deleteUserCode() {
    secureStorage.delete(key: 'ff_userCode');
  }

  int _userStatus = 0;
  int get userStatus => _userStatus;
  set userStatus(int value) {
    _userStatus = value;
    secureStorage.setInt('ff_userStatus', value);
  }

  void deleteUserStatus() {
    secureStorage.delete(key: 'ff_userStatus');
  }

  int _userCodeId = 0;
  int get userCodeId => _userCodeId;
  set userCodeId(int value) {
    _userCodeId = value;
    secureStorage.setInt('ff_userCodeId', value);
  }

  void deleteUserCodeId() {
    secureStorage.delete(key: 'ff_userCodeId');
  }

  bool _hasAppointment = false;
  bool get hasAppointment => _hasAppointment;
  set hasAppointment(bool value) {
    _hasAppointment = value;
    secureStorage.setBool('ff_hasAppointment', value);
  }

  void deleteHasAppointment() {
    secureStorage.delete(key: 'ff_hasAppointment');
  }

  String _appointmentHospitalName = '';
  String get appointmentHospitalName => _appointmentHospitalName;
  set appointmentHospitalName(String value) {
    _appointmentHospitalName = value;
    secureStorage.setString('ff_appointmentHospitalName', value);
  }

  void deleteAppointmentHospitalName() {
    secureStorage.delete(key: 'ff_appointmentHospitalName');
  }

  String _appointmentHospitalAddress = '';
  String get appointmentHospitalAddress => _appointmentHospitalAddress;
  set appointmentHospitalAddress(String value) {
    _appointmentHospitalAddress = value;
    secureStorage.setString('ff_appointmentHospitalAddress', value);
  }

  void deleteAppointmentHospitalAddress() {
    secureStorage.delete(key: 'ff_appointmentHospitalAddress');
  }

  String _appointmentHospitalCity = '';
  String get appointmentHospitalCity => _appointmentHospitalCity;
  set appointmentHospitalCity(String value) {
    _appointmentHospitalCity = value;
    secureStorage.setString('ff_appointmentHospitalCity', value);
  }

  void deleteAppointmentHospitalCity() {
    secureStorage.delete(key: 'ff_appointmentHospitalCity');
  }

  String _appointmentHospitalPhone = '';
  String get appointmentHospitalPhone => _appointmentHospitalPhone;
  set appointmentHospitalPhone(String value) {
    _appointmentHospitalPhone = value;
    secureStorage.setString('ff_appointmentHospitalPhone', value);
  }

  void deleteAppointmentHospitalPhone() {
    secureStorage.delete(key: 'ff_appointmentHospitalPhone');
  }

  String _appointmentDate = '';
  String get appointmentDate => _appointmentDate;
  set appointmentDate(String value) {
    _appointmentDate = value;
    secureStorage.setString('ff_appointmentDate', value);
  }

  void deleteAppointmentDate() {
    secureStorage.delete(key: 'ff_appointmentDate');
  }

  List<ReportStruct> _reports = [];
  List<ReportStruct> get reports => _reports;
  set reports(List<ReportStruct> value) {
    _reports = value;
    secureStorage.setStringList(
        'ff_reports', value.map((x) => x.serialize()).toList());
  }

  void deleteReports() {
    secureStorage.delete(key: 'ff_reports');
  }

  void addToReports(ReportStruct value) {
    _reports.add(value);
    secureStorage.setStringList(
        'ff_reports', _reports.map((x) => x.serialize()).toList());
  }

  void removeFromReports(ReportStruct value) {
    _reports.remove(value);
    secureStorage.setStringList(
        'ff_reports', _reports.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromReports(int index) {
    _reports.removeAt(index);
    secureStorage.setStringList(
        'ff_reports', _reports.map((x) => x.serialize()).toList());
  }

  void updateReportsAtIndex(
    int index,
    ReportStruct Function(ReportStruct) updateFn,
  ) {
    _reports[index] = updateFn(_reports[index]);
    secureStorage.setStringList(
        'ff_reports', _reports.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInReports(int index, ReportStruct value) {
    _reports.insert(index, value);
    secureStorage.setStringList(
        'ff_reports', _reports.map((x) => x.serialize()).toList());
  }

  int _reportDetailId = 0;
  int get reportDetailId => _reportDetailId;
  set reportDetailId(int value) {
    _reportDetailId = value;
    secureStorage.setInt('ff_reportDetailId', value);
  }

  void deleteReportDetailId() {
    secureStorage.delete(key: 'ff_reportDetailId');
  }

  bool _SMolestiaSitio = false;
  bool get SMolestiaSitio => _SMolestiaSitio;
  set SMolestiaSitio(bool value) {
    _SMolestiaSitio = value;
  }

  int _SMolestiaSitioId = 0;
  int get SMolestiaSitioId => _SMolestiaSitioId;
  set SMolestiaSitioId(int value) {
    _SMolestiaSitioId = value;
  }

  int _SMolestiaSitioGrado = 0;
  int get SMolestiaSitioGrado => _SMolestiaSitioGrado;
  set SMolestiaSitioGrado(int value) {
    _SMolestiaSitioGrado = value;
  }

  bool _SMolestiaGeneral = false;
  bool get SMolestiaGeneral => _SMolestiaGeneral;
  set SMolestiaGeneral(bool value) {
    _SMolestiaGeneral = value;
  }

  int _SMolestiaGeneralId = 0;
  int get SMolestiaGeneralId => _SMolestiaGeneralId;
  set SMolestiaGeneralId(int value) {
    _SMolestiaGeneralId = value;
  }

  int _SMolestiaGeneralGrado = 0;
  int get SMolestiaGeneralGrado => _SMolestiaGeneralGrado;
  set SMolestiaGeneralGrado(int value) {
    _SMolestiaGeneralGrado = value;
  }

  int _SBroteId = 0;
  int get SBroteId => _SBroteId;
  set SBroteId(int value) {
    _SBroteId = value;
  }

  String _SImage = '';
  String get SImage => _SImage;
  set SImage(String value) {
    _SImage = value;
  }

  bool _SPersistente = false;
  bool get SPersistente => _SPersistente;
  set SPersistente(bool value) {
    _SPersistente = value;
  }

  bool _SSolicitaComunicacion = false;
  bool get SSolicitaComunicacion => _SSolicitaComunicacion;
  set SSolicitaComunicacion(bool value) {
    _SSolicitaComunicacion = value;
  }

  int _SAlteracionDiaria = 0;
  int get SAlteracionDiaria => _SAlteracionDiaria;
  set SAlteracionDiaria(int value) {
    _SAlteracionDiaria = value;
  }

  String _SDate = '';
  String get SDate => _SDate;
  set SDate(String value) {
    _SDate = value;
  }

  int _Sindice = 0;
  int get Sindice => _Sindice;
  set Sindice(int value) {
    _Sindice = value;
  }

  String _sImagePath = '';
  String get sImagePath => _sImagePath;
  set sImagePath(String value) {
    _sImagePath = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
