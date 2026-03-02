import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recurring_deposite_receipt_widget.dart'
    show RecurringDepositeReceiptWidget;
import 'package:flutter/material.dart';

class RecurringDepositeReceiptModel
    extends FlutterFlowModel<RecurringDepositeReceiptWidget> {
  ///  Local state fields for this page.

  bool isBtnPressed = false;

  bool isSchemeDisabled = false;

  bool isAcIdDisabled = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldRecieptNo widget.
  FocusNode? textFieldRecieptNoFocusNode;
  TextEditingController? textFieldRecieptNoTextController;
  String? Function(BuildContext, String?)?
      textFieldRecieptNoTextControllerValidator;
  // State field(s) for TextFieldDate widget.
  FocusNode? textFieldDateFocusNode;
  TextEditingController? textFieldDateTextController;
  String? Function(BuildContext, String?)? textFieldDateTextControllerValidator;
  String? _textFieldDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tb1a5epp' /* RD Recipet Date is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldSchemeId widget.
  FocusNode? textFieldSchemeIdFocusNode;
  TextEditingController? textFieldSchemeIdTextController;
  String? Function(BuildContext, String?)?
      textFieldSchemeIdTextControllerValidator;
  String? _textFieldSchemeIdTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nii8y7rf' /* SchemeId is required */,
      );
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
      return FFLocalizations.of(context).getText(
        'zsj4zwzy' /* AcNo is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (RDMemberList)] action in IconButtonNext widget.
  ApiCallResponse? rDMemberListResponse;
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'i0h8znwm' /* custName is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldRDDate widget.
  FocusNode? textFieldRDDateFocusNode;
  TextEditingController? textFieldRDDateTextController;
  String? Function(BuildContext, String?)?
      textFieldRDDateTextControllerValidator;
  String? _textFieldRDDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '88qr4e4x' /* DepositDate is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldMaturityDate widget.
  FocusNode? textFieldMaturityDateFocusNode;
  TextEditingController? textFieldMaturityDateTextController;
  String? Function(BuildContext, String?)?
      textFieldMaturityDateTextControllerValidator;
  String? _textFieldMaturityDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'h6i9oxm7' /* MaturityDate is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldCurrBal widget.
  FocusNode? textFieldCurrBalFocusNode;
  TextEditingController? textFieldCurrBalTextController;
  String? Function(BuildContext, String?)?
      textFieldCurrBalTextControllerValidator;
  String? _textFieldCurrBalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sixero91' /* balance is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldDepositamt widget.
  FocusNode? textFieldDepositamtFocusNode;
  TextEditingController? textFieldDepositamtTextController;
  String? Function(BuildContext, String?)?
      textFieldDepositamtTextControllerValidator;
  String? _textFieldDepositamtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's9aooceq' /* DepositAmount is required */,
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
        'stbmhuw4' /* Enter Collection Amount is req... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (RDReceipt)] action in ButtonSubmit widget.
  ApiCallResponse? rDRecieptResponse;

  @override
  void initState(BuildContext context) {
    textFieldDateTextControllerValidator =
        _textFieldDateTextControllerValidator;
    textFieldSchemeIdTextControllerValidator =
        _textFieldSchemeIdTextControllerValidator;
    textFieldAcNoTextControllerValidator =
        _textFieldAcNoTextControllerValidator;
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
    textFieldRDDateTextControllerValidator =
        _textFieldRDDateTextControllerValidator;
    textFieldMaturityDateTextControllerValidator =
        _textFieldMaturityDateTextControllerValidator;
    textFieldCurrBalTextControllerValidator =
        _textFieldCurrBalTextControllerValidator;
    textFieldDepositamtTextControllerValidator =
        _textFieldDepositamtTextControllerValidator;
    textFieldCollAmtTextControllerValidator =
        _textFieldCollAmtTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldRecieptNoFocusNode?.dispose();
    textFieldRecieptNoTextController?.dispose();

    textFieldDateFocusNode?.dispose();
    textFieldDateTextController?.dispose();

    textFieldSchemeIdFocusNode?.dispose();
    textFieldSchemeIdTextController?.dispose();

    textFieldAcNoFocusNode?.dispose();
    textFieldAcNoTextController?.dispose();

    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldRDDateFocusNode?.dispose();
    textFieldRDDateTextController?.dispose();

    textFieldMaturityDateFocusNode?.dispose();
    textFieldMaturityDateTextController?.dispose();

    textFieldCurrBalFocusNode?.dispose();
    textFieldCurrBalTextController?.dispose();

    textFieldDepositamtFocusNode?.dispose();
    textFieldDepositamtTextController?.dispose();

    textFieldCollAmtFocusNode?.dispose();
    textFieldCollAmtTextController?.dispose();
  }
}
