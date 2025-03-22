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
      return ' 10-digit Mobile Number is required';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for BranchId widget.
  FocusNode? branchIdFocusNode;
  TextEditingController? branchIdTextController;
  String? Function(BuildContext, String?)? branchIdTextControllerValidator;
  String? _branchIdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' Branch Id / Number is required';
    }

    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for AgentId widget.
  FocusNode? agentIdFocusNode;
  TextEditingController? agentIdTextController;
  String? Function(BuildContext, String?)? agentIdTextControllerValidator;
  String? _agentIdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' Agent Id / Number is required';
    }

    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
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
      return ' 4-digit PIN is required';
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
      return ' Server Address / Name is required';
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
      return 'Security Code is required';
    }

    if (val.length > 6) {
      return 'Maximum 6 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for IPName widget.
  FocusNode? iPNameFocusNode;
  TextEditingController? iPNameTextController;
  String? Function(BuildContext, String?)? iPNameTextControllerValidator;
  String? _iPNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' IP Name is required';
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
