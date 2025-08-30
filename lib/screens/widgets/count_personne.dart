import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// ignore: must_be_immutable
class CountPersonne extends StatefulWidget {
  VoidCallback onAjoute;
  VoidCallback onDiminuer;
  int value;
  String personne;
  String description;
  CountPersonne({
    super.key,
    required this.value,
    required this.personne,
    required this.onAjoute,
    required this.onDiminuer,
    required this.description,
  });

  @override
  State<CountPersonne> createState() => _CountPersonneState();
}

class _CountPersonneState extends State<CountPersonne> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsetsGeometry.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.personne, style: textTheme.bodyLarge),
              Text(widget.description, style: textTheme.titleSmall),
            ],
          ),
          Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button(
                IconButton(
                  onPressed: widget.onDiminuer,
                  //  () {
                  //   setState(() {
                  //     count > 0 ? count-- : ();
                  //   });
                  // }
                  icon: Icon(LucideIcons.minus),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 4),
                child: Material(
                  shape: CircleBorder(),
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(8),
                    child: Text("${widget.value}", style: textTheme.titleLarge),
                  ),
                ),
              ),
              button(
                IconButton(icon: Icon(Icons.add), onPressed: widget.onAjoute),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget button(IconButton icon) {
    return Material(shape: CircleBorder(), elevation: 3, child: icon);
  }
}
