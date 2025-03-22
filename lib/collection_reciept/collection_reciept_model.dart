import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'collection_reciept_widget.dart' show CollectionRecieptWidget;
import 'package:flutter/material.dart';

class CollectionRecieptModel extends FlutterFlowModel<CollectionRecieptWidget> {
  ///  Local state fields for this page.

  bool isBtnPressed = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldReciptNo widget.
  FocusNode? textFieldReciptNoFocusNode;
  TextEditingController? textFieldReciptNoTextController;
  String? Function(BuildContext, String?)?
      textFieldReciptNoTextControllerValidator;
  // State field(s) for TextFieldDave widget.
  FocusNode? textFieldDaveFocusNode;
  TextEditingController? textFieldDaveTextController;
  String? Function(BuildContext, String?)? textFieldDaveTextControllerValidator;
  String? _textFieldDaveTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'AppCurrWorkingDate is required';
    }

    return null;
  }

  // State field(s) for TextFieldAcNo widget.
  FocusNode? textFieldAcNoFocusNode;
  TextEditingController? textFieldAcNoTextController;
  String? Function(BuildContext, String?)? textFieldAcNoTextControllerValidator;
  String? _textFieldAcNoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'A/c No is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (MemberList)] action in IconButtonNext widget.
  ApiCallResponse? memberAcResponse;
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Customer Name is required';
    }

    return null;
  }

  // State field(s) for TextFieldAcBalance widget.
  FocusNode? textFieldAcBalanceFocusNode;
  TextEditingController? textFieldAcBalanceTextController;
  String? Function(BuildContext, String?)?
      textFieldAcBalanceTextControllerValidator;
  String? _textFieldAcBalanceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Balance is required';
    }

    return null;
  }

  // State field(s) for TextFieldShadowBal widget.
  FocusNode? textFieldShadowBalFocusNode;
  TextEditingController? textFieldShadowBalTextController;
  String? Function(BuildContext, String?)?
      textFieldShadowBalTextControllerValidator;
  String? _textFieldShadowBalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ShadowBalance is required';
    }

    return null;
  }

  // State field(s) for TextFieldOpenDate widget.
  FocusNode? textFieldOpenDateFocusNode;
  TextEditingController? textFieldOpenDateTextController;
  String? Function(BuildContext, String?)?
      textFieldOpenDateTextControllerValidator;
  String? _textFieldOpenDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Open Date is required';
    }

    return null;
  }

  // State field(s) for TextFieldLastDrDate widget.
  FocusNode? textFieldLastDrDateFocusNode;
  TextEditingController? textFieldLastDrDateTextController;
  String? Function(BuildContext, String?)?
      textFieldLastDrDateTextControllerValidator;
  String? _textFieldLastDrDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last Dr Date is required';
    }

    return null;
  }

  // State field(s) for TextFieldAccountAge widget.
  FocusNode? textFieldAccountAgeFocusNode;
  TextEditingController? textFieldAccountAgeTextController;
  String? Function(BuildContext, String?)?
      textFieldAccountAgeTextControllerValidator;
  String? _textFieldAccountAgeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'A/c Age is required';
    }

    return null;
  }

  // State field(s) for TextFieldRemark widget.
  FocusNode? textFieldRemarkFocusNode;
  TextEditingController? textFieldRemarkTextController;
  String? Function(BuildContext, String?)?
      textFieldRemarkTextControllerValidator;
  String? _textFieldRemarkTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' Remark is rquired';
    }

    return null;
  }

  // State field(s) for TextFieldCollAmt widget.
  FocusNode? textFieldCollAmtFocusNode;
  TextEditingController? textFieldCollAmtTextController;
  String? Function(BuildContext, String?)?
      textFieldCollAmtTextControllerValidator;
  String? _textFieldCollAmtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' Collection Amount is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Receipt)] action in ButtonSubmit widget.
  ApiCallResponse? recieptResponse;

  @override
  void initState(BuildContext context) {
    textFieldDaveTextControllerValidator =
        _textFieldDaveTextControllerValidator;
    textFieldAcNoTextControllerValidator =
        _textFieldAcNoTextControllerValidator;
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
    textFieldAcBalanceTextControllerValidator =
        _textFieldAcBalanceTextControllerValidator;
    textFieldShadowBalTextControllerValidator =
        _textFieldShadowBalTextControllerValidator;
    textFieldOpenDateTextControllerValidator =
        _textFieldOpenDateTextControllerValidator;
    textFieldLastDrDateTextControllerValidator =
        _textFieldLastDrDateTextControllerValidator;
    textFieldAccountAgeTextControllerValidator =
        _textFieldAccountAgeTextControllerValidator;
    textFieldRemarkTextControllerValidator =
        _textFieldRemarkTextControllerValidator;
    textFieldCollAmtTextControllerValidator =
        _textFieldCollAmtTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldReciptNoFocusNode?.dispose();
    textFieldReciptNoTextController?.dispose();

    textFieldDaveFocusNode?.dispose();
    textFieldDaveTextController?.dispose();

    textFieldAcNoFocusNode?.dispose();
    textFieldAcNoTextController?.dispose();

    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldAcBalanceFocusNode?.dispose();
    textFieldAcBalanceTextController?.dispose();

    textFieldShadowBalFocusNode?.dispose();
    textFieldShadowBalTextController?.dispose();

    textFieldOpenDateFocusNode?.dispose();
    textFieldOpenDateTextController?.dispose();

    textFieldLastDrDateFocusNode?.dispose();
    textFieldLastDrDateTextController?.dispose();

    textFieldAccountAgeFocusNode?.dispose();
    textFieldAccountAgeTextController?.dispose();

    textFieldRemarkFocusNode?.dispose();
    textFieldRemarkTextController?.dispose();

    textFieldCollAmtFocusNode?.dispose();
    textFieldCollAmtTextController?.dispose();
  }
}
