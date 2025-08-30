import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// ignore: must_be_immutable
class SingleDatePicker extends StatelessWidget {
  Function(DateTime?)? dateChanged;
  SingleDatePicker({super.key, required this.dateChanged});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: ShadDatePicker(
        selectableDayPredicate: (day) {
          // interdit toutes les dates avant aujourd'hui
          return day.isAfter(DateTime.now().subtract(const Duration(days: 1)));
        },
        closeOnTapOutside: true,
        closeOnSelection: true,
        placeholder: Text("entrez la date"),
        onChanged: dateChanged,
      ),
    );
  }
}
