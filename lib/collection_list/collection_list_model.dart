import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'collection_list_widget.dart' show CollectionListWidget;
import 'package:flutter/material.dart';

class CollectionListModel extends FlutterFlowModel<CollectionListWidget> {
  ///  Local state fields for this page.

  bool isButtonclick = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldDate widget.
  FocusNode? textFieldDateFocusNode;
  TextEditingController? textFieldDateTextController;
  String? Function(BuildContext, String?)? textFieldDateTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropDownOperation widget.
  String? dropDownOperationValue;
  FormFieldController<String>? dropDownOperationValueController;
  // State field(s) for DropDownOption widget.
  String? dropDownOptionValue;
  FormFieldController<String>? dropDownOptionValueController;
  // Stores action output result for [Backend Call - API (CollectionList)] action in Button widget.
  ApiCallResponse? collectionListResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldDateFocusNode?.dispose();
    textFieldDateTextController?.dispose();
  }
}
