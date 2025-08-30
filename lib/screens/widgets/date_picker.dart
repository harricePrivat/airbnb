import 'package:airbnb/provider/animation_recherche.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// ignore: must_be_immutable
class SingleDatePicker extends StatelessWidget {
  Function(DateTime?)? dateChanged;
  SingleDatePicker({super.key, required this.dateChanged});

  @override
  Widget build(BuildContext context) {
    final reservation = Provider.of<AnimationRecherche>(
      context,
      listen: false,
    ).reservation!;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: ShadDatePicker(
        selectableDayPredicate: (day) {
          final tomorrow = DateTime.now().add(const Duration(days: 1));
          return !day.isBefore(tomorrow);
        },
        selected: reservation.date!.isSameDay(DateTime.now())
            ? null
            : reservation.date,
        closeOnTapOutside: true,
        closeOnSelection: true,
        allowDeselection: false,
        placeholder: Text("entrez la date"),
        onChanged: dateChanged,
      ),
    );
  }
}
