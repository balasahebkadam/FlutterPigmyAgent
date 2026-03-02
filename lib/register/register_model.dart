import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for MobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8k14wnbt' /*  10-digit Mobile Number is req... */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '96beqdrl' /* Enter Valid 10 digit Mobile Nu... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        's5ybc4az' /* Enter Valid 10 digit Mobile Nu... */,
      );
    }

    return null;
  }

  // State field(s) for BranchId widget.
  FocusNode? branchIdFocusNode;
  TextEditingController? branchIdTextController;
  String? Function(BuildContext, String?)? branchIdTextControllerValidator;
  String? _branchIdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hsq9nr9j' /*  Branch Id / Number is require... */,
      );
    }

    if (val.length > 3) {
      return FFLocalizations.of(context).getText(
        'mn2yv1lb' /* Enter Valid Branch ID */,
      );
    }

    return null;
  }

  // State field(s) for AgentId widget.
  FocusNode? agentIdFocusNode;
  TextEditingController? agentIdTextController;
  String? Function(BuildContext, String?)? agentIdTextControllerValidator;
  String? _agentIdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ytrtu48q' /*  Agent Id / Number is required */,
      );
    }

    if (val.length > 4) {
      return FFLocalizations.of(context).getText(
        '5kcm1o2r' /* Enter Valid Agent ID */,
      );
    }

    return null;
  }

  // State field(s) for PIN widget.
  FocusNode? pinFocusNode;
  TextEditingController? pinTextController;
  late bool pinVisibility;
  String? Function(BuildContext, String?)? pinTextControllerValidator;
  String? _pinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b8ay92kn' /*  4-digit PIN is required */,
      );
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 4) {
      return FFLocalizations.of(context).getText(
        'ywyjox8e' /* Pin  can't be more than 4 digi... */,
      );
    }

    return null;
  }

  // State field(s) for ServerAddress widget.
  FocusNode? serverAddressFocusNode;
  TextEditingController? serverAddressTextController;
  String? Function(BuildContext, String?)? serverAddressTextControllerValidator;
  String? _serverAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zsgcvmka' /*  Server Address / Name is requ... */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Has to be a valid website.';
    }
    return null;
  }

  // State field(s) for SecurityCode widget.
  FocusNode? securityCodeFocusNode;
  TextEditingController? securityCodeTextController;
  String? Function(BuildContext, String?)? securityCodeTextControllerValidator;
  String? _securityCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'p9v8639z' /* Security Code is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'nwl5ubx4' /* Enter  6 digit Security code */,
      );
    }
    if (val.length > 6) {
      return FFLocalizations.of(context).getText(
        '2zqlpoek' /* Enter  6 digit Security code */,
      );
    }

    return null;
  }

  // State field(s) for IPName widget.
  FocusNode? iPNameFocusNode;
  TextEditingController? iPNameTextController;
  String? Function(BuildContext, String?)? iPNameTextControllerValidator;
  String? _iPNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hy7p99ru' /*  IP Name is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Register)] action in Button widget.
  ApiCallResponse? registerAPIResponse;

  @override
  void initState(BuildContext context) {
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    branchIdTextControllerValidator = _branchIdTextControllerValidator;
    agentIdTextControllerValidator = _agentIdTextControllerValidator;
    pinVisibility = false;
    pinTextControllerValidator = _pinTextControllerValidator;
    serverAddressTextControllerValidator =
        _serverAddressTextControllerValidator;
    securityCodeTextControllerValidator = _securityCodeTextControllerValidator;
    iPNameTextControllerValidator = _iPNameTextControllerValidator;
  }

  @override
  void dispose() {
    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    branchIdFocusNode?.dispose();
    branchIdTextController?.dispose();

    agentIdFocusNode?.dispose();
    agentIdTextController?.dispose();

    pinFocusNode?.dispose();
    pinTextController?.dispose();

    serverAddressFocusNode?.dispose();
    serverAddressTextController?.dispose();

    securityCodeFocusNode?.dispose();
    securityCodeTextController?.dispose();

    iPNameFocusNode?.dispose();
    iPNameTextController?.dispose();
  }
}
