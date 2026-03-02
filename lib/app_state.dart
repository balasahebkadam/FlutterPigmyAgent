import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _serverAddress = prefs.getString('ff_serverAddress') ?? _serverAddress;
    });
    _safeInit(() {
      _ipname = prefs.getString('ff_ipname') ?? _ipname;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _agentId = prefs.getString('ff_agentId') ?? _agentId;
    });
    _safeInit(() {
      _mobileNumber = prefs.getString('ff_mobileNumber') ?? _mobileNumber;
    });
    _safeInit(() {
      _pin = prefs.getString('ff_pin') ?? _pin;
    });
    _safeInit(() {
      _BankName = prefs.getString('ff_BankName') ?? _BankName;
    });
    _safeInit(() {
      _AgentName = prefs.getString('ff_AgentName') ?? _AgentName;
    });
    _safeInit(() {
      _AppCurrWorkingDate =
          prefs.getString('ff_AppCurrWorkingDate') ?? _AppCurrWorkingDate;
    });
    _safeInit(() {
      _dateValue = prefs.getString('ff_dateValue') ?? _dateValue;
    });
    _safeInit(() {
      _Adsress = prefs.getString('ff_Adsress') ?? _Adsress;
    });
    _safeInit(() {
      _BranchName = prefs.getString('ff_BranchName') ?? _BranchName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _serverAddress = '';
  String get serverAddress => _serverAddress;
  set serverAddress(String value) {
    _serverAddress = value;
    prefs.setString('ff_serverAddress', value);
  }

  String _ipname = '';
  String get ipname => _ipname;
  set ipname(String value) {
    _ipname = value;
    prefs.setString('ff_ipname', value);
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _agentId = '';
  String get agentId => _agentId;
  set agentId(String value) {
    _agentId = value;
    prefs.setString('ff_agentId', value);
  }

  String _mobileNumber = '';
  String get mobileNumber => _mobileNumber;
  set mobileNumber(String value) {
    _mobileNumber = value;
    prefs.setString('ff_mobileNumber', value);
  }

  String _pin = '';
  String get pin => _pin;
  set pin(String value) {
    _pin = value;
    prefs.setString('ff_pin', value);
  }

  String _BankName = '';
  String get BankName => _BankName;
  set BankName(String value) {
    _BankName = value;
    prefs.setString('ff_BankName', value);
  }

  String _AgentName = '';
  String get AgentName => _AgentName;
  set AgentName(String value) {
    _AgentName = value;
    prefs.setString('ff_AgentName', value);
  }

  String _AppCurrWorkingDate = '';
  String get AppCurrWorkingDate => _AppCurrWorkingDate;
  set AppCurrWorkingDate(String value) {
    _AppCurrWorkingDate = value;
    prefs.setString('ff_AppCurrWorkingDate', value);
  }

  String _dateValue = '';
  String get dateValue => _dateValue;
  set dateValue(String value) {
    _dateValue = value;
    prefs.setString('ff_dateValue', value);
  }

  String _AcNo = '';
  String get AcNo => _AcNo;
  set AcNo(String value) {
    _AcNo = value;
  }

  String _custName = '';
  String get custName => _custName;
  set custName(String value) {
    _custName = value;
  }

  String _balance = '';
  String get balance => _balance;
  set balance(String value) {
    _balance = value;
  }

  String _shadowBalance = '';
  String get shadowBalance => _shadowBalance;
  set shadowBalance(String value) {
    _shadowBalance = value;
  }

  String _acAge = '';
  String get acAge => _acAge;
  set acAge(String value) {
    _acAge = value;
  }

  String _lastNvDate = '';
  String get lastNvDate => _lastNvDate;
  set lastNvDate(String value) {
    _lastNvDate = value;
  }

  String _openDate = '';
  String get openDate => _openDate;
  set openDate(String value) {
    _openDate = value;
  }

  String _Adsress = '';
  String get Adsress => _Adsress;
  set Adsress(String value) {
    _Adsress = value;
    prefs.setString('ff_Adsress', value);
  }

  String _BranchName = '';
  String get BranchName => _BranchName;
  set BranchName(String value) {
    _BranchName = value;
    prefs.setString('ff_BranchName', value);
  }

  String _DepositDate = '';
  String get DepositDate => _DepositDate;
  set DepositDate(String value) {
    _DepositDate = value;
  }

  String _MaturityDate = '';
  String get MaturityDate => _MaturityDate;
  set MaturityDate(String value) {
    _MaturityDate = value;
  }

  String _DepositAmount = '';
  String get DepositAmount => _DepositAmount;
  set DepositAmount(String value) {
    _DepositAmount = value;
  }

  String _SchemeId = '';
  String get SchemeId => _SchemeId;
  set SchemeId(String value) {
    _SchemeId = value;
  }

  String _LoanDate = '';
  String get LoanDate => _LoanDate;
  set LoanDate(String value) {
    _LoanDate = value;
  }

  String _EndDate = '';
  String get EndDate => _EndDate;
  set EndDate(String value) {
    _EndDate = value;
  }

  String _InstallmentAmt = '';
  String get InstallmentAmt => _InstallmentAmt;
  set InstallmentAmt(String value) {
    _InstallmentAmt = value;
  }

  String _CustEName = '';
  String get CustEName => _CustEName;
  set CustEName(String value) {
    _CustEName = value;
  }

  String _CustMName = '';
  String get CustMName => _CustMName;
  set CustMName(String value) {
    _CustMName = value;
  }

  String _CustId = '';
  String get CustId => _CustId;
  set CustId(String value) {
    _CustId = value;
  }

  String _CustMobNo = '';
  String get CustMobNo => _CustMobNo;
  set CustMobNo(String value) {
    _CustMobNo = value;
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
