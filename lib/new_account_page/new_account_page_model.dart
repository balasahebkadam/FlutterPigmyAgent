import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'new_account_page_widget.dart' show NewAccountPageWidget;
import 'package:flutter/material.dart';

class NewAccountPageModel extends FlutterFlowModel<NewAccountPageWidget> {
  ///  Local state fields for this page.

  bool btnSubmit = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldAcNo widget.
  FocusNode? textFieldAcNoFocusNode;
  TextEditingController? textFieldAcNoTextController;
  String? Function(BuildContext, String?)? textFieldAcNoTextControllerValidator;
  // State field(s) for TextFieldDate widget.
  FocusNode? textFieldDateFocusNode;
  TextEditingController? textFieldDateTextController;
  String? Function(BuildContext, String?)? textFieldDateTextControllerValidator;
  String? _textFieldDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'dmreeni2' /* Enter Date is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldCustId widget.
  FocusNode? textFieldCustIdFocusNode;
  TextEditingController? textFieldCustIdTextController;
  String? Function(BuildContext, String?)?
      textFieldCustIdTextControllerValidator;
  String? _textFieldCustIdTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0cntyil3' /* Enter Customer ID is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (GetCustomer)] action in IconButtonNext widget.
  ApiCallResponse? getCustomerResponse;
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'znzraoxg' /* Enter Member Name is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldMobNo widget.
  FocusNode? textFieldMobNoFocusNode;
  TextEditingController? textFieldMobNoTextController;
  String? Function(BuildContext, String?)?
      textFieldMobNoTextControllerValidator;
  String? _textFieldMobNoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n70tjdf6' /* Enter Mobile Number is require... */,
      );
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
      return FFLocalizations.of(context).getText(
        'r9uso3xc' /* Enter Collection Amount is req... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (NewMember)] action in ButtonSubmit widget.
  ApiCallResponse? newMemberResponse;

  @override
  void initState(BuildContext context) {
    textFieldDateTextControllerValidator =
        _textFieldDateTextControllerValidator;
    textFieldCustIdTextControllerValidator =
        _textFieldCustIdTextControllerValidator;
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
    textFieldMobNoTextControllerValidator =
        _textFieldMobNoTextControllerValidator;
    textFieldCollAmtTextControllerValidator =
        _textFieldCollAmtTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldAcNoFocusNode?.dispose();
    textFieldAcNoTextController?.dispose();

    textFieldDateFocusNode?.dispose();
    textFieldDateTextController?.dispose();

    textFieldCustIdFocusNode?.dispose();
    textFieldCustIdTextController?.dispose();

    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldMobNoFocusNode?.dispose();
    textFieldMobNoTextController?.dispose();

    textFieldCollAmtFocusNode?.dispose();
    textFieldCollAmtTextController?.dispose();
  }
}
