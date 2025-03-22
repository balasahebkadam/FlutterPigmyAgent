import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_riecipt_page_widget.dart' show NewRieciptPageWidget;
import 'package:flutter/material.dart';

class NewRieciptPageModel extends FlutterFlowModel<NewRieciptPageWidget> {
  ///  Local state fields for this page.

  String customerName = '';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldAcNo widget.
  FocusNode? textFieldAcNoFocusNode;
  TextEditingController? textFieldAcNoTextController;
  String? Function(BuildContext, String?)? textFieldAcNoTextControllerValidator;
  // Stores action output result for [Backend Call - API (MemberList)] action in Button widget.
  ApiCallResponse? memberlistResponse;
  // State field(s) for TextFieldCustName widget.
  FocusNode? textFieldCustNameFocusNode;
  TextEditingController? textFieldCustNameTextController;
  String? Function(BuildContext, String?)?
      textFieldCustNameTextControllerValidator;
  // State field(s) for TextFieldBalance widget.
  FocusNode? textFieldBalanceFocusNode;
  TextEditingController? textFieldBalanceTextController;
  String? Function(BuildContext, String?)?
      textFieldBalanceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldAcNoFocusNode?.dispose();
    textFieldAcNoTextController?.dispose();

    textFieldCustNameFocusNode?.dispose();
    textFieldCustNameTextController?.dispose();

    textFieldBalanceFocusNode?.dispose();
    textFieldBalanceTextController?.dispose();
  }
}
