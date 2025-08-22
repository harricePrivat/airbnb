import 'package:airbnb/screens/widgets/propositions_details.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Vacances . Paris")),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              PropositionsDetails(),
              PropositionsDetails(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
