import 'package:airbnb/provider/animation_recherche.dart';
import 'package:airbnb/screens/widgets/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// ignore: must_be_immutable
class RechercheWhen extends StatefulWidget {
  const RechercheWhen({super.key});

  @override
  State<RechercheWhen> createState() => _RechercheWhenState();
}

class _RechercheWhenState extends State<RechercheWhen> {
  // ShadDateTimeRange? range;
  // = ShadDateTimeRange(
  //   start: DateTime.now(),
  //   end: DateTime.now(),
  // );
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer<AnimationRecherche>(
      builder: (context, isFocus, child) {
        return AnimatedContainer(
          duration: Duration(seconds: 1),
          width: double.infinity,
          height: isFocus.focus[1] ? 115 : 65,

          child: isFocus.focus[1]
              ? Card(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dates ?",
                          style: isFocus.focus[1]
                              ? textTheme.titleLarge
                              : textTheme.titleMedium,
                        ),
                        SingleDatePicker(
                          dateChanged: (value) {
                            isFocus.reservation!.setDateRange(value);
                          },
                        ),
                        // RangeDatePicker(
                        //   onRangeChanged: (value) {
                        //     // setState(() {
                        //     //   range = value;
                        //     // });
                        //     isFocus.reservation!.setDateRange(value);
                        //     print(
                        //       "voici la contenu de range ${isFocus.reservation!.date}",
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                  ),
                )
              : Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      isFocus.activeSecond();
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(16),
                        child: Row(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dates ?", style: textTheme.titleMedium),
                            Text(
                              isFocus.reservation!.date!.isSameDay(
                                    DateTime.now(),
                                  )
                                  ? "Ajouter des dates"
                                  : "${isFocus.reservation!.date!.day.toString()}/${isFocus.reservation!.date!.month.toString()}/${isFocus.reservation!.date!.year.toString()}",
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
