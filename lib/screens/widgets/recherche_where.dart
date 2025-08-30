import 'dart:math';

import 'package:airbnb/provider/animation_recherche.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// ignore: must_be_immutable
class RechercheWhere extends StatefulWidget {
  const RechercheWhere({super.key});

  @override
  State<RechercheWhere> createState() => _RechercheWhereState();
}

class _RechercheWhereState extends State<RechercheWhere> {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  bool whereFocused = false;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        whereFocused = focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer<AnimationRecherche>(
      builder: (context, isFocus, child) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: MediaQuery.of(context).size.width,
          height: whereFocused
              ? MediaQuery.of(context).size.height / 1.4
              : (isFocus.focus[0]
                    ? MediaQuery.of(context).size.height / 2.8
                    : 65),
          child: isFocus.focus[0]
              ? Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Où ?",
                          style: isFocus.focus[0]
                              ? textTheme.titleLarge
                              : textTheme.titleMedium,
                        ),
                        // SizedBox(height: 8),
                        ShadInput(
                          focusNode: focusNode,
                          controller: controller,
                          trailing: IconButton(
                            onPressed: () {
                              controller.clear();
                            },
                            icon: Material(
                              elevation: 1,
                              shape: CircleBorder(),
                              child: IconButton(
                                icon: Icon(LucideIcons.x),
                                onPressed: () {
                                  controller.clear();
                                },
                              ),
                            ),
                          ),
                          leading: Material(
                            elevation: 1,
                            shape: CircleBorder(),
                            child: IconButton(
                              icon: Icon(
                                whereFocused
                                    ? Icons.arrow_back_ios
                                    : Icons.search,
                              ),

                              onPressed: () {
                                whereFocused ? focusNode.unfocus() : ();
                              },
                            ),
                          ),
                          placeholder: Text("Entrez votre destination"),
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.all(8),
                          child: Text(
                            "Suggestions de destination",
                            style: textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: whereFocused
                              ? max(
                                  0,
                                  (MediaQuery.of(context).size.height / 1.5) -
                                      170,
                                )
                              : max(
                                  0,
                                  (MediaQuery.of(context).size.height / 3) -
                                      170,
                                ),
                          child: ListView(
                            physics: whereFocused
                                ? ScrollPhysics()
                                : NeverScrollableScrollPhysics(),
                            children: [
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                                onTap: () {
                                  focusNode.unfocus();
                                  controller.text = "A proximité";
                                  isFocus.activeSecond();
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.mouse),
                                title: Text("A proximite"),
                                subtitle: Text(
                                  "Découvrez les options à proximité",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isFocus.activeFirst();
                      });
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Où ?", style: textTheme.titleMedium),
                            Text(
                              controller.text.isEmpty
                                  ? "Ajouter une lieux"
                                  : controller.text,
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
