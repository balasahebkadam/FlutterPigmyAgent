import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for Pin widget.
  FocusNode? pinFocusNode;
  TextEditingController? pinTextController;
  late bool pinVisibility;
  String? Function(BuildContext, String?)? pinTextControllerValidator;
  String? _pinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pin is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ValidatePin)] action in Button widget.
  ApiCallResponse? validateResponse;

  @override
  void initState(BuildContext context) {
    pinVisibility = false;
    pinTextControllerValidator = _pinTextControllerValidator;
  }

  @override
  void dispose() {
    dateFocusNode?.dispose();
    dateTextController?.dispose();

    pinFocusNode?.dispose();
    pinTextController?.dispose();
  }
}
