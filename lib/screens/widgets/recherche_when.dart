import 'package:airbnb/provider/animation_recherche.dart';
import 'package:airbnb/screens/widgets/date_range.dart';
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
  ShadDateTimeRange? range;
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
                        RangeDatePicker(
                          onRangeChanged: (value) {
                            setState(() {
                              range = value;
                            });
                            print("voici la contenu de range $range");
                          },
                        ),
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
                              range == null
                                  ? "Ajouter des dates"
                                  : "${range!.start!.day.toString()}/${range!.end!.month.toString()}-${range!.end!.day.toString()}/${range!.end!.month.toString()}",
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
