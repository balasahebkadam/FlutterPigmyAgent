import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? iPName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? pin = '',
    String? scode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl:
          'https://${serverAddress}/${iPName}/Service.asmx/AgentRegistration',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Pin': pin,
        'Scode': scode,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? appRegistration(dynamic response) => getJsonField(
        response,
        r'''$.AgentRegistration''',
        true,
      ) as List?;
  static int? flag(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.AgentRegistration[:].Flag''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].Msg''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].Token''',
      ));
  static String? agentName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].AgentName''',
      ));
  static String? bankName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].BankName''',
      ));
  static String? bankAddress(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].BankAddress''',
      ));
  static String? branchName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].BranchName''',
      ));
  static String? appCurrWorkingDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].AppCurrWorkingDate''',
      ));
  static String? lastCloseDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].LastCloseDate''',
      ));
  static String? lastSubmitDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.AgentRegistration[:].LastSubmitDate''',
      ));
}

class ValidatePinCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? iPName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? pin = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ValidatePin',
      apiUrl: 'https://${serverAddress}/${iPName}/Service.asmx/ValidatePin',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Pin': pin,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? validatePin(dynamic response) => getJsonField(
        response,
        r'''$.ValidatePin''',
        true,
      ) as List?;
  static int? flag(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ValidatePin[:].Flag''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ValidatePin[:].Msg''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ValidatePin[:].Token''',
      ));
  static String? appcurrWorkingDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ValidatePin[:].AppCurrWorkingDate''',
      ));
  static String? lastLoginDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ValidatePin[:].LastLoginDate''',
      ));
  static int? appVer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ValidatePin[:].AppVer''',
      ));
  static String? appDetails(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ValidatePin[:].AppDetails''',
      ));
}

class SubmitCollectionCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? ipName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? token = '',
    String? opr = '',
    String? trnDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SubmitCollection',
      apiUrl:
          'https://${serverAddress}/${ipName}/Service.asmx/SubmitCollection',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Token': token,
        'Opr': opr,
        'TrnDate': trnDate,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? submitCollection(dynamic response) => getJsonField(
        response,
        r'''$.SubmitCollection''',
        true,
      ) as List?;
  static int? flag(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].Flag''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.SubmitCollection[:].Msg''',
      ));
  static int? totalAc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].TotalAc''',
      ));
  static int? totalAmt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].TotalAmt''',
      ));
  static int? batchNo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].BatchNo''',
      ));
  static String? currWorkingDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.SubmitCollection[:].CurrWorkingDate''',
      ));
  static int? totalLoanAc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].TotalLoanAc''',
      ));
  static int? totalLoanAmt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].TotalLoanAmt''',
      ));
  static int? totalRDAc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].TotalRDAc''',
      ));
  static int? totalRDAmt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.SubmitCollection[:].TotalRDAmt''',
      ));
  static String? lastSubmitDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.SubmitCollection[:].LastSubmitDate''',
      ));
  static String? lastCloseDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.SubmitCollection[:].LastCloseDate''',
      ));
}

class CloseCollectionCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? ipName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? token = '',
    String? opr = '',
    String? trnDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CloseCollection',
      apiUrl: 'https://${serverAddress}/${ipName}/Service.asmx/CloseCollection',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Token': token,
        'Opr': opr,
        'TrnDate': trnDate,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? closeCollection(dynamic response) => getJsonField(
        response,
        r'''$.CloseCollection''',
        true,
      ) as List?;
  static int? flag(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CloseCollection[:].Flag''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.CloseCollection[:].Msg''',
      ));
  static String? appCurrWorkingDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.CloseCollection[:].AppCurrWorkingDate''',
      ));
  static int? totalAc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CloseCollection[:].TotalAc''',
      ));
  static int? totalAmt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CloseCollection[:].TotalAmt''',
      ));
  static int? totalLoanAc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CloseCollection[:].TotalLoanAc''',
      ));
  static int? totalLoanAmt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CloseCollection[:].TotalLoanAmt''',
      ));
  static int? totalRDAc(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CloseCollection[:].TotalRDAc''',
      ));
  static int? totalRDAmt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CloseCollection[:].TotalRDAmt''',
      ));
}

class CollectionListCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? iPName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? token = '',
    String? opr = '',
    String? trnDate = '',
    String? option = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CollectionList',
      apiUrl: 'https://${serverAddress}/${iPName}/Service.asmx/CollectionList',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Token': token,
        'Opr': opr,
        'TrnDate': trnDate,
        'Option': option,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? flag(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].Flag''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? collectionList(dynamic response) => getJsonField(
        response,
        r'''$.CollectionList''',
        true,
      ) as List?;
  static List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].Msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? acNo(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].AcNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? customerName(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].CustomerName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? trnAmt(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].TrnAmt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalAcNo(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].TotalAcNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalCollAmt(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].TotalCollAmt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalLoanAcNo(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].TotalLoanAcNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalLoanCollAmt(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].TotalLoanCollAmt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalRDAcNo(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].TotalRDAcNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? totalRDCollAmt(dynamic response) => (getJsonField(
        response,
        r'''$.CollectionList[:].TotalRDCollAmt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class MemberListCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? iPName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? token = '',
    String? acno = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MemberList',
      apiUrl: 'https://${serverAddress}/${iPName}/Service.asmx/MemberList',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Token': token,
        'Acno': acno,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? memberList(dynamic response) => getJsonField(
        response,
        r'''$.MemberList''',
        true,
      ) as List?;
  static List<int>? flag(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].Flag''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].Msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? acNo(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].AcNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? customerName(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].CustomerName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? balance(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].Balance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? acStatus(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].AcStatus''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? shadowBalance(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].ShadowBalance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? acAge(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].AcAge''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? lastNvDate(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].LastNvDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? openDate(dynamic response) => (getJsonField(
        response,
        r'''$.MemberList[:].OpenDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ReceiptCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? iPName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? token = '',
    String? acNo = '',
    String? trnAmt = '',
    String? trnDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Receipt',
      apiUrl: 'https://${serverAddress}/${iPName}/Service.asmx/Receipt',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Token': token,
        'AcNo': acNo,
        'TrnDate': trnDate,
        'TrnAmt': trnAmt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? reciept(dynamic response) => getJsonField(
        response,
        r'''$.Receipt''',
        true,
      ) as List?;
  static int? flag(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Receipt[:].Flag''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Receipt[:].Msg''',
      ));
  static int? trnNo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Receipt[:].TrnNo''',
      ));
}

class RDMemberListCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? iPName = '',
    String? agentID = '',
    String? token = '',
    String? schemeId = '',
    String? acno = '',
    String? mobileNo = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RDMemberList',
      apiUrl: 'https://${serverAddress}/${iPName}/Service.asmx/RDMemberList',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Token': token,
        'SchemeId': schemeId,
        'Acno': acno,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? rDMemberList(dynamic response) => getJsonField(
        response,
        r'''$.RDMemberList''',
        true,
      ) as List?;
  static List<int>? flag(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].Flag''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].Msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? acNo(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].AcNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? customerName(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].CustomerName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? depositDate(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].DepositDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? maturityDate(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].MaturityDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? depositAmount(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].DepositAmount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? balance(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].Balance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? acStatus(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].AcStatus''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? shadowBalance(dynamic response) => (getJsonField(
        response,
        r'''$.RDMemberList[:].ShadowBalance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class RDReceiptCall {
  static Future<ApiCallResponse> call({
    String? serverAddress = '',
    String? iPName = '',
    String? mobileNo = '',
    String? agentID = '',
    String? token = '',
    String? schemeId = '',
    String? acNo = '',
    String? trnDate = '',
    String? trnAmt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RDReceipt',
      apiUrl: 'https://${serverAddress}/${iPName}/Service.asmx/RDReceipt',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'UID': "0xCB98A10429C5DABEB1A2B491A1A90B0A",
        'PWD': "0xB439FA6DBE18C1963A9B32258E561614",
        'IMEINo': "da7651a7d2ae5ee7",
        'MobileNo': mobileNo,
        'AgentID': agentID,
        'Token': token,
        'SchemeId': schemeId,
        'AcNo': acNo,
        'TrnDate': trnDate,
        'TrnAmt': trnAmt,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? rDReciept(dynamic response) => getJsonField(
        response,
        r'''$.RDReceipt''',
        true,
      ) as List?;
  static int? flag(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.RDReceipt[:].Flag''',
      ));
  static String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.RDReceipt[:].Msg''',
      ));
  static int? trnNo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.RDReceipt[:].TrnNo''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
