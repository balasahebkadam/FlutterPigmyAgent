import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loan_collection_reciept_widget.dart' show LoanCollectionRecieptWidget;
import 'package:flutter/material.dart';

class LoanCollectionRecieptModel
    extends FlutterFlowModel<LoanCollectionRecieptWidget> {
  ///  Local state fields for this page.

  bool btnSubmit = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldRecieptNo widget.
  final textFieldRecieptNoKey = GlobalKey();
  FocusNode? textFieldRecieptNoFocusNode;
  TextEditingController? textFieldRecieptNoTextController;
  String? textFieldRecieptNoSelectedOption;
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
        '75ghllfs' /* AppCurrWorkingDate is required */,
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
        'bnk00yl0' /* SchemeId is required */,
      );
    }

    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
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
        '0oergjyo' /* AcNo is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (LoanMemberList)] action in IconButtonNext widget.
  ApiCallResponse? loanMemberList;
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'co28dnzl' /* custName is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldLoanDate widget.
  FocusNode? textFieldLoanDateFocusNode;
  TextEditingController? textFieldLoanDateTextController;
  String? Function(BuildContext, String?)?
      textFieldLoanDateTextControllerValidator;
  String? _textFieldLoanDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'my6gk9p2' /* LoanDate is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldEndDate widget.
  FocusNode? textFieldEndDateFocusNode;
  TextEditingController? textFieldEndDateTextController;
  String? Function(BuildContext, String?)?
      textFieldEndDateTextControllerValidator;
  String? _textFieldEndDateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pu094skf' /* EndDate is required */,
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
        'cmg66hl4' /* balance is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldInstallAmt widget.
  FocusNode? textFieldInstallAmtFocusNode;
  TextEditingController? textFieldInstallAmtTextController;
  String? Function(BuildContext, String?)?
      textFieldInstallAmtTextControllerValidator;
  String? _textFieldInstallAmtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tscqt6h3' /* InstallmentAmt is required */,
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
        'ss3a12pj' /* Enter Coll Amt is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (LoanReceipt)] action in ButtonSubmit widget.
  ApiCallResponse? loanRecieptResponse;

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
    textFieldLoanDateTextControllerValidator =
        _textFieldLoanDateTextControllerValidator;
    textFieldEndDateTextControllerValidator =
        _textFieldEndDateTextControllerValidator;
    textFieldCurrBalTextControllerValidator =
        _textFieldCurrBalTextControllerValidator;
    textFieldInstallAmtTextControllerValidator =
        _textFieldInstallAmtTextControllerValidator;
    textFieldCollAmtTextControllerValidator =
        _textFieldCollAmtTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldRecieptNoFocusNode?.dispose();

    textFieldDateFocusNode?.dispose();
    textFieldDateTextController?.dispose();

    textFieldSchemeIdFocusNode?.dispose();
    textFieldSchemeIdTextController?.dispose();

    textFieldAcNoFocusNode?.dispose();
    textFieldAcNoTextController?.dispose();

    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldLoanDateFocusNode?.dispose();
    textFieldLoanDateTextController?.dispose();

    textFieldEndDateFocusNode?.dispose();
    textFieldEndDateTextController?.dispose();

    textFieldCurrBalFocusNode?.dispose();
    textFieldCurrBalTextController?.dispose();

    textFieldInstallAmtFocusNode?.dispose();
    textFieldInstallAmtTextController?.dispose();

    textFieldCollAmtFocusNode?.dispose();
    textFieldCollAmtTextController?.dispose();
  }
}
