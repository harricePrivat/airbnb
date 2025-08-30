import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// ignore: must_be_immutable
class RangeDatePickerBrice extends StatelessWidget {
  ValueChanged<ShadDateTimeRange?>? onRangeChanged;
  RangeDatePickerBrice({super.key, required this.onRangeChanged});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: ShadDatePicker.range(
        placeholder: Text("intervalle de date"),
        showOutsideDays: false,
        allowDeselection: true,
        closeOnSelection: true,
        onRangeChanged: onRangeChanged,
      ),
    );
  }
}
